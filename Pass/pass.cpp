#include <unordered_map>

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
using namespace llvm;

template <typename Map, typename Key, typename Factory>
static auto& get_or_create(Map& map, const Key& key, Factory&& factory) {
    auto it = map.find(key);

    if (it != map.end()) {
        return it->second;
    }

    return map.try_emplace(key, factory()).first->second;
}

struct TrackUserPass : public PassInfoMixin<TrackUserPass> {
    Type *int8PtrTy;
    Type *int32Ty;
    Type *int64Ty;
    Type *voidTy;
    std::unordered_map<const char *, Constant *> opNameToGlVar;


    PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
        outs() << "[Module] " << M.getName() << '\n';

        LLVMContext &Ctx = M.getContext();
        IRBuilder<> builder(Ctx);

        voidTy = Type::getVoidTy(Ctx);
        int8PtrTy = PointerType::get(Ctx, 0);
        int32Ty = Type::getInt32Ty(Ctx);
        int64Ty = Type::getInt64Ty(Ctx);

        insertUsrOperandLog(M, builder);

        return PreservedAnalyses::none();
    }


    void insertUsrOperandLog(Module &M, IRBuilder<> &builder) {
        Type *loggerParamTypes[] = {int64Ty, int8PtrTy, int32Ty};
        FunctionType *loggerType = FunctionType::get(voidTy, ArrayRef<Type *>(loggerParamTypes), true);
        FunctionCallee logger = M.getOrInsertFunction("logUserOperand", loggerType);

        for (auto &F : M) {
            for (auto &B : F) {
                for (auto &I : B) {
                    if (isa<PHINode>(I)) continue;
                    
                    builder.SetInsertPoint(&I);
                    
                    std::vector<Value *> args;

                    Value *instr_id = ConstantInt::get(int64Ty, (int64_t)(&I));
                    args.push_back(instr_id);

                    args.push_back(get_or_create(opNameToGlVar, I.getOpcodeName(), [&]() {
                        return builder.CreateGlobalString(I.getOpcodeName());
                    }));

                    args.push_back(nullptr);

                    int users_count = 0;

                    for (auto U : I.users()) {
                        if (auto *UInstr = dyn_cast<Instruction>(U); UInstr && !isa<PHINode>(UInstr)) {
                            args.push_back(get_or_create(opNameToGlVar, UInstr->getOpcodeName(), [&]() {
                                return builder.CreateGlobalString(UInstr->getOpcodeName());
                            }));
                            users_count++;
                        }
                    }

                    args[2] = ConstantInt::get(int32Ty, users_count);

                    builder.CreateCall(logger, ArrayRef<Value *>(args));
                }
            }

            bool verification = verifyFunction(F, &outs());

            outs() << "[[ VERIFICATION ]]  " << (verification ? "FAIL\n" : "OK\n");
        }
    }
};

PassPluginLibraryInfo getPassPluginInfo() {
    const auto callback = [](PassBuilder &PB) {
        PB.registerOptimizerLastEPCallback([](ModulePassManager &MPM, auto...) {
            MPM.addPass(TrackUserPass{});
            return true;
        });
    };

    return {LLVM_PLUGIN_API_VERSION, "MyPlugin", "0.0.1", callback};
};

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getPassPluginInfo();
}