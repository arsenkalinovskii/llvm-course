#include <stdio.h>
#include <iostream>
#include <format>

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"

#include "../App/sim.h"

#include "generator_utils.hpp"

using namespace llvm;

class IRGeneratorGenerator
{
    std::unique_ptr<Module> M;

    void generateHeaders(std::string &sb)
    {
        sb +=
            "////////////////////////////////////////////////////////////////////////\n"
            "// HEADERS\n"
            "////////////////////////////////////////////////////////////////////////\n\n";
        sb +=
            "#include \"../App/sim.h\"\n\n"
            "#include \"llvm/ExecutionEngine/ExecutionEngine.h\"\n"
            "#include \"llvm/ExecutionEngine/GenericValue.h\"\n"
            "#include \"llvm/IR/IRBuilder.h\"\n"
            "#include \"llvm/IR/LLVMContext.h\"\n"
            "#include \"llvm/IR/Module.h\"\n"
            "#include \"llvm/IR/Verifier.h\"\n"
            "#include \"llvm/Support/Alignment.h\"\n"
            "#include \"llvm/Support/TargetSelect.h\"\n"
            "#include \"llvm/Support/raw_ostream.h\"\n"
            "using namespace llvm;\n\n";
    }

    void generateMainBeg(std::string &sb)
    {
        sb +=
            "////////////////////////////////////////////////////////////////////////\n"
            "// MAIN BEGINNING\n"
            "////////////////////////////////////////////////////////////////////////\n\n";
        sb +=
            "int main() {\n"
            "\tLLVMContext context;\n "
            "\tModule *module = new Module(\"app.c\", context);\n"
            "\tIRBuilder<> builder(context);\n\n";
    }

    void generateFnsDeclarations(std::string &sb)
    {
        sb +=
            "////////////////////////////////////////////////////////////////////////\n"
            "// EXTERNAL FUNCTIONS DECLARATIONS\n"
            "////////////////////////////////////////////////////////////////////////\n\n";

        for (auto &F : *M)
        {
            if (!F.isDeclaration())
                continue;
            if (F.isIntrinsic())
                sb += cpp_builder::llvm_declare_intrinsic(F);
            else
                sb += cpp_builder::llvm_declare_fn(F);
        }
        sb += "\n";
    }

    void generateFnCreate(std::string &sb, llvm::Function &F)
    {
        std::string buffer;

        std::format_to(
            std::back_inserter(buffer),
            "\tFunction *{1}Func = Function::Create({0}, Function::ExternalLinkage, \"{1}\", module);\n",
            cpp_builder::llvm_get_type(F.getFunctionType()),
            F.getName().str());

        sb += buffer;
    }

    void generateFnBlock(std::string &sb, llvm::Function &F)
    {
        std::string buffer;
        for (auto &B : F)
        {
            if (F.isDeclaration())
                continue;
            std::format_to(
                std::back_inserter(buffer),
                "\t\tBasicBlock *{} = BasicBlock::Create(context, \"\", {}Func);\n",
                cpp_builder::llvm_get_blk_name(B),
                F.getName().str());

            sb += buffer;

            buffer.clear();
        }

        sb += "\n";
    }

    void generateFnInstrs(std::string &sb, llvm::Function &F)
    {
        for (auto &B : F)
        {
            sb +=
                "\n\t\tbuilder.SetInsertPoint(" + cpp_builder::llvm_get_blk_name(B) + ");\n\n";
            for (auto &I : B)
                sb += cpp_builder::llvm_get_instr(I);
        }
    }

    void generateLinkPhiNodes(std::string &sb, llvm::Function &F)
    {
        for (auto &B : F)
        {
            for (auto &I : B)
            {
                const auto *PHI = dyn_cast<PHINode>(&I);

                if (!PHI)
                    continue;
                
                std::string phi_val_name = cpp_builder::llvm_get_val_name(I);
                for (int i = 0; i < PHI->getNumIncomingValues(); i++) {
                    const Value *incomingValue = PHI->getIncomingValue(i);
                    const BasicBlock *incomingBlock = PHI->getIncomingBlock(i);

                    sb += "\t\tcast<PHINode>(" + phi_val_name + ")->addIncoming("
                        + cpp_builder::llvm_get_value(*incomingValue, F) + ", "
                        + cpp_builder::llvm_get_blk_name(*incomingBlock) + ");\n";
                }
            }
        }
    }

