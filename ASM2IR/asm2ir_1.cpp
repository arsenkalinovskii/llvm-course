#include "../App/sim.h"

#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/ExecutionEngine/GenericValue.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <iostream>
#include <unordered_map>

using namespace llvm;

using float64_t = double;

const int IREG_FILE_SIZE = 16;
uint64_t IREG_FILE[IREG_FILE_SIZE];
const int FREG_FILE_SIZE = 16;
float64_t FREG_FILE[FREG_FILE_SIZE];
std::vector<float64_t> stack;

void do_FSIN(int x1, int x2)
{
    FREG_FILE[x1] = simCalcSinus(FREG_FILE[x2]);
}

void do_PUTPIXEL(int x1, int x2, int x3)
{
    uint64_t argb = IREG_FILE[x1];
    uint64_t x = IREG_FILE[x2];
    uint64_t y = IREG_FILE[x3];
    simPutPixel(x, y, argb);
}

void do_FLUSH() { simFlush(); }

void do_HAS_CLICK(int xx)
{
    IREG_FILE[xx] = simHasClick();
}

void do_GET_CLICK(int x1, int x2)
{
    int xy = simGetClick();
    int x = (xy >> 16);
    int y = (xy & 0xFFFF);
    IREG_FILE[x1] = x;
    IREG_FILE[x2] = y;
}

void do_HAS_SCROLL(int xx)
{
    IREG_FILE[xx] = simHasScroll();
}

void do_GET_SCROLL(int xx)
{
    IREG_FILE[xx] = simGetScroll();
}

void do_RCELL(int x1, int x2, int x3)
{
    uint64_t x = IREG_FILE[x2];
    uint64_t y = IREG_FILE[x3];
    uint64_t addr = IREG_FILE[x1];
    FREG_FILE[0] = stack[addr + SIM_Y_SIZE * x + y];
}

void do_WCELL(int x1, int x2, int x3)
{
    uint64_t x = IREG_FILE[x2];
    uint64_t y = IREG_FILE[x3];
    uint64_t addr = IREG_FILE[x1];
    stack[addr + SIM_Y_SIZE * x + y] = FREG_FILE[0];
}

void do_FSAT(int x1)
{
#define LIMIT (10.0)
    float64_t u = FREG_FILE[x1];
    if (u > LIMIT)
        u = LIMIT;
    else if (u < -LIMIT)
        u = -LIMIT;
    FREG_FILE[x1] = u;
}

void do_FMUL(int x1, int x2, int x3)
{
    float64_t fx2 = FREG_FILE[x2];
    float64_t fx3 = FREG_FILE[x3];
    FREG_FILE[x1] = fx2 * fx3;
}

void do_FDIV(int x1, int x2, int x3)
{
    float64_t fx2 = FREG_FILE[x2];
    float64_t fx3 = FREG_FILE[x3];
    FREG_FILE[x1] = fx2 / fx3;
}

void do_FADD(int x1, int x2, int x3)
{
    float64_t fx2 = FREG_FILE[x2];
    float64_t fx3 = FREG_FILE[x3];
    FREG_FILE[x1] = fx2 + fx3;
}

void do_FSUB(int x1, int x2, int x3)
{
    float64_t fx2 = FREG_FILE[x2];
    float64_t fx3 = FREG_FILE[x3];
    FREG_FILE[x1] = fx2 - fx3;
}

void do_FTONE(int xx, int yy)
{
    float64_t u = FREG_FILE[yy];
    float64_t alpha = (u + LIMIT) / (2 * LIMIT);
    int tone = (int)(alpha * 255) & 0xFF;
    int argb = tone | (tone << 8) | (tone << 16) | (0xFF << 24);
    IREG_FILE[xx] = argb;
}

void do_FMOV(int xx, float64_t fimm64)
{
    FREG_FILE[xx] = fimm64;
}

void do_IMUL(int x1, int x2, int x3)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = IREG_FILE[x3];
    IREG_FILE[x1] = fx2 * fx3;
}

void do_IDIV(int x1, int x2, int x3)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = IREG_FILE[x3];
    if (fx3 == 0)
        throw std::runtime_error("IDIV: division by zero");
    IREG_FILE[x1] = fx2 / fx3;
}

void do_IADD(int x1, int x2, int x3)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = IREG_FILE[x3];
    IREG_FILE[x1] = fx2 + fx3;
}

