#include <stdexcept>
#include <string>

#include "llvm/ADT/SmallString.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.def"
#include <llvm/Support/raw_ostream.h>

#include "generator_utils.hpp"

namespace cpp_builder
{
    using namespace llvm;

    std::string llvm_get_type(const llvm::Type *type)
    {
        return TypeSwitch<const Type *, std::string>(type)
            .Case<IntegerType>([](const IntegerType *t) { 
                return "IntegerType::get(context, " + std::to_string(t->getBitWidth()) + ")"; 
            })
            .Case<FunctionType>([](const FunctionType *t) {
                std::string params = "{";
                if (!t->params().empty()) {
                    params += llvm_get_type(t->params().front());
                    for (const Type *param : t->params().drop_front(1)) {
                        params += ", ";
                        params += llvm_get_type(param);
                    }
                }
                params += "}";
                return "FunctionType::get("
                    + llvm_get_type(t->getReturnType()) + ", "
                    + params + ", "
                    + (t->isVarArg() ? "true" : "false") + ")"; 
            })
            .Case<PointerType>([](const PointerType *t) { 
                return "PointerType::get(context, " + std::to_string(t->getAddressSpace()) + ")"; 
            })
            .Case<ArrayType>([](const ArrayType *t) { 
                return "ArrayType::get(" + llvm_get_type(t->getElementType()) 
                + ", " + std::to_string(t->getNumElements()) + ")"; 
            })
            .Case<FixedVectorType>([](const FixedVectorType *t) { 
                return "FixedVectorType::get(" + llvm_get_type(t->getElementType()) + ", "
                 + std::to_string(t->getNumElements()) + ")"; 
            })
            .Default([](const Type *t) {
                switch (t->getTypeID()) {
                    case Type::VoidTyID:
                        return "Type::getVoidTy(context)";
                    case Type::FloatTyID:
                        return "Type::getFloatTy(context)";
                    case Type::DoubleTyID:
                        return "Type::getDoubleTy(context)";
                    default:
                        throw std::runtime_error("forbidden type id: " + std::to_string(
                            static_cast<int>(t->getTypeID())));
                } 
            });
    }

    std::string llvm_get_fn_func(const Function &F)
    {
        std::string s = F.getName().str();
        for (auto &c : s)
        {
            if (c == '.')
                c = '_';
        }
        return s + "Func";
    }

    std::string llvm_declare_fn(const Function &F)
    {
        return "\tFunctionCallee " + llvm_get_fn_func(F) + " = "
            + "module->getOrInsertFunction(\"" + F.getName().str() + "\", "
            + llvm_get_type(F.getFunctionType()) + ");\n";
    }

    std::string llvm_declare_intrinsic(const Function& F)
    {
        const FunctionType *F_type = F.getFunctionType();
        std::string params = "{";
        if (!F_type->params().empty()) {
            params += llvm_get_type(F_type->params().front());
            for (const Type *param : F_type->params().drop_front(1)) {
                params += ", ";
                params += llvm_get_type(param);
            }
        }
        params += "}";
        return "\tFunction *" + llvm_get_fn_func(F) + " = "
            "Intrinsic::getOrInsertDeclaration("
            "module, " +  std::to_string(F.getIntrinsicID()) + ", "
            + llvm_get_type(F.getReturnType()) + ", "
            + params + ");\n";
    }

    std::string llvm_get_blk_name(const BasicBlock &B)
    {
        return "BB" + B.getNameOrAsOperand().substr(1);
    }

    std::string llvm_get_val_name(const Instruction &I)
    {
        std::string operand;
        raw_string_ostream os(operand);
        I.printAsOperand(os, false);
        os.flush();
        return "val" + operand.substr(1);
    }