    void generateFnsBlocks(std::string &sb)
    {
        sb +=
            "////////////////////////////////////////////////////////////////////////\n"
            "// INTERNAL FUNCTIONS\n"
            "////////////////////////////////////////////////////////////////////////\n\n";

        for (auto &F : *M)
        {
            if (F.isDeclaration())
                continue;
            generateFnCreate(sb, F);
            sb += "\t{\n";
            generateFnBlock(sb, F);
            generateFnInstrs(sb, F);
            generateLinkPhiNodes(sb, F);
            sb += "\t}\n";
        }
    }

    void generateDump(std::string &sb)
    {
        sb +=
            "////////////////////////////////////////////////////////////////////////\n"
            "// DUMP LLVM IR\n"
            "////////////////////////////////////////////////////////////////////////\n\n";

        sb +=
            "\tmodule->print(outs(), nullptr);\n"
            "\touts() << '\\n';\n"
            "\tbool verif = verifyModule(*module, &outs());\n"
            "\touts() << \"[VERIFICATION]:\" << (verif ? \"FAIL\\n\\n\" : \"OK\\n\\n\");\n";
    }

    void generateInterpreterPrepare(std::string &sb)
    {
        sb +=
            "////////////////////////////////////////////////////////////////////////\n"
            "// RUN LLVM IR\n"
            "////////////////////////////////////////////////////////////////////////\n\n";

        sb += 
            "\touts() << \"[EE] Run\\n\";\n"
            "\tInitializeNativeTarget();\n"
            "\tInitializeNativeTargetAsmPrinter();\n\n";

        sb +=
            "\tExecutionEngine *ee = EngineBuilder(std::unique_ptr<Module>(module)).create();\n";

        sb +=
            "\tee->InstallLazyFunctionCreator([](const std::string &fnName) -> void * {\n";

        static std::array<std::string, 7> lazy_fns = 
        {
            "simFlush",
            "simPutPixel",
            "simHasClick",
            "simGetClick",
            "simHasScroll",
            "simGetScroll",
            "simCalcSinus"
        };

        std::string buffer;
        for (std::string &lazy_fn : lazy_fns)
        {
            std::format_to(
                std::back_inserter(buffer),
                "\t\tif (fnName == \"{0}\") {{\n"
                "\t\t\treturn reinterpret_cast<void *>({0});\n"
                "\t\t}}\n",
                lazy_fn
            );
            sb += buffer;

            buffer.clear();
        }
        sb +=
            "\t\treturn nullptr;\n";

        sb += "\t});\n";
        sb += "\tee->finalizeObject();\n";
    }

    void generateInterpreterRun(std::string &sb)
    {
        sb +=
            "\tsimInit();\n\n"
            "\tArrayRef<GenericValue> noargs;\n"
            "\tGenericValue v = ee->runFunction(appFunc, noargs);\n"
            "\touts() << \"[EE] Result: \" << v.IntVal << \'\\n\';\n\n"
            "\tsimExit();\n"
            "\treturn EXIT_SUCCESS;\n";
    }

    void generateClosingMainBracket(std::string &sb)
    {
        sb += "}\n";
    }

public:
    IRGeneratorGenerator(std::unique_ptr<Module> &M) : M(std::move(M)) {}
    std::string generate()
    {
        std::string sb;
        generateHeaders(sb);
        generateMainBeg(sb);
        generateFnsDeclarations(sb);
        generateFnsBlocks(sb);
        generateDump(sb);
        generateInterpreterPrepare(sb);
        generateInterpreterRun(sb);
        generateClosingMainBracket(sb);
        return sb;
    }
};

int main(int argc, char **argv)
{
    LLVMContext Context;
    SMDiagnostic Err;
    std::unique_ptr<Module> Mod = parseIRFile(argv[1], Err, Context);

    if (!Mod)
    {
        Err.print(argv[0], errs());
        return 1;
    }

    IRGeneratorGenerator genGen(Mod);

    auto generated = genGen.generate();
    std::cout << generated;

    return 0;
}