void do_ISUB(int x1, int x2, int x3)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = IREG_FILE[x3];
    IREG_FILE[x1] = fx2 - fx3;
}

void do_IMULI(int x1, int x2, uint64_t imm64)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = imm64;
    IREG_FILE[x1] = fx2 * fx3;
}

void do_IDIVI(int x1, int x2, uint64_t imm64)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = imm64;
    if (fx3 == 0)
        throw std::runtime_error("IDIVI: division by zero");
    IREG_FILE[x1] = fx2 / fx3;
}

void do_IADDI(int x1, int x2, uint64_t imm64)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = imm64;
    IREG_FILE[x1] = fx2 + fx3;
}

void do_ISUBI(int x1, int x2, uint64_t imm64)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = imm64;
    IREG_FILE[x1] = fx2 - fx3;
}

void do_IMOVI(int xx, uint64_t imm64)
{
    IREG_FILE[xx] = imm64;
}

void do_IXCHG(int x1, int x2)
{
    std::swap(IREG_FILE[x1], IREG_FILE[x2]);
}

void do_IGEQ(int x1, int x2, int x3)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = IREG_FILE[x3];
    IREG_FILE[x1] = (fx2 >= fx3);
}

void do_ILE(int x1, int x2, int x3)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = IREG_FILE[x3];
    IREG_FILE[x1] = (fx2 < fx3);
}

void do_IGEQI(int x1, int x2, uint64_t imm64)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = imm64;
    IREG_FILE[x1] = (fx2 >= fx3);
}

void do_ILEI(int x1, int x2, uint64_t imm64)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = imm64;
    IREG_FILE[x1] = (fx2 < fx3);
}

void do_IAND(int x1, int x2, int x3)
{
    uint64_t fx2 = IREG_FILE[x2];
    uint64_t fx3 = IREG_FILE[x3];
    IREG_FILE[x1] = (fx2 && fx3);
}

void do_INT2FLOAT(int yy, int xx)
{
    FREG_FILE[yy] = IREG_FILE[xx];
}

void do_FLOAT2INT(int xx, int yy)
{
    IREG_FILE[xx] = FREG_FILE[yy];
}

void do_MOV(int xx)
{
    IREG_FILE[xx] = stack.size();
}

void do_IMOVSP(int x1, int x2)
{
    uint64_t addr = stack.size() - 1 - IREG_FILE[x1];
    stack[addr] = IREG_FILE[x2];
}

void do_IMOVSPI(uint64_t imm64, int xx)
{
    uint64_t addr = stack.size() - 1 - imm64;
    stack[addr] = IREG_FILE[xx];
}

void do_GROW(uint64_t imm64)
{
    stack.resize(stack.size() + imm64);
}

void do_SHRINK(uint64_t imm64)
{
    if (imm64 > stack.size())
        throw std::runtime_error("not enough memory in stack");
    stack.resize(stack.size() - imm64);
}