    std::string llvm_get_value(const Value &V, const Function &F)
    {
        return TypeSwitch<const Value *, std::string>(&V)
            .Case<Argument>([&](const Argument *A) {
                return llvm_get_fn_func(F) + "->getArg(" + std::to_string(A->getArgNo()) + ")";
            })
            .Case<Instruction>([&](const Instruction *I) {
                return llvm_get_val_name(*I);
            })
            .Case<ConstantInt>([&](const ConstantInt *C) {
                std::string bitness = std::to_string(C->getBitWidth());
                std::string value_str = std::to_string(C->getLimitedValue());
                return "builder.getInt" + bitness + "(" + value_str + "ULL)";
            })
            .Case<ConstantFP>([&](const ConstantFP *C) {
                const APFloat &value = C->getValueAPF();
                std::string value_str = std::to_string(value.convertToDouble());
                return "ConstantFP::get(" + llvm_get_type(C->getType()) + ", " + value_str + ")";
            })
            .Case<BasicBlock>([](const BasicBlock *B) {
                return llvm_get_blk_name(*B);
            })
            .Case<ConstantVector>([&](const ConstantVector *C) {
                std::string elements = "{";
                if (C->getNumOperands() > 0) {
                    elements += llvm_get_value(*C->getOperand(0), F);
                    for (int i = 1; i < C->getNumOperands(); i++) {
                        elements += ", " + llvm_get_value(*C->getOperand(i), F);
                    }
                }
                elements += "}";
                return "ConstantVector::get(" + elements + ")";
            })
            .Case<ConstantDataVector>([&](const ConstantDataVector *C) {
                std::string elements = "{";
                if (C->getNumElements() > 0) {
                    elements += llvm_get_value(*C->getElementAsConstant(0), F);
                    for (int i = 1; i < C->getNumElements(); i++) {
                        elements += ", " + llvm_get_value(*C->getElementAsConstant(i), F);
                    }
                }
                elements += "}";
                return "ConstantVector::get(" + elements + ")";
            })
            .Case<PoisonValue>([&](const PoisonValue *P) {
                return "PoisonValue::get("
                    + llvm_get_type(P->getType())
                    + ")";
            })
            .Default([&](const Value *v) {
                throw std::runtime_error(
                    "forbidden value type "
                    + v->getNameOrAsOperand()
                    + " in function " 
                    + F.getNameOrAsOperand()
                );
                return "";
            });
    }

        static std::string llvm_binary_operator(Instruction::BinaryOps binop) {
        switch (binop) {
            case Instruction::Add:  return "CreateAdd";
            case Instruction::FAdd: return "CreateFAdd";
            case Instruction::Sub:  return "CreateSub";
            case Instruction::FSub: return "CreateFSub";
            case Instruction::Mul:  return "CreateMul";
            case Instruction::FMul: return "CreateFMul";
            case Instruction::UDiv: return "CreateUDiv";
            case Instruction::SDiv: return "CreateSDiv";
            case Instruction::FDiv: return "CreateFDiv";
            case Instruction::URem: return "CreateURem";
            case Instruction::SRem: return "CreateSRem";
            case Instruction::FRem: return "CreateFRem";
            case Instruction::Shl:  return "CreateShl";
            case Instruction::LShr: return "CreateLShr";
            case Instruction::AShr: return "CreateAShr";
            case Instruction::And:  return "CreateAnd";
            case Instruction::Or:   return "CreateOr";
            case Instruction::Xor:  return "CreateXor";
            default: throw std::runtime_error(
                "forbidden binary operator opcode: "
                + std::to_string(binop)
            );
        }
        llvm_unreachable("");
    }

    static std::string llvm_unary_operator(Instruction::UnaryOps unop) {
        switch(unop) {
            case Instruction::FNeg: return "CreateFNeg";
            default: throw std::runtime_error(
                "forbidden unary operator opcode: "
                + std::to_string(unop)
            );
        }
        llvm_unreachable("");
    }

    static std::string llvm_icmp(CmpInst::Predicate predicate) {
        switch (predicate) {
            case CmpInst::ICMP_EQ:  return "CreateICmpEQ";
            case CmpInst::ICMP_NE:  return "CreateICmpNE";
            case CmpInst::ICMP_UGT: return "CreateICmpUGT";
            case CmpInst::ICMP_UGE: return "CreateICmpUGE";
            case CmpInst::ICMP_ULT: return "CreateICmpULT";
            case CmpInst::ICMP_ULE: return "CreateICmpULE";
            case CmpInst::ICMP_SGT: return "CreateICmpSGT";
            case CmpInst::ICMP_SGE: return "CreateICmpSGE";
            case CmpInst::ICMP_SLT: return "CreateICmpSLT";
            case CmpInst::ICMP_SLE: return "CreateICmpSLE";
            default: throw std::runtime_error(
                "forbidden icmp predicate: "
                + std::to_string(predicate)
            );
        }
        llvm_unreachable("");
    }

