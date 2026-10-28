#include "llvm/IR/Module.h"

#include <unordered_map>

namespace cpp_builder {
    using namespace llvm;

    std::string llvm_get_type(const llvm::Type *type);

    std::string llvm_get_fn_func(const Function& F);

    std::string llvm_declare_fn(const Function& F);

    std::string llvm_declare_intrinsic(const Function& F);

    std::string llvm_get_blk_name(const BasicBlock& B);

    std::string llvm_get_instr(const Instruction &I);

    std::string llvm_get_val_name(const Instruction &I);

    std::string llvm_get_value(const Value &V, const Function& F);
}; // namespace cpp_builder