void do_INNER_GRID(int x1, int x2)
{
#define COURANT_NUMBER_SQR (1.0 / 10.0)
    uint64_t grid1 = IREG_FILE[1], grid2 = IREG_FILE[2];
    uint64_t x = IREG_FILE[x1], y = IREG_FILE[x2];
    float64_t g1xy = stack[grid1 + SIM_Y_SIZE * x + y];
    float64_t g2xy = stack[grid2 + SIM_Y_SIZE * x + y];
    float64_t g1xp1y = stack[grid1 + SIM_Y_SIZE * (x + 1) + y];
    float64_t g1xm1y = stack[grid1 + SIM_Y_SIZE * (x - 1) + y];
    float64_t g1xyp1 = stack[grid1 + SIM_Y_SIZE * x + y + 1];
    float64_t g1xym1 = stack[grid1 + SIM_Y_SIZE * x + y - 1];
    uint64_t result_grid = grid2;
    float64_t time_term = 2 * g1xy - g2xy;
    float64_t space_term = g1xp1y + g1xm1y + g1xyp1 + g1xym1 - 4 * g1xy;
    stack[result_grid + SIM_Y_SIZE * x + y] = time_term + COURANT_NUMBER_SQR * space_term;
}

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        outs() << "[ERROR] Need 1 argument: file with assembler code\n";
        return 1;
    }
    std::ifstream input;
    input.open(argv[1]);
    if (!input.is_open())
    {
        outs() << "[ERROR] Can't open " << argv[1] << '\n';
        return 1;
    }

    LLVMContext context;
    // ; ModuleID = 'top'
    // source_filename = "top"
    Module *module = new Module("top", context);
    IRBuilder<> builder(context);

    //[16 x i32] IRegFile = {0, 0, 0, 0}
    ArrayType *IRegFileType = ArrayType::get(builder.getInt64Ty(), IREG_FILE_SIZE);
    module->getOrInsertGlobal("IRegFile", IRegFileType);
    GlobalVariable *IRegFile = module->getNamedGlobal("IRegFile");

    ArrayType *FRegFileType = ArrayType::get(builder.getDoubleTy(), FREG_FILE_SIZE);
    module->getOrInsertGlobal("FRegFile", FRegFileType);
    GlobalVariable *FRegFile = module->getNamedGlobal("FRegFile");

    // declare void @main()
    FunctionType *funcType = FunctionType::get(builder.getVoidTy(), false);
    Function *mainFunc =
        Function::Create(funcType, Function::ExternalLinkage, "main", module);

    std::string name;
    std::string arg;
    std::unordered_map<std::string, BasicBlock *> BBMap;

    outs() << "\n#[FILE]:\nBBs:";

    while (input >> name)
    {
        if (!name.empty() && name.back() == ':')
        {
            name = name.substr(0, name.size() - 1);
            outs() << " " << name;
            BBMap[name] = BasicBlock::Create(context, name, mainFunc);
        }
    }
    outs() << '\n';
    input.close();
    input.open(argv[1]);

    // Functions types
    // Argument types
    Type *int32Type = Type::getInt32Ty(context);
    Type *int64Type = Type::getInt64Ty(context);
    Type *doubleType = Type::getDoubleTy(context);

    SmallVector<Type *, 1> int32x1Types = {int32Type};

    SmallVector<Type *, 2> int32x2Types = {int32Type, int32Type};

    SmallVector<Type *, 3> int32x3Types = {
        int32Type, int32Type, int32Type};

    SmallVector<Type *, 3> int32x2int64Types = {
        int32Type, int32Type, int64Type};

    SmallVector<Type *, 2> int32int64Types = {
        int32Type, int64Type};

    SmallVector<Type *, 1> int64x1Types = {int64Type};

    SmallVector<Type *, 2> int64int32Types = {
        int64Type, int32Type};

    SmallVector<Type *, 2> int32doubleTypes = {
        int32Type, doubleType};

    // Function types
    Type *voidType = Type::getVoidTy(context);

    FunctionType *voidFuncType =
        FunctionType::get(voidType, false);

    FunctionType *int32x1FuncType =
        FunctionType::get(voidType, int32x1Types, false);

    FunctionType *int32x2FuncType =
        FunctionType::get(voidType, int32x2Types, false);

    FunctionType *int32x3FuncType =
        FunctionType::get(voidType, int32x3Types, false);

    FunctionType *int32x2int64FuncType =
        FunctionType::get(voidType, int32x2int64Types, false);

    FunctionType *int32int64FuncType =
        FunctionType::get(voidType, int32int64Types, false);

    FunctionType *int64x1FuncType =
        FunctionType::get(voidType, int64x1Types, false);

    FunctionType *int64int32FuncType =
        FunctionType::get(voidType, int64int32Types, false);

    FunctionType *int32doubleFuncType =
        FunctionType::get(voidType, int32doubleTypes, false);

    // Functions
    FunctionCallee do_FSIN_func =
        module->getOrInsertFunction("do_FSIN", int32x2FuncType);

    FunctionCallee do_PUTPIXEL_func =
        module->getOrInsertFunction("do_PUTPIXEL", int32x3FuncType);

    FunctionCallee do_FLUSH_func =
        module->getOrInsertFunction("do_FLUSH", voidFuncType);

    FunctionCallee do_HAS_CLICK_func =
        module->getOrInsertFunction("do_HAS_CLICK", int32x1FuncType);

    FunctionCallee do_GET_CLICK_func =
        module->getOrInsertFunction("do_GET_CLICK", int32x2FuncType);

    FunctionCallee do_HAS_SCROLL_func =
        module->getOrInsertFunction("do_HAS_SCROLL", int32x1FuncType);

    FunctionCallee do_GET_SCROLL_func =
        module->getOrInsertFunction("do_GET_SCROLL", int32x1FuncType);

    FunctionCallee do_RCELL_func =
        module->getOrInsertFunction("do_RCELL", int32x3FuncType);

    FunctionCallee do_WCELL_func =
        module->getOrInsertFunction("do_WCELL", int32x3FuncType);

    FunctionCallee do_FSAT_func =
        module->getOrInsertFunction("do_FSAT", int32x1FuncType);

    FunctionCallee do_FMUL_func =
        module->getOrInsertFunction("do_FMUL", int32x3FuncType);

    FunctionCallee do_FDIV_func =
        module->getOrInsertFunction("do_FDIV", int32x3FuncType);

    FunctionCallee do_FADD_func =
        module->getOrInsertFunction("do_FADD", int32x3FuncType);

    FunctionCallee do_FSUB_func =
        module->getOrInsertFunction("do_FSUB", int32x3FuncType);

    FunctionCallee do_FTONE_func =
        module->getOrInsertFunction("do_FTONE", int32x2FuncType);

    FunctionCallee do_FMOV_func =
        module->getOrInsertFunction("do_FMOV", int32doubleFuncType);

    FunctionCallee do_IMUL_func =
        module->getOrInsertFunction("do_IMUL", int32x3FuncType);

    FunctionCallee do_IDIV_func =
        module->getOrInsertFunction("do_IDIV", int32x3FuncType);

    FunctionCallee do_IADD_func =
        module->getOrInsertFunction("do_IADD", int32x3FuncType);

    FunctionCallee do_ISUB_func =
        module->getOrInsertFunction("do_ISUB", int32x3FuncType);

    FunctionCallee do_IMULI_func =
        module->getOrInsertFunction("do_IMULI", int32x2int64FuncType);

    FunctionCallee do_IDIVI_func =
        module->getOrInsertFunction("do_IDIVI", int32x2int64FuncType);

    FunctionCallee do_IADDI_func =
        module->getOrInsertFunction("do_IADDI", int32x2int64FuncType);

    FunctionCallee do_ISUBI_func =
        module->getOrInsertFunction("do_ISUBI", int32x2int64FuncType);

    FunctionCallee do_IMOVI_func =
        module->getOrInsertFunction("do_IMOVI", int32int64FuncType);

    FunctionCallee do_IXCHG_func =
        module->getOrInsertFunction("do_IXCHG", int32x2FuncType);

    FunctionCallee do_IGEQ_func =
        module->getOrInsertFunction("do_IGEQ", int32x3FuncType);

    FunctionCallee do_ILE_func =
        module->getOrInsertFunction("do_ILE", int32x3FuncType);

    FunctionCallee do_IGEQI_func =
        module->getOrInsertFunction("do_IGEQI", int32x2int64FuncType);

    FunctionCallee do_ILEI_func =
        module->getOrInsertFunction("do_ILEI", int32x2int64FuncType);

    FunctionCallee do_IAND_func =
        module->getOrInsertFunction("do_IAND", int32x3FuncType);

    FunctionCallee do_INT2FLOAT_func =
        module->getOrInsertFunction("do_INT2FLOAT", int32x2FuncType);

    FunctionCallee do_FLOAT2INT_func =
        module->getOrInsertFunction("do_FLOAT2INT", int32x2FuncType);

    FunctionCallee do_MOV_func =
        module->getOrInsertFunction("do_MOV", int32x1FuncType);

    FunctionCallee do_IMOVSP_func =
        module->getOrInsertFunction("do_IMOVSP", int32x2FuncType);

    FunctionCallee do_IMOVSPI_func =
        module->getOrInsertFunction("do_IMOVSPI", int64int32FuncType);

    FunctionCallee do_GROW_func =
        module->getOrInsertFunction("do_GROW", int64x1FuncType);

    FunctionCallee do_SHRINK_func =
        module->getOrInsertFunction("do_SHRINK", int64x1FuncType);

    FunctionCallee do_INNER_GRID_func =
        module->getOrInsertFunction("do_INNER_GRID", int32x2FuncType);

    auto getReg = [&](const std::string &s) -> Value *
    {
        return builder.getInt32(std::stoi(s.substr(1)));
    };

    auto getImm = [&](const std::string &s) -> Value *
    {
        return builder.getInt64(std::stoull(s));
    };

    while (input >> name)
    {
        if (!name.compare("EXIT"))
        {
            outs() << "\tEXIT\n";
            builder.CreateRetVoid();
            if (input >> name)
            {
                name = name.substr(0, name.size() - 1);
                outs() << "BB " << name << '\n';
                builder.SetInsertPoint(BBMap[name]);
            }
            continue;
        }

        if (!name.compare("FSIN"))
        {
            input >> arg;
            outs() << "\t" << arg;
            // res
            Value *arg1 = getReg(arg);
            input >> arg;
            outs() << " = sin(" << arg << ")\n";
            // arg1
            Value *arg2 = getReg(arg);
            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_FSIN_func, args);
            continue;
        }

        if (!name.compare("PUTPIXEL"))
        {
            input >> arg;
            outs() << "\tPUTPIXEL " << arg;
            Value *arg1 = builder.getInt32(std::stoi(arg.substr(1)));
            input >> arg;
            outs() << " " << arg;
            Value *arg2 = builder.getInt32(std::stoi(arg.substr(1)));
            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg3 = builder.getInt32(std::stoi(arg.substr(1)));
            Value *args[] = {arg1, arg2, arg3};
            builder.CreateCall(do_PUTPIXEL_func, args);
            continue;
        }

        if (!name.compare("FLUSH"))
        {
            outs() << "\tFLUSH\n";
            builder.CreateCall(do_FLUSH_func);
            continue;
        }

        if (!name.compare("HAS_CLICK"))
        {
            input >> arg;
            outs() << "\tHAS_CLICK " << arg << '\n';

            Value *arg1 = getReg(arg);
            Value *args[] = {arg1};

            builder.CreateCall(do_HAS_CLICK_func, args);
            continue;
        }

        if (!name.compare("GET_CLICK"))
        {
            input >> arg;
            outs() << "\tGET_CLICK " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getReg(arg);

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_GET_CLICK_func, args);
            continue;
        }

        if (!name.compare("HAS_SCROLL"))
        {
            input >> arg;
            outs() << "\tHAS_SCROLL " << arg << '\n';

            Value *arg1 = getReg(arg);
            Value *args[] = {arg1};

            builder.CreateCall(do_HAS_SCROLL_func, args);
            continue;
        }

        if (!name.compare("GET_SCROLL"))
        {
            input >> arg;
            outs() << "\tGET_SCROLL " << arg << '\n';

            Value *arg1 = getReg(arg);
            Value *args[] = {arg1};

            builder.CreateCall(do_GET_SCROLL_func, args);
            continue;
        }

        if (!name.compare("RCELL"))
        {
            input >> arg;
            outs() << "\tRCELL " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *arg2 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg3 = getReg(arg);

            Value *args[] = {arg1, arg2, arg3};
            builder.CreateCall(do_RCELL_func, args);
            continue;
        }

        if (!name.compare("WCELL"))
        {
            input >> arg;
            outs() << "\tWCELL " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *arg2 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg3 = getReg(arg);

            Value *args[] = {arg1, arg2, arg3};
            builder.CreateCall(do_WCELL_func, args);
            continue;
        }

        if (!name.compare("FSAT"))
        {
            input >> arg;
            outs() << "\tFSAT " << arg << '\n';

            Value *arg1 = getReg(arg);
            Value *args[] = {arg1};

            builder.CreateCall(do_FSAT_func, args);
            continue;
        }

        if (!name.compare("FMUL") || !name.compare("FDIV") ||
            !name.compare("FADD") || !name.compare("FSUB"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *arg2 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg3 = getReg(arg);

            Value *args[] = {arg1, arg2, arg3};

            if (!name.compare("FMUL"))
                builder.CreateCall(do_FMUL_func, args);
            else if (!name.compare("FDIV"))
                builder.CreateCall(do_FDIV_func, args);
            else if (!name.compare("FADD"))
                builder.CreateCall(do_FADD_func, args);
            else
                builder.CreateCall(do_FSUB_func, args);

            continue;
        }

        if (!name.compare("FTONE"))
        {
            input >> arg;
            outs() << "\tFTONE " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getReg(arg);

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_FTONE_func, args);
            continue;
        }

        if (!name.compare("FMOV"))
        {
            input >> arg;
            outs() << "\tFMOV " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = ConstantFP::get(
                Type::getDoubleTy(context), std::stod(arg));

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_FMOV_func, args);
            continue;
        }

        if (!name.compare("IMUL") || !name.compare("IDIV") ||
            !name.compare("IADD") || !name.compare("ISUB"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *arg2 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg3 = getReg(arg);

            Value *args[] = {arg1, arg2, arg3};

            if (!name.compare("IMUL"))
                builder.CreateCall(do_IMUL_func, args);
            else if (!name.compare("IDIV"))
                builder.CreateCall(do_IDIV_func, args);
            else if (!name.compare("IADD"))
                builder.CreateCall(do_IADD_func, args);
            else
                builder.CreateCall(do_ISUB_func, args);

            continue;
        }

        if (!name.compare("IMULI") || !name.compare("IDIVI") ||
            !name.compare("IADDI") || !name.compare("ISUBI"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *arg2 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg3 = getImm(arg);

            Value *args[] = {arg1, arg2, arg3};

            if (!name.compare("IMULI"))
                builder.CreateCall(do_IMULI_func, args);
            else if (!name.compare("IDIVI"))
                builder.CreateCall(do_IDIVI_func, args);
            else if (!name.compare("IADDI"))
                builder.CreateCall(do_IADDI_func, args);
            else
                builder.CreateCall(do_ISUBI_func, args);

            continue;
        }

        if (!name.compare("IMOVI"))
        {
            input >> arg;
            outs() << "\tIMOVI " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getImm(arg);

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_IMOVI_func, args);
            continue;
        }

        if (!name.compare("IXCHG"))
        {
            input >> arg;
            outs() << "\tIXCHG " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getReg(arg);

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_IXCHG_func, args);
            continue;
        }

        if (!name.compare("IGEQ") || !name.compare("ILE") ||
            !name.compare("IAND"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *arg2 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg3 = getReg(arg);

            Value *args[] = {arg1, arg2, arg3};

            if (!name.compare("IGEQ"))
                builder.CreateCall(do_IGEQ_func, args);
            else if (!name.compare("ILE"))
                builder.CreateCall(do_ILE_func, args);
            else
                builder.CreateCall(do_IAND_func, args);

            continue;
        }

        if (!name.compare("IGEQI") || !name.compare("ILEI"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *arg2 = getReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *arg3 = getImm(arg);

            Value *args[] = {arg1, arg2, arg3};

            if (!name.compare("IGEQI"))
                builder.CreateCall(do_IGEQI_func, args);
            else
                builder.CreateCall(do_ILEI_func, args);

            continue;
        }

        if (!name.compare("INT2FLOAT"))
        {
            input >> arg;
            outs() << "\tINT2FLOAT " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getReg(arg);

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_INT2FLOAT_func, args);
            continue;
        }

        if (!name.compare("FLOAT2INT"))
        {
            input >> arg;
            outs() << "\tFLOAT2INT " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getReg(arg);

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_FLOAT2INT_func, args);
            continue;
        }

        if (!name.compare("MOV"))
        {
            input >> arg;
            outs() << "\tMOV " << arg << " SP\n";
            Value *arg1 = getReg(arg);
            Value *args[] = {arg1};
            input >> arg;
            builder.CreateCall(do_MOV_func, args);
            continue;
        }

        if (!name.compare("IMOVSP"))
        {
            input >> arg;
            outs() << "\tIMOVSP " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getReg(arg);

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_IMOVSP_func, args);
            continue;
        }

        if (!name.compare("IMOVSPI"))
        {
            input >> arg;
            outs() << "\tIMOVSPI " << arg;
            Value *arg1 = getImm(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getReg(arg);

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_IMOVSPI_func, args);
            continue;
        }

        if (!name.compare("GROW") || !name.compare("SHRINK"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg << '\n';

            Value *arg1 = getImm(arg);
            Value *args[] = {arg1};

            if (!name.compare("GROW"))
                builder.CreateCall(do_GROW_func, args);
            else
                builder.CreateCall(do_SHRINK_func, args);

            continue;
        }

        if (!name.compare("INNER_GRID"))
        {
            input >> arg;
            outs() << "\tINNER_GRID " << arg;
            Value *arg1 = getReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getReg(arg);

            Value *args[] = {arg1, arg2};
            builder.CreateCall(do_INNER_GRID_func, args);
            continue;
        }

        if (!name.compare("B") || !name.compare("LOOP"))
        {
            input >> arg;
            outs() << '\t' << name << " " << arg;
            builder.CreateBr(BBMap[arg]);
            builder.ClearInsertionPoint();
            continue;
        }

        if (!name.compare("IBNONZERO"))
        {
            input >> name;
            input >> arg;
            outs() << "\tif (" << arg << " =/= 0) then " << name;
            Value *reg_p = builder.CreateConstGEP2_32(IRegFileType, IRegFile, 0,
                                                      std::stoi(arg.substr(1)));
            Value *reg_value = builder.CreateLoad(
                builder.getInt64Ty(), reg_p);

            Value *reg_i1 = builder.CreateICmpNE(
                reg_value,
                builder.getInt64(0));
            arg = name;
            input >> name;
            name = name.substr(0, name.size() - 1);
            outs() << " else " + name << '\n';
            builder.CreateCondBr(reg_i1, BBMap[arg], BBMap[name]);
            builder.SetInsertPoint(BBMap[name]);
            continue;
        }

        if (!name.compare("FBGE"))
        {
            input >> name;
            input >> arg;
            outs() << "\tif (" << arg << " > ";
            Value *reg_p1 = builder.CreateConstGEP2_32(FRegFileType, FRegFile, 0,
                                                       std::stoi(arg.substr(1)));
            Value *reg_f1 = builder.CreateLoad(builder.getDoubleTy(), reg_p1);
            input >> arg;
            outs() << arg << ") then " << name;
            Value *reg_p2 = builder.CreateConstGEP2_32(FRegFileType, FRegFile, 0,
                                                       std::stoi(arg.substr(1)));
            Value *reg_f2 = builder.CreateLoad(builder.getDoubleTy(), reg_p2);
            Value *cmp = builder.CreateFCmp(CmpInst::Predicate::FCMP_OGT, reg_f1, reg_f2);
            arg = name;
            input >> name;
            name = name.substr(0, name.size() - 1);
            outs() << " else " + name << '\n';
            builder.CreateCondBr(cmp, BBMap[arg], BBMap[name]);
            builder.SetInsertPoint(BBMap[name]);
            continue;
        }

        if (!name.compare("FBLE"))
        {
            input >> name;
            input >> arg;
            outs() << "\tif (" << arg << " < ";
            Value *reg_p1 = builder.CreateConstGEP2_32(FRegFileType, FRegFile, 0,
                                                       std::stoi(arg.substr(1)));
            Value *reg_f1 = builder.CreateLoad(builder.getDoubleTy(), reg_p1);
            input >> arg;
            outs() << arg << ") then " << name;
            Value *reg_p2 = builder.CreateConstGEP2_32(FRegFileType, FRegFile, 0,
                                                       std::stoi(arg.substr(1)));
            Value *reg_f2 = builder.CreateLoad(builder.getDoubleTy(), reg_p2);
            Value *cmp = builder.CreateFCmp(CmpInst::Predicate::FCMP_OLT, reg_f1, reg_f2);
            arg = name;
            input >> name;
            name = name.substr(0, name.size() - 1);
            outs() << " else " + name << '\n';
            builder.CreateCondBr(cmp, BBMap[arg], BBMap[name]);
            builder.SetInsertPoint(BBMap[name]);
            continue;
        }

        name = name.substr(0, name.size() - 1);
        if (builder.GetInsertBlock())
        {
            builder.CreateBr(BBMap[name]);
            outs() << "\tbranch to " << name << '\n';
        }
        outs() << name << "\n";
        builder.SetInsertPoint(BBMap[name]);
    }

    outs() << "\n#[LLVM IR]:\n";
    module->print(outs(), nullptr);
    outs() << '\n';
    bool verif = verifyFunction(*mainFunc, &outs());
    outs() << "[VERIFICATION] " << (verif ? "FAIL\n\n" : "OK\n\n");

    outs() << "\n#[Running code]\n";
    InitializeNativeTarget();
    InitializeNativeTargetAsmPrinter();

    ExecutionEngine *ee = EngineBuilder(std::unique_ptr<Module>(module)).create();
    ee->InstallLazyFunctionCreator([](const std::string &fnName) -> void *
                                   {
    if (fnName == "do_FSIN" ) {
      return reinterpret_cast<void *>(do_FSIN);
    }
    if (fnName == "do_PUTPIXEL") {
      return reinterpret_cast<void *>(do_PUTPIXEL);
    }
    if (fnName == "do_FLUSH") {
    return reinterpret_cast<void *>(do_FLUSH);
    }
    if (fnName == "do_HAS_CLICK") {
        return reinterpret_cast<void *>(do_HAS_CLICK);
    }
    if (fnName == "do_GET_CLICK") {
        return reinterpret_cast<void *>(do_GET_CLICK);
    }
    if (fnName == "do_HAS_SCROLL") {
        return reinterpret_cast<void *>(do_HAS_SCROLL);
    }
    if (fnName == "do_GET_SCROLL") {
        return reinterpret_cast<void *>(do_GET_SCROLL);
    }
    if (fnName == "do_RCELL") {
        return reinterpret_cast<void *>(do_RCELL);
    }
    if (fnName == "do_WCELL") {
        return reinterpret_cast<void *>(do_WCELL);
    }
    if (fnName == "do_FSAT") {
        return reinterpret_cast<void *>(do_FSAT);
    }
    if (fnName == "do_FMUL") {
        return reinterpret_cast<void *>(do_FMUL);
    }
    if (fnName == "do_FDIV") {
        return reinterpret_cast<void *>(do_FDIV);
    }
    if (fnName == "do_FADD") {
        return reinterpret_cast<void *>(do_FADD);
    }
    if (fnName == "do_FSUB") {
        return reinterpret_cast<void *>(do_FSUB);
    }
    if (fnName == "do_FTONE") {
        return reinterpret_cast<void *>(do_FTONE);
    }
    if (fnName == "do_FMOV") {
        return reinterpret_cast<void *>(do_FMOV);
    }
    if (fnName == "do_IMUL") {
        return reinterpret_cast<void *>(do_IMUL);
    }
    if (fnName == "do_IDIV") {
        return reinterpret_cast<void *>(do_IDIV);
    }
    if (fnName == "do_IADD") {
        return reinterpret_cast<void *>(do_IADD);
    }
    if (fnName == "do_ISUB") {
        return reinterpret_cast<void *>(do_ISUB);
    }
    if (fnName == "do_IMULI") {
        return reinterpret_cast<void *>(do_IMULI);
    }
    if (fnName == "do_IDIVI") {
        return reinterpret_cast<void *>(do_IDIVI);
    }
    if (fnName == "do_IADDI") {
        return reinterpret_cast<void *>(do_IADDI);
    }
    if (fnName == "do_ISUBI") {
        return reinterpret_cast<void *>(do_ISUBI);
    }
    if (fnName == "do_IMOVI") {
        return reinterpret_cast<void *>(do_IMOVI);
    }
    if (fnName == "do_IXCHG") {
        return reinterpret_cast<void *>(do_IXCHG);
    }
    if (fnName == "do_IGEQ") {
        return reinterpret_cast<void *>(do_IGEQ);
    }
    if (fnName == "do_ILE") {
        return reinterpret_cast<void *>(do_ILE);
    }
    if (fnName == "do_IGEQI") {
        return reinterpret_cast<void *>(do_IGEQI);
    }
    if (fnName == "do_ILEI") {
        return reinterpret_cast<void *>(do_ILEI);
    }
    if (fnName == "do_IAND") {
        return reinterpret_cast<void *>(do_IAND);
    }
    if (fnName == "do_INT2FLOAT") {
        return reinterpret_cast<void *>(do_INT2FLOAT);
    }
    if (fnName == "do_FLOAT2INT") {
        return reinterpret_cast<void *>(do_FLOAT2INT);
    }
    if (fnName == "do_MOV") {
        return reinterpret_cast<void *>(do_MOV);
    }
    if (fnName == "do_IMOVSP") {
        return reinterpret_cast<void *>(do_IMOVSP);
    }
    if (fnName == "do_IMOVSPI") {
        return reinterpret_cast<void *>(do_IMOVSPI);
    }
    if (fnName == "do_GROW") {
        return reinterpret_cast<void *>(do_GROW);
    }
    if (fnName == "do_SHRINK") {
        return reinterpret_cast<void *>(do_SHRINK);
    }
    if (fnName == "do_INNER_GRID") {
        return reinterpret_cast<void *>(do_INNER_GRID);
    }
    outs() << "[ExecutionEngine] Can't find function " << fnName
           << ". Catch the Segmentation fault:)\n";
    return nullptr; });

    ee->addGlobalMapping(IRegFile, (void *)IREG_FILE);
    ee->addGlobalMapping(FRegFile, (void *)FREG_FILE);
    ee->finalizeObject();

    simInit();

    ArrayRef<GenericValue> noargs;
    ee->runFunction(mainFunc, noargs);
    outs() << "#[Code was run]\n";

    simExit();
    return EXIT_SUCCESS;
}