    static std::string llvm_fcmp(CmpInst::Predicate predicate) {
        switch (predicate) {
            case CmpInst::FCMP_FALSE: return "CreateFCmpFalse";
            case CmpInst::FCMP_TRUE:  return "CreateFCmpTrue";
            case CmpInst::FCMP_OEQ:   return "CreateFCmpOEQ";
            case CmpInst::FCMP_OGT:   return "CreateFCmpOGT";
            case CmpInst::FCMP_OGE:   return "CreateFCmpOGE";
            case CmpInst::FCMP_OLT:   return "CreateFCmpOLT";
            case CmpInst::FCMP_OLE:   return "CreateFCmpOLE";
            case CmpInst::FCMP_ONE:   return "CreateFCmpONE";
            case CmpInst::FCMP_ORD:   return "CreateFCmpORD";
            case CmpInst::FCMP_UNO:   return "CreateFCmpUNO";
            case CmpInst::FCMP_UEQ:   return "CreateFCmpUEQ";
            case CmpInst::FCMP_UGT:   return "CreateFCmpUGT";
            case CmpInst::FCMP_UGE:   return "CreateFCmpUGE";
            case CmpInst::FCMP_ULT:   return "CreateFCmpULT";
            case CmpInst::FCMP_ULE:   return "CreateFCmpULE";
            case CmpInst::FCMP_UNE:   return "CreateFCmpUNE";
            default: throw std::runtime_error(
                "forbidden fcmp predicate "
                + std::to_string(predicate)
            );
        }
        llvm_unreachable("");
    }

    static std::string llvm_cast(Instruction::CastOps cast) {
        switch (cast) {
            case Instruction::Trunc:        return "CreateTrunc";
            case Instruction::ZExt:         return "CreateZExt";
            case Instruction::SExt:         return "CreateSExt";
            case Instruction::FPTrunc:      return "CreateFPTrunc";
            case Instruction::FPExt:        return "CreateFPExt";
            case Instruction::UIToFP:       return "CreateUIToFP";
            case Instruction::SIToFP:       return "CreateSIToFP";
            case Instruction::FPToUI:       return "CreateFPToUI";
            case Instruction::FPToSI:       return "CreateFPToSI";
            case Instruction::PtrToInt:     return "CreatePtrToInt";
            case Instruction::IntToPtr:     return "CreateIntToPtr";
            case Instruction::BitCast:      return "CreateBitCast";
            case Instruction::AddrSpaceCast:return "CreateAddrSpaceCast";
            default: throw std::runtime_error(
                "forbidden cast opcode "
                + std::to_string(cast)
            );
        }
        llvm_unreachable("");
    }

