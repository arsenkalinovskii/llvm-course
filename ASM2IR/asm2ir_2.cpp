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

static constexpr int IREG_FILE_SIZE = 16;
static constexpr int FREG_FILE_SIZE = 16;
static constexpr int STACK_CAPACITY = 524288;

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

    FunctionCallee simCalcSinusFunc = module->getOrInsertFunction("simCalcSinus", FunctionType::get(Type::getFloatTy(context), {Type::getFloatTy(context)}, false));
    FunctionCallee simPutPixelFunc = module->getOrInsertFunction("simPutPixel", FunctionType::get(Type::getVoidTy(context), {IntegerType::get(context, 32), IntegerType::get(context, 32), IntegerType::get(context, 32)}, false));
    FunctionCallee simFlushFunc = module->getOrInsertFunction("simFlush", FunctionType::get(Type::getVoidTy(context), {}, false));
    FunctionCallee simHasClickFunc = module->getOrInsertFunction("simHasClick", FunctionType::get(IntegerType::get(context, 32), {}, false));
    FunctionCallee simGetClickFunc = module->getOrInsertFunction("simGetClick", FunctionType::get(IntegerType::get(context, 32), {}, false));
    FunctionCallee simHasScrollFunc = module->getOrInsertFunction("simHasScroll", FunctionType::get(IntegerType::get(context, 32), {}, false));
    FunctionCallee simGetScrollFunc = module->getOrInsertFunction("simGetScroll", FunctionType::get(IntegerType::get(context, 32), {}, false));

    //[16 x i32] IRegFile = {0, 0, 0, 0}
    ArrayType *IRegFileType = ArrayType::get(builder.getInt64Ty(), IREG_FILE_SIZE);
    GlobalVariable *IRegFile = new GlobalVariable(
        *module,
        IRegFileType,
        false,
        GlobalValue::InternalLinkage,
        ConstantAggregateZero::get(IRegFileType));

    ArrayType *FRegFileType = ArrayType::get(builder.getDoubleTy(), FREG_FILE_SIZE);
    GlobalVariable *FRegFile = new GlobalVariable(
        *module,
        FRegFileType,
        false,
        GlobalValue::InternalLinkage,
        ConstantAggregateZero::get(FRegFileType));

    GlobalVariable *StackArray;
    GlobalVariable *StackPointer;

    ArrayType *StackType =
        ArrayType::get(Type::getDoubleTy(context), STACK_CAPACITY);

    StackArray = new GlobalVariable(
        *module,
        StackType,
        false,
        GlobalValue::InternalLinkage,
        ConstantAggregateZero::get(StackType));

    StackPointer = new GlobalVariable(
        *module,
        Type::getInt64Ty(context),
        false,
        GlobalValue::InternalLinkage,
        ConstantInt::get(Type::getInt64Ty(context), 0));

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

    // Argument types
    Type *int32Type = Type::getInt32Ty(context);
    Type *int64Type = Type::getInt64Ty(context);
    Type *doubleType = Type::getDoubleTy(context);

    auto getIRegPtr = [&](int index) -> Value *
    {
        return builder.CreateInBoundsGEP(
            IRegFileType,
            IRegFile,
            {builder.getInt32(0), builder.getInt32(index)});
    };

    auto getFRegPtr = [&](int index) -> Value *
    {
        return builder.CreateInBoundsGEP(
            FRegFileType,
            FRegFile,
            {builder.getInt32(0), builder.getInt32(index)});
    };

    auto loadIReg = [&](int index) -> Value *
    {
        return builder.CreateLoad(
            builder.getInt64Ty(),
            getIRegPtr(index));
    };

    auto getRegIdx = [&](const std::string &s) -> int
    {
        return std::stoi(s.substr(1));
    };

    auto getIReg = [&](const std::string &s) -> Value *
    {
        return loadIReg(getRegIdx(s));
    };

    auto loadFReg = [&](int index) -> Value *
    {
        return builder.CreateLoad(
            builder.getDoubleTy(),
            getFRegPtr(index));
    };

    auto getFReg = [&](const std::string &s) -> Value *
    {
        return loadFReg(getRegIdx(s));
    };

    auto getImm = [&](const std::string &s) -> Value *
    {
        return builder.getInt64(std::stoull(s));
    };

    auto getFimmoz = [&](const std::string &s) -> Value *
    {
        return ConstantFP::get(builder.getDoubleTy(), std::stod(s));
    };

    auto storeIReg = [&](int index, Value *value)
    {
        builder.CreateStore(value, getIRegPtr(index));
    };

    auto storeFReg = [&](int index, Value *value)
    {
        builder.CreateStore(value, getFRegPtr(index));
    };

    auto loadSP = [&]() -> Value *
    {
        return builder.CreateLoad(
            Type::getInt64Ty(context),
            StackPointer);
    };

    auto storeSP = [&](Value *value)
    {
        builder.CreateStore(value, StackPointer);
    };

    auto getStackElement = [&](Value *index) -> Value *
    {
        Value *ptr = builder.CreateInBoundsGEP(
            StackArray->getValueType(),
            StackArray,
            {builder.getInt64(0), index});

        return builder.CreateLoad(builder.getDoubleTy(), ptr);
    };

    auto setStackElement = [&](Value *index, Value *value)
    {
        Value *ptr = builder.CreateInBoundsGEP(
            StackArray->getValueType(),
            StackArray,
            {builder.getInt64(0), index});

        builder.CreateStore(value, ptr);
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
            int arg1 = getRegIdx(arg);
            input >> arg;
            outs() << " = sin(" << arg << ")\n";
            Value *x2 = getFReg(arg);
            x2 = builder.CreateFPTrunc(x2, builder.getFloatTy());
            Value *args[] = {x2};
            Value *result = builder.CreateCall(simCalcSinusFunc, args);
            result = builder.CreateFPExt(result, builder.getDoubleTy());
            storeFReg(arg1, result);
            continue;
        }

        if (!name.compare("PUTPIXEL"))
        {
            input >> arg;
            outs() << "\tPUTPIXEL " << arg;
            Value *arg1 = getIReg(arg);
            input >> arg;
            outs() << " " << arg;
            Value *arg2 = getIReg(arg);
            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg3 = getIReg(arg);
            Value *args[] = {
                builder.CreateTrunc(arg2, builder.getInt32Ty()),
                builder.CreateTrunc(arg3, builder.getInt32Ty()),
                builder.CreateTrunc(arg1, builder.getInt32Ty())};
            builder.CreateCall(simPutPixelFunc, args);
            continue;
        }

        if (!name.compare("FLUSH"))
        {
            outs() << "\tFLUSH\n";
            builder.CreateCall(simFlushFunc);
            continue;
        }

        if (!name.compare("HAS_CLICK"))
        {
            input >> arg;
            outs() << "\tHAS_SCROLL " << arg << '\n';
            int xx = getRegIdx(arg);

            Value *result = builder.CreateCall(simHasClickFunc);
            result = builder.CreateZExt(result, builder.getInt64Ty());

            storeIReg(xx, result);
            continue;
        }

        if (!name.compare("GET_CLICK"))
        {
            input >> arg;
            outs() << "\tGET_CLICK " << arg;
            int x1 = getRegIdx(arg);
            input >> arg;
            outs() << " " << arg << '\n';
            int x2 = getRegIdx(arg);

            Value *click = builder.CreateCall(simGetClickFunc);
            Value *x = builder.CreateAShr(
                click,
                builder.getInt32(16));

            Value *y = builder.CreateAnd(
                click,
                builder.getInt32(0xFFFF));

            x = builder.CreateZExt(x, builder.getInt64Ty());
            y = builder.CreateZExt(y, builder.getInt64Ty());

            storeIReg(x1, x);
            storeIReg(x2, y);

            continue;
        }

        if (!name.compare("HAS_SCROLL"))
        {
            input >> arg;
            outs() << "\tHAS_SCROLL " << arg << '\n';
            int xx = getRegIdx(arg);

            Value *result = builder.CreateCall(simHasScrollFunc);
            result = builder.CreateZExt(result, builder.getInt64Ty());

            storeIReg(xx, result);
            continue;
        }

        if (!name.compare("GET_SCROLL"))
        {
            input >> arg;
            outs() << "\tGET_SCROLL " << arg << '\n';
            int xx = getRegIdx(arg);

            Value *result = builder.CreateCall(simGetScrollFunc);

            storeIReg(xx, result);
            continue;
        }

        if (!name.compare("RCELL"))
        {
            input >> arg;
            outs() << "\tRCELL " << arg;
            Value *x1 = getIReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *x2 = getIReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *x3 = getIReg(arg);

            Value *addr = builder.CreateAdd(
                x1,
                builder.CreateAdd(
                    builder.CreateMul(
                        x2,
                        builder.getInt64(SIM_Y_SIZE)),
                    x3));

            Value *val = getStackElement(addr);
            storeFReg(0, val);

            continue;
        }

        if (!name.compare("WCELL"))
        {
            input >> arg;
            outs() << "\tRCELL " << arg;
            Value *x1 = getIReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *x2 = getIReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *x3 = getIReg(arg);

            Value *addr = builder.CreateAdd(
                x1,
                builder.CreateAdd(
                    builder.CreateMul(
                        x2,
                        builder.getInt64(SIM_Y_SIZE)),
                    x3));

            Value *val = loadFReg(0);
            setStackElement(addr, val);

            continue;
        }

        if (!name.compare("FSAT"))
        {
            input >> arg;
            outs() << "\tFSAT " << arg << '\n';
            int idx = getRegIdx(arg);
            Value *xx = loadFReg(idx);

            Value *upperCheck = builder.CreateFCmpOGT(
                xx,
                ConstantFP::get(Type::getDoubleTy(context), 10.0));

            Value *upperClamped = builder.CreateSelect(
                upperCheck,
                ConstantFP::get(Type::getDoubleTy(context), 10.0),
                xx);

            Value *lowerCheck = builder.CreateFCmpOLT(
                upperClamped,
                ConstantFP::get(Type::getDoubleTy(context), -10.0));

            Value *result = builder.CreateSelect(
                lowerCheck,
                ConstantFP::get(Type::getDoubleTy(context), -10.0),
                upperClamped);

            storeFReg(idx, result);

            continue;
        }

        if (!name.compare("FMUL") || !name.compare("FDIV") ||
            !name.compare("FADD") || !name.compare("FSUB"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            int x1 = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg;
            Value *x2 = getFReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *x3 = getFReg(arg);

            Value *result;

            if (!name.compare("FMUL"))
                result = builder.CreateFMul(x2, x3);
            else if (!name.compare("FDIV"))
                result = builder.CreateFDiv(x2, x3);
            else if (!name.compare("FADD"))
                result = builder.CreateFAdd(x2, x3);
            else
                result = builder.CreateFSub(x2, x3);

            storeFReg(x1, result);

            continue;
        }

        if (!name.compare("FTONE"))
        {
            input >> arg;
            outs() << "\tFTONE " << arg;
            int arg1 = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getFReg(arg);

            Value *alpha = builder.CreateFDiv(
                builder.CreateFAdd(
                    arg2,
                    ConstantFP::get(builder.getDoubleTy(), 10.0)),
                ConstantFP::get(builder.getDoubleTy(), 20.0));

            Value *scaled = builder.CreateFMul(
                alpha,
                ConstantFP::get(builder.getDoubleTy(), 255.0));

            Value *tone = builder.CreateFPToSI(scaled, builder.getInt32Ty());

            tone = builder.CreateAnd(tone, builder.getInt32(255));

            Value *r = builder.CreateShl(tone, builder.getInt32(16));
            Value *g = builder.CreateShl(tone, builder.getInt32(8));

            Value *argb = builder.CreateOr(
                builder.CreateOr(r, g),
                builder.CreateOr(tone, builder.getInt32(0xFF000000)));

            storeIReg(arg1, builder.CreateZExt(argb, builder.getInt64Ty()));

            continue;
        }

        if (!name.compare("FMOV"))
        {
            input >> arg;
            outs() << "\tFMOV " << arg;
            int arg1 = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getFimmoz(arg);

            storeFReg(arg1, arg2);
            continue;
        }

        if (!name.compare("IMUL") || !name.compare("IDIV") ||
            !name.compare("IADD") || !name.compare("ISUB"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            int x1 = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg;
            Value *x2 = getIReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *x3 = getIReg(arg);

            Value *result;

            if (!name.compare("IMUL"))
                result = builder.CreateMul(x2, x3);
            else if (!name.compare("IDIV"))
                result = builder.CreateUDiv(x2, x3);
            else if (!name.compare("IADD"))
                result = builder.CreateAdd(x2, x3);
            else
                result = builder.CreateSub(x2, x3);

            storeIReg(x1, result);

            continue;
        }

        if (!name.compare("IMULI") || !name.compare("IDIVI") ||
            !name.compare("IADDI") || !name.compare("ISUBI"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            int x1 = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg;
            Value *x2 = getIReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *x3 = getImm(arg);

            Value *result;

            if (!name.compare("IMULI"))
                result = builder.CreateMul(x2, x3);
            else if (!name.compare("IDIVI"))
                result = builder.CreateUDiv(x2, x3);
            else if (!name.compare("IADDI"))
                result = builder.CreateAdd(x2, x3);
            else
                result = builder.CreateSub(x2, x3);

            storeIReg(x1, result);

            continue;
        }

        if (!name.compare("IMOVI"))
        {
            input >> arg;
            outs() << "\tIMOVI " << arg;
            int arg1 = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *arg2 = getImm(arg);

            storeIReg(arg1, arg2);

            continue;
        }

        if (!name.compare("IXCHG"))
        {
            input >> arg;
            outs() << "\tIXCHG " << arg;
            int arg1 = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            int arg2 = getRegIdx(arg);

            Value *val1 = loadIReg(arg1);
            Value *val2 = loadIReg(arg2);

            storeIReg(arg1, val2);
            storeIReg(arg2, val1);

            continue;
        }

        if (!name.compare("IGEQ") || !name.compare("ILE") ||
            !name.compare("IAND"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            int arg1 = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg;
            Value *x2 = getIReg(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *x3 = getIReg(arg);

            Value *result;

            if (!name.compare("IGEQ"))
                result = builder.CreateZExt(
                    builder.CreateICmpUGE(x2, x3),
                    builder.getInt64Ty());
            else if (!name.compare("ILE"))
                result = builder.CreateZExt(
                    builder.CreateICmpULT(x2, x3),
                    builder.getInt64Ty());
            else
                result = builder.CreateZExt(
                    builder.CreateAnd(
                        builder.CreateICmpNE(x2, builder.getInt64(0)),
                        builder.CreateICmpNE(x3, builder.getInt64(0))),
                    builder.getInt64Ty());

            storeIReg(arg1, result);

            continue;
        }

        if (!name.compare("IGEQI") || !name.compare("ILEI"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg;
            int arg1 = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg;
            Value *x2 = getIReg(arg);

            input >> arg;

            Value *x3 = getImm(arg);
            Value *result;

            if (!name.compare("IGEQI"))
                result = builder.CreateZExt(
                    builder.CreateICmpUGE(x2, x3),
                    builder.getInt64Ty());
            else
                result = builder.CreateZExt(
                    builder.CreateICmpULT(x2, x3),
                    builder.getInt64Ty());

            storeIReg(arg1, result);

            continue;
        }

        if (!name.compare("INT2FLOAT"))
        {
            input >> arg;
            outs() << "\tINT2FLOAT " << arg;
            int yy = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *xx = getIReg(arg);

            storeFReg(yy,
                      builder.CreateUIToFP(xx, builder.getDoubleTy()));

            continue;
        }

        if (!name.compare("FLOAT2INT"))
        {
            input >> arg;
            outs() << "\tINT2FLOAT " << arg;
            int xx = getRegIdx(arg);

            input >> arg;
            outs() << " " << arg << '\n';
            Value *yy = getFReg(arg);

            storeIReg(xx,
                      builder.CreateFPToUI(yy, builder.getInt64Ty()));

            continue;
        }

        if (!name.compare("MOV"))
        {
            input >> arg;
            outs() << "\tMOV " << arg << " SP\n";
            int xx = getRegIdx(arg);
            Value *sp = loadSP();
            storeIReg(xx, sp);
            input >> arg;
            continue;
        }

        if (!name.compare("IMOVSP"))
        {
            input >> arg;
            outs() << "\tIMOVSP " << arg;
            Value *x1 = getIReg(arg);

            input >> arg;
            outs() << " " << arg;
            Value *x2 = getIReg(arg);

            Value *sp = loadSP();
            Value *idx = builder.CreateSub(sp, x1);
            setStackElement(idx, x2);

            continue;
        }

        if (!name.compare("IMOVSPI"))
        {
            input >> arg;
            outs() << "\tIMOVSPI " << arg;
            Value *x1 = getImm(arg);

            input >> arg;
            outs() << " " << arg;
            Value *x2 = getIReg(arg);

            Value *sp = loadSP();
            Value *idx = builder.CreateSub(sp, x1);
            setStackElement(idx, x2);

            continue;
        }

        if (!name.compare("GROW") || !name.compare("SHRINK"))
        {
            input >> arg;
            outs() << "\t" << name << " " << arg << '\n';

            Value *amount = getImm(arg);
            Value *sp = loadSP();

            Value *newSP;

            if (!name.compare("GROW"))
                newSP = builder.CreateAdd(sp, amount);
            else
                newSP = builder.CreateSub(sp, amount);

            storeSP(newSP);

            continue;
        }

        if (!name.compare("INNER_GRID"))
        {
            input >> arg;
            int xReg = getRegIdx(arg);

            input >> arg;
            int yReg = getRegIdx(arg);

            outs() << "\tINNER_GRID "
                   << xReg << " " << yReg << '\n';

            Value *grid1 = loadIReg(1);
            Value *grid2 = loadIReg(2);

            Value *x = loadIReg(xReg);
            Value *y = loadIReg(yReg);

            Value *one = builder.getInt64(1);
            Value *stride = builder.getInt64(SIM_Y_SIZE);

            Value *xp1 = builder.CreateAdd(x, one);
            Value *xm1 = builder.CreateSub(x, one);

            Value *rowX = builder.CreateMul(stride, x);
            Value *rowXp1 = builder.CreateMul(stride, xp1);
            Value *rowXm1 = builder.CreateMul(stride, xm1);

            Value *idx = builder.CreateAdd(
                builder.CreateAdd(grid1, rowX), y);

            Value *idx2 = builder.CreateAdd(
                builder.CreateAdd(grid2, rowX), y);

            Value *idxXp1 = builder.CreateAdd(
                builder.CreateAdd(grid1, rowXp1), y);

            Value *idxXm1 = builder.CreateAdd(
                builder.CreateAdd(grid1, rowXm1), y);

            Value *idxYp1 = builder.CreateAdd(idx, one);
            Value *idxYm1 = builder.CreateSub(idx, one);

            Value *g1xy = getStackElement(idx);
            Value *g2xy = getStackElement(idx2);
            Value *g1xp1y = getStackElement(idxXp1);
            Value *g1xm1y = getStackElement(idxXm1);
            Value *g1xyp1 = getStackElement(idxYp1);
            Value *g1xym1 = getStackElement(idxYm1);

            Value *timeTerm = builder.CreateFSub(
                builder.CreateFMul(
                    ConstantFP::get(builder.getDoubleTy(), 2.0),
                    g1xy),
                g2xy);

            Value *spaceTerm = builder.CreateFAdd(g1xp1y, g1xm1y);
            spaceTerm = builder.CreateFAdd(spaceTerm, g1xyp1);
            spaceTerm = builder.CreateFAdd(spaceTerm, g1xym1);

            spaceTerm = builder.CreateFSub(
                spaceTerm,
                builder.CreateFMul(
                    ConstantFP::get(builder.getDoubleTy(), 4.0),
                    g1xy));

            Value *result = builder.CreateFAdd(
                timeTerm,
                builder.CreateFMul(
                    ConstantFP::get(builder.getDoubleTy(), 0.1),
                    spaceTerm));

            setStackElement(idx2, result);

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
		if (fnName == "simFlush") {
			return reinterpret_cast<void *>(simFlush);
		}
		if (fnName == "simPutPixel") {
			return reinterpret_cast<void *>(simPutPixel);
		}
		if (fnName == "simHasClick") {
			return reinterpret_cast<void *>(simHasClick);
		}
		if (fnName == "simGetClick") {
			return reinterpret_cast<void *>(simGetClick);
		}
		if (fnName == "simHasScroll") {
			return reinterpret_cast<void *>(simHasScroll);
		}
		if (fnName == "simGetScroll") {
			return reinterpret_cast<void *>(simGetScroll);
		}
		if (fnName == "simCalcSinus") {
			return reinterpret_cast<void *>(simCalcSinus);
		}
		return nullptr; });

    ee->finalizeObject();

    simInit();

    ArrayRef<GenericValue> noargs;
    ee->runFunction(mainFunc, noargs);
    outs() << "#[Code was run]\n";

    simExit();
    return EXIT_SUCCESS;
}