    std::string llvm_get_instr(const Instruction &I)
    {
        std::string sb = "\t\t";
        if (!I.getType()->isVoidTy())
            sb += "Value *" + llvm_get_val_name(I) + " = ";

        sb += "builder.";

        const Function &F = *I.getParent()->getParent();

        sb += TypeSwitch<const Instruction *, std::string>(&I)
            .Case<ReturnInst>([&](const ReturnInst *R) {
                if (auto ret = R->getReturnValue(); ret)
                    return "CreateRet(" + llvm_get_value(*ret, F) + ");\n";
                return std::string("CreateRetVoid();\n");
            })
            .Case<CallInst>([&](const CallInst *C) {
                std::string args = "{";
                if (C->arg_size() > 0) {
                    args += llvm_get_value(*C->getArgOperand(0), F);
                    for (int i = 1; i < C->arg_size(); i++) {
                        args += ", " + llvm_get_value(*C->getArgOperand(i), F);
                    }
                }
                args += "}";
                return "CreateCall("
                    + llvm_get_fn_func(*C->getCalledFunction())
                    + ", " + args + ");\n";
            })
            .Case<UncondBrInst>([&](const UncondBrInst *B){
                return "CreateBr("
                    + llvm_get_value(*B->getSuccessor(0), F) + ");\n";
            })
            .Case<CondBrInst>([&](const CondBrInst *B){
                return "CreateCondBr("
                    + llvm_get_value(*B->getCondition(), F) + ", "
                    + llvm_get_value(*B->getSuccessor(0), F) + ", "
                    + llvm_get_value(*B->getSuccessor(1), F) + ");\n";
            })
            .Case<AllocaInst>([&](const AllocaInst *A){
                return "CreateAlloca("
                    + llvm_get_type(A->getAllocatedType()) + ", "
                    + llvm_get_value(*A->getArraySize(), F) + ");\n"
                    + "\t\tcast<AllocaInst>(" + llvm_get_val_name(*A)
                    + ")->setAlignment(Align("
                    + std::to_string(A->getAlign().value()) + "));\n";
            })
            .Case<LoadInst>([&](const LoadInst *L){
                return "CreateAlignedLoad("
                    + llvm_get_type(L->getType()) + ", "
                    + llvm_get_value(*L->getPointerOperand(), F) + ", Align("
                    + std::to_string(L->getAlign().value()) + "), "
                    + (L->isVolatile() ? "true" : "false") + ");\n";
            })
            .Case<StoreInst>([&](const StoreInst *S){
                return "CreateAlignedStore("
                    + llvm_get_value(*S->getValueOperand(), F) + ", "
                    + llvm_get_value(*S->getPointerOperand(), F) + ", Align("
                    + std::to_string(S->getAlign().value()) + "), "
                    + (S->isVolatile() ? "true" : "false") + ");\n";
            })
            .Case<SelectInst>([&](const SelectInst *S){
                return "CreateSelect("
                    + llvm_get_value(*S->getCondition(), F) + ", "
                    + llvm_get_value(*S->getTrueValue(), F) + ", "
                    + llvm_get_value(*S->getFalseValue(), F) + ");\n";
            })
            .Case<InsertElementInst>([&](const InsertElementInst *I) {
                return "CreateInsertElement("
                    + llvm_get_value(*I->getOperand(0), F) + ", "
                    + llvm_get_value(*I->getOperand(1), F) + ", "
                    + llvm_get_value(*I->getOperand(2), F) + ");\n";
            })
            .Case<ShuffleVectorInst>([&](const ShuffleVectorInst *I) {
                std::string mask = "{";
                auto shuffle_mask = I->getShuffleMask();
                if (shuffle_mask.size() > 0) {
                    mask += std::to_string(shuffle_mask[0]);
                    for (int i = 1; i < shuffle_mask.size(); i++) {
                        mask += ", " + std::to_string(shuffle_mask[i]);
                    }
                }
                mask += "}";
                return "CreateShuffleVector("
                    + llvm_get_value(*I->getOperand(0), F) + ", "
                    + llvm_get_value(*I->getOperand(1), F) + ", "
                    + mask + ");\n";
            })
            .Case<ExtractElementInst>([&](const ExtractElementInst *I) {
                return "CreateExtractElement("
                    + llvm_get_value(*I->getVectorOperand(), F) + ", "
                    + llvm_get_value(*I->getIndexOperand(), F) + ");\n";
            })
            .Case<GetElementPtrInst>([&](const GetElementPtrInst *G){
                std::string indices = "{";
                if (G->getNumOperands() > 1) {
                    indices += llvm_get_value(*G->getOperand(1), F);
                    for (unsigned i = 2; i < G->getNumOperands(); i++) {
                        indices += ", ";
                        indices += llvm_get_value(*G->getOperand(i), F);
                    }
                }
                indices += "}";
                return "CreateGEP("
                    + llvm_get_type(G->getSourceElementType()) + ", "
                    + llvm_get_value(*G->getPointerOperand(), F) + ", "
                    + indices + ");\n";
            })
            .Case<PHINode>([&](const PHINode *PHI){
                return "CreatePHI("
                    + llvm_get_type(PHI->getType()) + ", "
                    + std::to_string(PHI->getNumIncomingValues()) + ");\n";
            })
            .Case<CastInst>([&](const CastInst *C) {
                return llvm_cast(C->getOpcode()) + "("
                    + llvm_get_value(*C->getOperand(0), F) + ", "
                    + llvm_get_type(C->getType()) + ");\n";
            })
            .Case<ICmpInst>([&](const ICmpInst *C) {
                return llvm_icmp(C->getPredicate()) + "("
                    + llvm_get_value(*C->getOperand(0), F) + ", "
                    + llvm_get_value(*C->getOperand(1), F) + ");\n";
            })
            .Case<FCmpInst>([&](const FCmpInst *C) {
                return llvm_fcmp(C->getPredicate()) + "("
                    + llvm_get_value(*C->getOperand(0), F) + ", "
                    + llvm_get_value(*C->getOperand(1), F) + ");\n";
            })
            .Case<BinaryOperator>([&](const BinaryOperator *B) {
                return llvm_binary_operator(B->getOpcode()) + "("
                    + llvm_get_value(*B->getOperand(0), F) + ", "
                    + llvm_get_value(*B->getOperand(1), F) + ");\n";
            })
            .Case<UnaryOperator>([&](const UnaryOperator *U){
                return llvm_unary_operator(U->getOpcode()) + "("
                    + llvm_get_value(*U->getOperand(0), F) + ");\n";
            })
            .Default([&](const Instruction *I) {
                throw std::runtime_error(
                    "forbidden instruction opcode"
                    + std::to_string(I->getOpcode())
                    + " in function " 
                    + F.getNameOrAsOperand());
                return "";
            });
        return sb;
    }
}; // namespace cpp_builder