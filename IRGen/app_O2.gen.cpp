////////////////////////////////////////////////////////////////////////
// HEADERS
////////////////////////////////////////////////////////////////////////

#include "../App/sim.h"

#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/ExecutionEngine/GenericValue.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Alignment.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

////////////////////////////////////////////////////////////////////////
// MAIN BEGINNING
////////////////////////////////////////////////////////////////////////

int main() {
	LLVMContext context;
 	Module *module = new Module("app.c", context);
	IRBuilder<> builder(context);

////////////////////////////////////////////////////////////////////////
// EXTERNAL FUNCTIONS DECLARATIONS
////////////////////////////////////////////////////////////////////////

	Function *llvm_lifetime_start_p0Func = Intrinsic::getOrInsertDeclaration(module, 221, Type::getVoidTy(context), {PointerType::get(context, 0)});
	Function *llvm_fmuladd_f32Func = Intrinsic::getOrInsertDeclaration(module, 184, Type::getFloatTy(context), {Type::getFloatTy(context), Type::getFloatTy(context), Type::getFloatTy(context)});
	Function *llvm_fmuladd_f64Func = Intrinsic::getOrInsertDeclaration(module, 184, Type::getDoubleTy(context), {Type::getDoubleTy(context), Type::getDoubleTy(context), Type::getDoubleTy(context)});
	FunctionCallee simCalcSinusFunc = module->getOrInsertFunction("simCalcSinus", FunctionType::get(Type::getFloatTy(context), {Type::getFloatTy(context)}, false));
	FunctionCallee simPutPixelFunc = module->getOrInsertFunction("simPutPixel", FunctionType::get(Type::getVoidTy(context), {IntegerType::get(context, 32), IntegerType::get(context, 32), IntegerType::get(context, 32)}, false));
	FunctionCallee simFlushFunc = module->getOrInsertFunction("simFlush", FunctionType::get(Type::getVoidTy(context), {}, true));
	FunctionCallee simHasClickFunc = module->getOrInsertFunction("simHasClick", FunctionType::get(IntegerType::get(context, 32), {}, true));
	FunctionCallee simGetClickFunc = module->getOrInsertFunction("simGetClick", FunctionType::get(IntegerType::get(context, 32), {}, true));
	FunctionCallee simHasScrollFunc = module->getOrInsertFunction("simHasScroll", FunctionType::get(IntegerType::get(context, 32), {}, true));
	FunctionCallee simGetScrollFunc = module->getOrInsertFunction("simGetScroll", FunctionType::get(IntegerType::get(context, 32), {}, true));
	Function *llvm_memset_p0_i64Func = Intrinsic::getOrInsertDeclaration(module, 260, Type::getVoidTy(context), {PointerType::get(context, 0), IntegerType::get(context, 8), IntegerType::get(context, 64), IntegerType::get(context, 1)});
	Function *llvm_fmuladd_v4f32Func = Intrinsic::getOrInsertDeclaration(module, 184, FixedVectorType::get(Type::getFloatTy(context), 4), {FixedVectorType::get(Type::getFloatTy(context), 4), FixedVectorType::get(Type::getFloatTy(context), 4), FixedVectorType::get(Type::getFloatTy(context), 4)});
	Function *llvm_fmuladd_v4f64Func = Intrinsic::getOrInsertDeclaration(module, 184, FixedVectorType::get(Type::getDoubleTy(context), 4), {FixedVectorType::get(Type::getDoubleTy(context), 4), FixedVectorType::get(Type::getDoubleTy(context), 4), FixedVectorType::get(Type::getDoubleTy(context), 4)});
	Function *llvm_fmuladd_v2f32Func = Intrinsic::getOrInsertDeclaration(module, 184, FixedVectorType::get(Type::getFloatTy(context), 2), {FixedVectorType::get(Type::getFloatTy(context), 2), FixedVectorType::get(Type::getFloatTy(context), 2), FixedVectorType::get(Type::getFloatTy(context), 2)});

////////////////////////////////////////////////////////////////////////
// INTERNAL FUNCTIONS
////////////////////////////////////////////////////////////////////////

	Function *initGridsFunc = Function::Create(FunctionType::get(Type::getVoidTy(context), {PointerType::get(context, 0)}, false), Function::ExternalLinkage, "initGrids", module);
	{
		BasicBlock *BB1 = BasicBlock::Create(context, "", initGridsFunc);


		builder.SetInsertPoint(BB1);

		builder.CreateCall(llvm_memset_p0_i64Func, {initGridsFunc->getArg(0), builder.getInt8(0ULL), builder.getInt64(2097152ULL), builder.getInt1(0ULL)});
		builder.CreateRetVoid();
	}
	Function *emulationStepFunc = Function::Create(FunctionType::get(Type::getVoidTy(context), {PointerType::get(context, 0), PointerType::get(context, 0), Type::getFloatTy(context), Type::getFloatTy(context), IntegerType::get(context, 32), IntegerType::get(context, 32)}, false), Function::ExternalLinkage, "emulationStep", module);
	{
		BasicBlock *BB6 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB14 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB20 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB22 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB50 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB62 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB64 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB67 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB111 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB114 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB145 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB188 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB194 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB196 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB199 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB357 = BasicBlock::Create(context, "", emulationStepFunc);
		BasicBlock *BB428 = BasicBlock::Create(context, "", emulationStepFunc);


		builder.SetInsertPoint(BB6);

		Value *val7 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(1), {builder.getInt64(2052ULL)});
		Value *val8 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(1), {builder.getInt64(1046524ULL)});
		Value *val9 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(4ULL)});
		Value *val10 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(1048572ULL)});
		Value *val11 = builder.CreateICmpULT(val7, val10);
		Value *val12 = builder.CreateICmpULT(val9, val8);
		Value *val13 = builder.CreateAnd(val11, val12);
		builder.CreateBr(BB14);

		builder.SetInsertPoint(BB14);

		Value *val15 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		Value *val16 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val15});
		Value *val17 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(1), {val15});
		Value *val18 = builder.CreateGEP(IntegerType::get(context, 8), val16, {builder.getInt64(2048ULL)});
		Value *val19 = builder.CreateGEP(IntegerType::get(context, 8), val16, {builder.getInt64(18446744073709549568ULL)});
		builder.CreateCondBr(val13, BB20, BB22);

		builder.SetInsertPoint(BB20);

		Value *val21 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		builder.CreateBr(BB114);

		builder.SetInsertPoint(BB22);

		Value *val23 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		Value *val24 = builder.CreateOr(val23, builder.getInt64(1ULL));
		Value *val25 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val16, {val24});
		Value *val26 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val25, Align(4), false);
		Value *val27 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val17, {val24});
		Value *val28 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val27, Align(4), false);
		Value *val29 = builder.CreateFNeg(val28);
		Value *val30 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val26, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), 2.000000), val29});
		Value *val31 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val18, {val24});
		Value *val32 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val31, Align(4), false);
		Value *val33 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val19, {val24});
		Value *val34 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val33, Align(4), false);
		Value *val35 = builder.CreateFAdd(val32, val34);
		Value *val36 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val16, {val23});
		Value *val37 = builder.CreateGEP(IntegerType::get(context, 8), val36, {builder.getInt64(8ULL)});
		Value *val38 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val37, Align(4), false);
		Value *val39 = builder.CreateFAdd(val35, val38);
		Value *val40 = builder.CreateGEP(IntegerType::get(context, 8), val25, {builder.getInt64(18446744073709551612ULL)});
		Value *val41 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val40, Align(4), false);
		Value *val42 = builder.CreateFAdd(val39, val41);
		Value *val43 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val26, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), -4.000000), val42});
		Value *val44 = builder.CreateFPExt(val30, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val45 = builder.CreateFPExt(val43, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val46 = builder.CreateCall(llvm_fmuladd_v4f64Func, {val45, ConstantFP::get(FixedVectorType::get(Type::getDoubleTy(context), 4), 0.100000), val44});
		Value *val47 = builder.CreateFPTrunc(val46, FixedVectorType::get(Type::getFloatTy(context), 4));
		builder.CreateAlignedStore(val47, val27, Align(4), false);
		Value *val48 = builder.CreateAdd(val23, builder.getInt64(4ULL));
		Value *val49 = builder.CreateICmpEQ(val48, builder.getInt64(508ULL));
		builder.CreateCondBr(val49, BB20, BB22);

		builder.SetInsertPoint(BB50);

		Value *val51 = builder.CreateFAdd(emulationStepFunc->getArg(2), ConstantFP::get(Type::getFloatTy(context), 1.000000));
		Value *val52 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(2048ULL)});
		Value *val53 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(1046528ULL)});
		Value *val54 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(1), {builder.getInt64(1046528ULL)});
		Value *val55 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(1044480ULL)});
		Value *val56 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(1), {builder.getInt64(4ULL)});
		Value *val57 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(1), {builder.getInt64(1048572ULL)});
		Value *val58 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(1048576ULL)});
		Value *val59 = builder.CreateICmpULT(val56, val58);
		Value *val60 = builder.CreateICmpULT(emulationStepFunc->getArg(0), val57);
		Value *val61 = builder.CreateAnd(val59, val60);
		builder.CreateCondBr(val61, BB62, BB64);

		builder.SetInsertPoint(BB62);

		Value *val63 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		builder.CreateBr(BB145);

		builder.SetInsertPoint(BB64);

		Value *val65 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val51, builder.getInt64(0ULL));
		Value *val66 = builder.CreateShuffleVector(val65, PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), {0, 0, 0, 0});
		builder.CreateBr(BB67);

		builder.SetInsertPoint(BB67);

		Value *val68 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		Value *val69 = builder.CreateOr(val68, builder.getInt64(1ULL));
		Value *val70 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), emulationStepFunc->getArg(0), {val69});
		Value *val71 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val70, Align(4), false);
		Value *val72 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), emulationStepFunc->getArg(1), {val69});
		Value *val73 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val72, Align(4), false);
		Value *val74 = builder.CreateFNeg(val73);
		Value *val75 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val71, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), 2.000000), val74});
		Value *val76 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val52, {val69});
		Value *val77 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val76, Align(4), false);
		Value *val78 = builder.CreateOr(val68, builder.getInt64(2ULL));
		Value *val79 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), emulationStepFunc->getArg(0), {val78});
		Value *val80 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val79, Align(4), false);
		Value *val81 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val66, val77, val80});
		Value *val82 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), emulationStepFunc->getArg(0), {val68});
		Value *val83 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val82, Align(4), false);
		Value *val84 = builder.CreateFAdd(val81, val83);
		Value *val85 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val71, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), -4.000000), val84});
		Value *val86 = builder.CreateFPExt(val75, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val87 = builder.CreateFPExt(val85, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val88 = builder.CreateCall(llvm_fmuladd_v4f64Func, {val87, ConstantFP::get(FixedVectorType::get(Type::getDoubleTy(context), 4), 0.100000), val86});
		Value *val89 = builder.CreateFPTrunc(val88, FixedVectorType::get(Type::getFloatTy(context), 4));
		builder.CreateAlignedStore(val89, val72, Align(4), false);
		Value *val90 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val53, {val69});
		Value *val91 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val90, Align(4), false);
		Value *val92 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val54, {val69});
		Value *val93 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val92, Align(4), false);
		Value *val94 = builder.CreateFNeg(val93);
		Value *val95 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val91, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), 2.000000), val94});
		Value *val96 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val55, {val69});
		Value *val97 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val96, Align(4), false);
		Value *val98 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val53, {val78});
		Value *val99 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val98, Align(4), false);
		Value *val100 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val66, val97, val99});
		Value *val101 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val53, {val68});
		Value *val102 = builder.CreateAlignedLoad(FixedVectorType::get(Type::getFloatTy(context), 4), val101, Align(4), false);
		Value *val103 = builder.CreateFAdd(val100, val102);
		Value *val104 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val91, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), -4.000000), val103});
		Value *val105 = builder.CreateFPExt(val95, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val106 = builder.CreateFPExt(val104, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val107 = builder.CreateCall(llvm_fmuladd_v4f64Func, {val106, ConstantFP::get(FixedVectorType::get(Type::getDoubleTy(context), 4), 0.100000), val105});
		Value *val108 = builder.CreateFPTrunc(val107, FixedVectorType::get(Type::getFloatTy(context), 4));
		builder.CreateAlignedStore(val108, val92, Align(4), false);
		Value *val109 = builder.CreateAdd(val68, builder.getInt64(4ULL));
		Value *val110 = builder.CreateICmpEQ(val109, builder.getInt64(508ULL));
		builder.CreateCondBr(val110, BB62, BB67);

		builder.SetInsertPoint(BB111);

		Value *val112 = builder.CreateAdd(val15, builder.getInt64(1ULL));
		Value *val113 = builder.CreateICmpEQ(val112, builder.getInt64(511ULL));
		builder.CreateCondBr(val113, BB50, BB14);

		builder.SetInsertPoint(BB114);

		Value *val115 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		Value *val116 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val16, {val115});
		Value *val117 = builder.CreateAlignedLoad(Type::getFloatTy(context), val116, Align(4), false);
		Value *val118 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val17, {val115});
		Value *val119 = builder.CreateAlignedLoad(Type::getFloatTy(context), val118, Align(4), false);
		Value *val120 = builder.CreateFNeg(val119);
		Value *val121 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val18, {val115});
		Value *val122 = builder.CreateAlignedLoad(Type::getFloatTy(context), val121, Align(4), false);
		Value *val123 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val19, {val115});
		Value *val124 = builder.CreateAlignedLoad(Type::getFloatTy(context), val123, Align(4), false);
		Value *val125 = builder.CreateFAdd(val122, val124);
		Value *val126 = builder.CreateAdd(val115, builder.getInt64(1ULL));
		Value *val127 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val16, {val126});
		Value *val128 = builder.CreateAlignedLoad(Type::getFloatTy(context), val127, Align(4), false);
		Value *val129 = builder.CreateFAdd(val125, val128);
		Value *val130 = builder.CreateGEP(IntegerType::get(context, 8), val116, {builder.getInt64(18446744073709551612ULL)});
		Value *val131 = builder.CreateAlignedLoad(Type::getFloatTy(context), val130, Align(4), false);
		Value *val132 = builder.CreateFAdd(val129, val131);
		Value *val133 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 2)), val117, builder.getInt64(0ULL));
		Value *val134 = builder.CreateShuffleVector(val133, PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 2)), {0, 0});
		Value *val135 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 2)), val120, builder.getInt64(0ULL));
		Value *val136 = builder.CreateInsertElement(val135, val132, builder.getInt64(1ULL));
		Value *val137 = builder.CreateCall(llvm_fmuladd_v2f32Func, {val134, ConstantVector::get({ConstantFP::get(Type::getFloatTy(context), 2.000000), ConstantFP::get(Type::getFloatTy(context), -4.000000)}), val136});
		Value *val138 = builder.CreateExtractElement(val137, builder.getInt64(0ULL));
		Value *val139 = builder.CreateFPExt(val138, Type::getDoubleTy(context));
		Value *val140 = builder.CreateExtractElement(val137, builder.getInt64(1ULL));
		Value *val141 = builder.CreateFPExt(val140, Type::getDoubleTy(context));
		Value *val142 = builder.CreateCall(llvm_fmuladd_f64Func, {val141, ConstantFP::get(Type::getDoubleTy(context), 0.100000), val139});
		Value *val143 = builder.CreateFPTrunc(val142, Type::getFloatTy(context));
		builder.CreateAlignedStore(val143, val118, Align(4), false);
		Value *val144 = builder.CreateICmpEQ(val126, builder.getInt64(511ULL));
		builder.CreateCondBr(val144, BB111, BB114);

		builder.SetInsertPoint(BB145);

		Value *val146 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		Value *val147 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), emulationStepFunc->getArg(0), {val146});
		Value *val148 = builder.CreateAlignedLoad(Type::getFloatTy(context), val147, Align(4), false);
		Value *val149 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), emulationStepFunc->getArg(1), {val146});
		Value *val150 = builder.CreateAlignedLoad(Type::getFloatTy(context), val149, Align(4), false);
		Value *val151 = builder.CreateFNeg(val150);
		Value *val152 = builder.CreateCall(llvm_fmuladd_f32Func, {val148, ConstantFP::get(Type::getFloatTy(context), 2.000000), val151});
		Value *val153 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val52, {val146});
		Value *val154 = builder.CreateAlignedLoad(Type::getFloatTy(context), val153, Align(4), false);
		Value *val155 = builder.CreateAdd(val146, builder.getInt64(1ULL));
		Value *val156 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), emulationStepFunc->getArg(0), {val155});
		Value *val157 = builder.CreateAlignedLoad(Type::getFloatTy(context), val156, Align(4), false);
		Value *val158 = builder.CreateCall(llvm_fmuladd_f32Func, {val51, val154, val157});
		Value *val159 = builder.CreateAdd(val146, builder.getInt64(18446744073709551615ULL));
		Value *val160 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), emulationStepFunc->getArg(0), {val159});
		Value *val161 = builder.CreateAlignedLoad(Type::getFloatTy(context), val160, Align(4), false);
		Value *val162 = builder.CreateFAdd(val158, val161);
		Value *val163 = builder.CreateCall(llvm_fmuladd_f32Func, {val148, ConstantFP::get(Type::getFloatTy(context), -4.000000), val162});
		Value *val164 = builder.CreateFPExt(val152, Type::getDoubleTy(context));
		Value *val165 = builder.CreateFPExt(val163, Type::getDoubleTy(context));
		Value *val166 = builder.CreateCall(llvm_fmuladd_f64Func, {val165, ConstantFP::get(Type::getDoubleTy(context), 0.100000), val164});
		Value *val167 = builder.CreateFPTrunc(val166, Type::getFloatTy(context));
		builder.CreateAlignedStore(val167, val149, Align(4), false);
		Value *val168 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val53, {val146});
		Value *val169 = builder.CreateAlignedLoad(Type::getFloatTy(context), val168, Align(4), false);
		Value *val170 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val54, {val146});
		Value *val171 = builder.CreateAlignedLoad(Type::getFloatTy(context), val170, Align(4), false);
		Value *val172 = builder.CreateFNeg(val171);
		Value *val173 = builder.CreateCall(llvm_fmuladd_f32Func, {val169, ConstantFP::get(Type::getFloatTy(context), 2.000000), val172});
		Value *val174 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val55, {val146});
		Value *val175 = builder.CreateAlignedLoad(Type::getFloatTy(context), val174, Align(4), false);
		Value *val176 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val53, {val155});
		Value *val177 = builder.CreateAlignedLoad(Type::getFloatTy(context), val176, Align(4), false);
		Value *val178 = builder.CreateCall(llvm_fmuladd_f32Func, {val51, val175, val177});
		Value *val179 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val53, {val159});
		Value *val180 = builder.CreateAlignedLoad(Type::getFloatTy(context), val179, Align(4), false);
		Value *val181 = builder.CreateFAdd(val178, val180);
		Value *val182 = builder.CreateCall(llvm_fmuladd_f32Func, {val169, ConstantFP::get(Type::getFloatTy(context), -4.000000), val181});
		Value *val183 = builder.CreateFPExt(val173, Type::getDoubleTy(context));
		Value *val184 = builder.CreateFPExt(val182, Type::getDoubleTy(context));
		Value *val185 = builder.CreateCall(llvm_fmuladd_f64Func, {val184, ConstantFP::get(Type::getDoubleTy(context), 0.100000), val183});
		Value *val186 = builder.CreateFPTrunc(val185, Type::getFloatTy(context));
		builder.CreateAlignedStore(val186, val170, Align(4), false);
		Value *val187 = builder.CreateICmpEQ(val155, builder.getInt64(511ULL));
		builder.CreateCondBr(val187, BB188, BB145);

		builder.SetInsertPoint(BB188);

		Value *val189 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(1), {builder.getInt64(2048ULL)});
		Value *val190 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(1048576ULL)});
		Value *val191 = builder.CreateICmpULT(val189, val190);
		Value *val192 = builder.CreateICmpULT(emulationStepFunc->getArg(0), val54);
		Value *val193 = builder.CreateAnd(val191, val192);
		builder.CreateCondBr(val193, BB194, BB196);

		builder.SetInsertPoint(BB194);

		Value *val195 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		builder.CreateBr(BB428);

		builder.SetInsertPoint(BB196);

		Value *val197 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val51, builder.getInt64(0ULL));
		Value *val198 = builder.CreateShuffleVector(val197, PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), {0, 0, 0, 0});
		builder.CreateBr(BB199);

		builder.SetInsertPoint(BB199);

		Value *val200 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		Value *val201 = builder.CreateOr(val200, builder.getInt64(1ULL));
		Value *val202 = builder.CreateOr(val200, builder.getInt64(2ULL));
		Value *val203 = builder.CreateOr(val200, builder.getInt64(3ULL));
		Value *val204 = builder.CreateAdd(val200, builder.getInt64(4ULL));
		Value *val205 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val201});
		Value *val206 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val202});
		Value *val207 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val203});
		Value *val208 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val204});
		Value *val209 = builder.CreateAlignedLoad(Type::getFloatTy(context), val205, Align(4), false);
		Value *val210 = builder.CreateAlignedLoad(Type::getFloatTy(context), val206, Align(4), false);
		Value *val211 = builder.CreateAlignedLoad(Type::getFloatTy(context), val207, Align(4), false);
		Value *val212 = builder.CreateAlignedLoad(Type::getFloatTy(context), val208, Align(4), false);
		Value *val213 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val209, builder.getInt64(0ULL));
		Value *val214 = builder.CreateInsertElement(val213, val210, builder.getInt64(1ULL));
		Value *val215 = builder.CreateInsertElement(val214, val211, builder.getInt64(2ULL));
		Value *val216 = builder.CreateInsertElement(val215, val212, builder.getInt64(3ULL));
		Value *val217 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(1), {val201});
		Value *val218 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(1), {val202});
		Value *val219 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(1), {val203});
		Value *val220 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(1), {val204});
		Value *val221 = builder.CreateAlignedLoad(Type::getFloatTy(context), val217, Align(4), false);
		Value *val222 = builder.CreateAlignedLoad(Type::getFloatTy(context), val218, Align(4), false);
		Value *val223 = builder.CreateAlignedLoad(Type::getFloatTy(context), val219, Align(4), false);
		Value *val224 = builder.CreateAlignedLoad(Type::getFloatTy(context), val220, Align(4), false);
		Value *val225 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val221, builder.getInt64(0ULL));
		Value *val226 = builder.CreateInsertElement(val225, val222, builder.getInt64(1ULL));
		Value *val227 = builder.CreateInsertElement(val226, val223, builder.getInt64(2ULL));
		Value *val228 = builder.CreateInsertElement(val227, val224, builder.getInt64(3ULL));
		Value *val229 = builder.CreateFNeg(val228);
		Value *val230 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val216, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), 2.000000), val229});
		Value *val231 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val200});
		Value *val232 = builder.CreateGEP(IntegerType::get(context, 8), val231, {builder.getInt64(4096ULL)});
		Value *val233 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val200});
		Value *val234 = builder.CreateGEP(IntegerType::get(context, 8), val233, {builder.getInt64(6144ULL)});
		Value *val235 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val200});
		Value *val236 = builder.CreateGEP(IntegerType::get(context, 8), val235, {builder.getInt64(8192ULL)});
		Value *val237 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val200});
		Value *val238 = builder.CreateGEP(IntegerType::get(context, 8), val237, {builder.getInt64(10240ULL)});
		Value *val239 = builder.CreateAlignedLoad(Type::getFloatTy(context), val232, Align(4), false);
		Value *val240 = builder.CreateAlignedLoad(Type::getFloatTy(context), val234, Align(4), false);
		Value *val241 = builder.CreateAlignedLoad(Type::getFloatTy(context), val236, Align(4), false);
		Value *val242 = builder.CreateAlignedLoad(Type::getFloatTy(context), val238, Align(4), false);
		Value *val243 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val239, builder.getInt64(0ULL));
		Value *val244 = builder.CreateInsertElement(val243, val240, builder.getInt64(1ULL));
		Value *val245 = builder.CreateInsertElement(val244, val241, builder.getInt64(2ULL));
		Value *val246 = builder.CreateInsertElement(val245, val242, builder.getInt64(3ULL));
		Value *val247 = builder.CreateGEP(IntegerType::get(context, 8), val205, {builder.getInt64(18446744073709549568ULL)});
		Value *val248 = builder.CreateGEP(IntegerType::get(context, 8), val206, {builder.getInt64(18446744073709549568ULL)});
		Value *val249 = builder.CreateGEP(IntegerType::get(context, 8), val207, {builder.getInt64(18446744073709549568ULL)});
		Value *val250 = builder.CreateGEP(IntegerType::get(context, 8), val208, {builder.getInt64(18446744073709549568ULL)});
		Value *val251 = builder.CreateAlignedLoad(Type::getFloatTy(context), val247, Align(4), false);
		Value *val252 = builder.CreateAlignedLoad(Type::getFloatTy(context), val248, Align(4), false);
		Value *val253 = builder.CreateAlignedLoad(Type::getFloatTy(context), val249, Align(4), false);
		Value *val254 = builder.CreateAlignedLoad(Type::getFloatTy(context), val250, Align(4), false);
		Value *val255 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val251, builder.getInt64(0ULL));
		Value *val256 = builder.CreateInsertElement(val255, val252, builder.getInt64(1ULL));
		Value *val257 = builder.CreateInsertElement(val256, val253, builder.getInt64(2ULL));
		Value *val258 = builder.CreateInsertElement(val257, val254, builder.getInt64(3ULL));
		Value *val259 = builder.CreateFAdd(val246, val258);
		Value *val260 = builder.CreateGEP(IntegerType::get(context, 8), val205, {builder.getInt64(4ULL)});
		Value *val261 = builder.CreateGEP(IntegerType::get(context, 8), val206, {builder.getInt64(4ULL)});
		Value *val262 = builder.CreateGEP(IntegerType::get(context, 8), val207, {builder.getInt64(4ULL)});
		Value *val263 = builder.CreateGEP(IntegerType::get(context, 8), val208, {builder.getInt64(4ULL)});
		Value *val264 = builder.CreateAlignedLoad(Type::getFloatTy(context), val260, Align(4), false);
		Value *val265 = builder.CreateAlignedLoad(Type::getFloatTy(context), val261, Align(4), false);
		Value *val266 = builder.CreateAlignedLoad(Type::getFloatTy(context), val262, Align(4), false);
		Value *val267 = builder.CreateAlignedLoad(Type::getFloatTy(context), val263, Align(4), false);
		Value *val268 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val264, builder.getInt64(0ULL));
		Value *val269 = builder.CreateInsertElement(val268, val265, builder.getInt64(1ULL));
		Value *val270 = builder.CreateInsertElement(val269, val266, builder.getInt64(2ULL));
		Value *val271 = builder.CreateInsertElement(val270, val267, builder.getInt64(3ULL));
		Value *val272 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val198, val271, val259});
		Value *val273 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val216, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), -4.000000), val272});
		Value *val274 = builder.CreateFPExt(val230, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val275 = builder.CreateFPExt(val273, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val276 = builder.CreateCall(llvm_fmuladd_v4f64Func, {val275, ConstantFP::get(FixedVectorType::get(Type::getDoubleTy(context), 4), 0.100000), val274});
		Value *val277 = builder.CreateFPTrunc(val276, FixedVectorType::get(Type::getFloatTy(context), 4));
		Value *val278 = builder.CreateExtractElement(val277, builder.getInt64(0ULL));
		builder.CreateAlignedStore(val278, val217, Align(4), false);
		Value *val279 = builder.CreateExtractElement(val277, builder.getInt64(1ULL));
		builder.CreateAlignedStore(val279, val218, Align(4), false);
		Value *val280 = builder.CreateGEP(IntegerType::get(context, 8), val205, {builder.getInt64(2044ULL)});
		Value *val281 = builder.CreateGEP(IntegerType::get(context, 8), val206, {builder.getInt64(2044ULL)});
		Value *val282 = builder.CreateGEP(IntegerType::get(context, 8), val207, {builder.getInt64(2044ULL)});
		Value *val283 = builder.CreateGEP(IntegerType::get(context, 8), val208, {builder.getInt64(2044ULL)});
		Value *val284 = builder.CreateAlignedLoad(Type::getFloatTy(context), val280, Align(4), false);
		Value *val285 = builder.CreateAlignedLoad(Type::getFloatTy(context), val281, Align(4), false);
		Value *val286 = builder.CreateAlignedLoad(Type::getFloatTy(context), val282, Align(4), false);
		Value *val287 = builder.CreateAlignedLoad(Type::getFloatTy(context), val283, Align(4), false);
		Value *val288 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val284, builder.getInt64(0ULL));
		Value *val289 = builder.CreateInsertElement(val288, val285, builder.getInt64(1ULL));
		Value *val290 = builder.CreateInsertElement(val289, val286, builder.getInt64(2ULL));
		Value *val291 = builder.CreateInsertElement(val290, val287, builder.getInt64(3ULL));
		Value *val292 = builder.CreateGEP(IntegerType::get(context, 8), val217, {builder.getInt64(2044ULL)});
		Value *val293 = builder.CreateGEP(IntegerType::get(context, 8), val218, {builder.getInt64(2044ULL)});
		Value *val294 = builder.CreateGEP(IntegerType::get(context, 8), val219, {builder.getInt64(2044ULL)});
		Value *val295 = builder.CreateGEP(IntegerType::get(context, 8), val220, {builder.getInt64(2044ULL)});
		Value *val296 = builder.CreateAlignedLoad(Type::getFloatTy(context), val292, Align(4), false);
		Value *val297 = builder.CreateAlignedLoad(Type::getFloatTy(context), val293, Align(4), false);
		Value *val298 = builder.CreateAlignedLoad(Type::getFloatTy(context), val294, Align(4), false);
		Value *val299 = builder.CreateAlignedLoad(Type::getFloatTy(context), val295, Align(4), false);
		Value *val300 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val296, builder.getInt64(0ULL));
		Value *val301 = builder.CreateInsertElement(val300, val297, builder.getInt64(1ULL));
		Value *val302 = builder.CreateInsertElement(val301, val298, builder.getInt64(2ULL));
		Value *val303 = builder.CreateInsertElement(val302, val299, builder.getInt64(3ULL));
		Value *val304 = builder.CreateFNeg(val303);
		Value *val305 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val291, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), 2.000000), val304});
		Value *val306 = builder.CreateGEP(IntegerType::get(context, 8), val231, {builder.getInt64(6140ULL)});
		Value *val307 = builder.CreateGEP(IntegerType::get(context, 8), val233, {builder.getInt64(8188ULL)});
		Value *val308 = builder.CreateGEP(IntegerType::get(context, 8), val235, {builder.getInt64(10236ULL)});
		Value *val309 = builder.CreateGEP(IntegerType::get(context, 8), val237, {builder.getInt64(12284ULL)});
		Value *val310 = builder.CreateAlignedLoad(Type::getFloatTy(context), val306, Align(4), false);
		Value *val311 = builder.CreateAlignedLoad(Type::getFloatTy(context), val307, Align(4), false);
		Value *val312 = builder.CreateAlignedLoad(Type::getFloatTy(context), val308, Align(4), false);
		Value *val313 = builder.CreateAlignedLoad(Type::getFloatTy(context), val309, Align(4), false);
		Value *val314 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val310, builder.getInt64(0ULL));
		Value *val315 = builder.CreateInsertElement(val314, val311, builder.getInt64(1ULL));
		Value *val316 = builder.CreateInsertElement(val315, val312, builder.getInt64(2ULL));
		Value *val317 = builder.CreateInsertElement(val316, val313, builder.getInt64(3ULL));
		Value *val318 = builder.CreateGEP(IntegerType::get(context, 8), val205, {builder.getInt64(18446744073709551612ULL)});
		Value *val319 = builder.CreateGEP(IntegerType::get(context, 8), val206, {builder.getInt64(18446744073709551612ULL)});
		Value *val320 = builder.CreateGEP(IntegerType::get(context, 8), val207, {builder.getInt64(18446744073709551612ULL)});
		Value *val321 = builder.CreateGEP(IntegerType::get(context, 8), val208, {builder.getInt64(18446744073709551612ULL)});
		Value *val322 = builder.CreateAlignedLoad(Type::getFloatTy(context), val318, Align(4), false);
		Value *val323 = builder.CreateAlignedLoad(Type::getFloatTy(context), val319, Align(4), false);
		Value *val324 = builder.CreateAlignedLoad(Type::getFloatTy(context), val320, Align(4), false);
		Value *val325 = builder.CreateAlignedLoad(Type::getFloatTy(context), val321, Align(4), false);
		Value *val326 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val322, builder.getInt64(0ULL));
		Value *val327 = builder.CreateInsertElement(val326, val323, builder.getInt64(1ULL));
		Value *val328 = builder.CreateInsertElement(val327, val324, builder.getInt64(2ULL));
		Value *val329 = builder.CreateInsertElement(val328, val325, builder.getInt64(3ULL));
		Value *val330 = builder.CreateFAdd(val317, val329);
		Value *val331 = builder.CreateGEP(IntegerType::get(context, 8), val205, {builder.getInt64(2040ULL)});
		Value *val332 = builder.CreateGEP(IntegerType::get(context, 8), val206, {builder.getInt64(2040ULL)});
		Value *val333 = builder.CreateGEP(IntegerType::get(context, 8), val207, {builder.getInt64(2040ULL)});
		Value *val334 = builder.CreateGEP(IntegerType::get(context, 8), val208, {builder.getInt64(2040ULL)});
		Value *val335 = builder.CreateAlignedLoad(Type::getFloatTy(context), val331, Align(4), false);
		Value *val336 = builder.CreateAlignedLoad(Type::getFloatTy(context), val332, Align(4), false);
		Value *val337 = builder.CreateAlignedLoad(Type::getFloatTy(context), val333, Align(4), false);
		Value *val338 = builder.CreateAlignedLoad(Type::getFloatTy(context), val334, Align(4), false);
		Value *val339 = builder.CreateInsertElement(PoisonValue::get(FixedVectorType::get(Type::getFloatTy(context), 4)), val335, builder.getInt64(0ULL));
		Value *val340 = builder.CreateInsertElement(val339, val336, builder.getInt64(1ULL));
		Value *val341 = builder.CreateInsertElement(val340, val337, builder.getInt64(2ULL));
		Value *val342 = builder.CreateInsertElement(val341, val338, builder.getInt64(3ULL));
		Value *val343 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val198, val342, val330});
		Value *val344 = builder.CreateCall(llvm_fmuladd_v4f32Func, {val291, ConstantFP::get(FixedVectorType::get(Type::getFloatTy(context), 4), -4.000000), val343});
		Value *val345 = builder.CreateFPExt(val305, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val346 = builder.CreateFPExt(val344, FixedVectorType::get(Type::getDoubleTy(context), 4));
		Value *val347 = builder.CreateCall(llvm_fmuladd_v4f64Func, {val346, ConstantFP::get(FixedVectorType::get(Type::getDoubleTy(context), 4), 0.100000), val345});
		Value *val348 = builder.CreateFPTrunc(val347, FixedVectorType::get(Type::getFloatTy(context), 4));
		Value *val349 = builder.CreateExtractElement(val348, builder.getInt64(0ULL));
		builder.CreateAlignedStore(val349, val292, Align(4), false);
		Value *val350 = builder.CreateShuffleVector(val347, val276, {1, 6});
		Value *val351 = builder.CreateFPTrunc(val350, FixedVectorType::get(Type::getFloatTy(context), 2));
		builder.CreateAlignedStore(val351, val293, Align(4), false);
		Value *val352 = builder.CreateShuffleVector(val347, val276, {2, 7});
		Value *val353 = builder.CreateFPTrunc(val352, FixedVectorType::get(Type::getFloatTy(context), 2));
		builder.CreateAlignedStore(val353, val294, Align(4), false);
		Value *val354 = builder.CreateExtractElement(val348, builder.getInt64(3ULL));
		builder.CreateAlignedStore(val354, val295, Align(4), false);
		Value *val355 = builder.CreateAdd(val200, builder.getInt64(4ULL));
		Value *val356 = builder.CreateICmpEQ(val355, builder.getInt64(508ULL));
		builder.CreateCondBr(val356, BB194, BB199);

		builder.SetInsertPoint(BB357);

		Value *val358 = builder.CreateAlignedLoad(Type::getFloatTy(context), emulationStepFunc->getArg(0), Align(4), false);
		Value *val359 = builder.CreateAlignedLoad(Type::getFloatTy(context), emulationStepFunc->getArg(1), Align(4), false);
		Value *val360 = builder.CreateFNeg(val359);
		Value *val361 = builder.CreateCall(llvm_fmuladd_f32Func, {val358, ConstantFP::get(Type::getFloatTy(context), 2.000000), val360});
		Value *val362 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(4ULL)});
		Value *val363 = builder.CreateAlignedLoad(Type::getFloatTy(context), val362, Align(4), false);
		Value *val364 = builder.CreateAlignedLoad(Type::getFloatTy(context), val52, Align(4), false);
		Value *val365 = builder.CreateFAdd(val363, val364);
		Value *val366 = builder.CreateFMul(val358, ConstantFP::get(Type::getFloatTy(context), -4.000000));
		Value *val367 = builder.CreateCall(llvm_fmuladd_f32Func, {val51, val365, val366});
		Value *val368 = builder.CreateFPExt(val361, Type::getDoubleTy(context));
		Value *val369 = builder.CreateFPExt(val367, Type::getDoubleTy(context));
		Value *val370 = builder.CreateCall(llvm_fmuladd_f64Func, {val369, ConstantFP::get(Type::getDoubleTy(context), 0.100000), val368});
		Value *val371 = builder.CreateFPTrunc(val370, Type::getFloatTy(context));
		builder.CreateAlignedStore(val371, emulationStepFunc->getArg(1), Align(4), false);
		Value *val372 = builder.CreateAlignedLoad(Type::getFloatTy(context), val53, Align(4), false);
		Value *val373 = builder.CreateAlignedLoad(Type::getFloatTy(context), val54, Align(4), false);
		Value *val374 = builder.CreateFNeg(val373);
		Value *val375 = builder.CreateCall(llvm_fmuladd_f32Func, {val372, ConstantFP::get(Type::getFloatTy(context), 2.000000), val374});
		Value *val376 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(1046532ULL)});
		Value *val377 = builder.CreateAlignedLoad(Type::getFloatTy(context), val376, Align(4), false);
		Value *val378 = builder.CreateAlignedLoad(Type::getFloatTy(context), val55, Align(4), false);
		Value *val379 = builder.CreateFAdd(val377, val378);
		Value *val380 = builder.CreateFMul(val372, ConstantFP::get(Type::getFloatTy(context), -4.000000));
		Value *val381 = builder.CreateCall(llvm_fmuladd_f32Func, {val51, val379, val380});
		Value *val382 = builder.CreateFPExt(val375, Type::getDoubleTy(context));
		Value *val383 = builder.CreateFPExt(val381, Type::getDoubleTy(context));
		Value *val384 = builder.CreateCall(llvm_fmuladd_f64Func, {val383, ConstantFP::get(Type::getDoubleTy(context), 0.100000), val382});
		Value *val385 = builder.CreateFPTrunc(val384, Type::getFloatTy(context));
		builder.CreateAlignedStore(val385, val54, Align(4), false);
		Value *val386 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(2044ULL)});
		Value *val387 = builder.CreateAlignedLoad(Type::getFloatTy(context), val386, Align(4), false);
		Value *val388 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(1), {builder.getInt64(2044ULL)});
		Value *val389 = builder.CreateAlignedLoad(Type::getFloatTy(context), val388, Align(4), false);
		Value *val390 = builder.CreateFNeg(val389);
		Value *val391 = builder.CreateCall(llvm_fmuladd_f32Func, {val387, ConstantFP::get(Type::getFloatTy(context), 2.000000), val390});
		Value *val392 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(2040ULL)});
		Value *val393 = builder.CreateAlignedLoad(Type::getFloatTy(context), val392, Align(4), false);
		Value *val394 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(4092ULL)});
		Value *val395 = builder.CreateAlignedLoad(Type::getFloatTy(context), val394, Align(4), false);
		Value *val396 = builder.CreateFAdd(val393, val395);
		Value *val397 = builder.CreateFMul(val387, ConstantFP::get(Type::getFloatTy(context), -4.000000));
		Value *val398 = builder.CreateCall(llvm_fmuladd_f32Func, {val51, val396, val397});
		Value *val399 = builder.CreateFPExt(val391, Type::getDoubleTy(context));
		Value *val400 = builder.CreateFPExt(val398, Type::getDoubleTy(context));
		Value *val401 = builder.CreateCall(llvm_fmuladd_f64Func, {val400, ConstantFP::get(Type::getDoubleTy(context), 0.100000), val399});
		Value *val402 = builder.CreateFPTrunc(val401, Type::getFloatTy(context));
		builder.CreateAlignedStore(val402, val388, Align(4), false);
		Value *val403 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(1048572ULL)});
		Value *val404 = builder.CreateAlignedLoad(Type::getFloatTy(context), val403, Align(4), false);
		Value *val405 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(1), {builder.getInt64(1048572ULL)});
		Value *val406 = builder.CreateAlignedLoad(Type::getFloatTy(context), val405, Align(4), false);
		Value *val407 = builder.CreateFNeg(val406);
		Value *val408 = builder.CreateCall(llvm_fmuladd_f32Func, {val404, ConstantFP::get(Type::getFloatTy(context), 2.000000), val407});
		Value *val409 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(1048568ULL)});
		Value *val410 = builder.CreateAlignedLoad(Type::getFloatTy(context), val409, Align(4), false);
		Value *val411 = builder.CreateGEP(IntegerType::get(context, 8), emulationStepFunc->getArg(0), {builder.getInt64(1046524ULL)});
		Value *val412 = builder.CreateAlignedLoad(Type::getFloatTy(context), val411, Align(4), false);
		Value *val413 = builder.CreateFAdd(val410, val412);
		Value *val414 = builder.CreateFMul(val404, ConstantFP::get(Type::getFloatTy(context), -4.000000));
		Value *val415 = builder.CreateCall(llvm_fmuladd_f32Func, {val51, val413, val414});
		Value *val416 = builder.CreateFPExt(val408, Type::getDoubleTy(context));
		Value *val417 = builder.CreateFPExt(val415, Type::getDoubleTy(context));
		Value *val418 = builder.CreateCall(llvm_fmuladd_f64Func, {val417, ConstantFP::get(Type::getDoubleTy(context), 0.100000), val416});
		Value *val419 = builder.CreateFPTrunc(val418, Type::getFloatTy(context));
		builder.CreateAlignedStore(val419, val405, Align(4), false);
		Value *val420 = builder.CreateCall(simCalcSinusFunc, {emulationStepFunc->getArg(3)});
		Value *val421 = builder.CreateFMul(val420, ConstantFP::get(Type::getFloatTy(context), 3.000000));
		Value *val422 = builder.CreateSExt(emulationStepFunc->getArg(4), IntegerType::get(context, 64));
		Value *val423 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(1), {val422});
		Value *val424 = builder.CreateSExt(emulationStepFunc->getArg(5), IntegerType::get(context, 64));
		Value *val425 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val423, {val424});
		Value *val426 = builder.CreateAlignedLoad(Type::getFloatTy(context), val425, Align(4), false);
		Value *val427 = builder.CreateFAdd(val426, val421);
		builder.CreateAlignedStore(val427, val425, Align(4), false);
		builder.CreateRetVoid();

		builder.SetInsertPoint(BB428);

		Value *val429 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		Value *val430 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val429});
		Value *val431 = builder.CreateAlignedLoad(Type::getFloatTy(context), val430, Align(4), false);
		Value *val432 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(1), {val429});
		Value *val433 = builder.CreateAlignedLoad(Type::getFloatTy(context), val432, Align(4), false);
		Value *val434 = builder.CreateFNeg(val433);
		Value *val435 = builder.CreateCall(llvm_fmuladd_f32Func, {val431, ConstantFP::get(Type::getFloatTy(context), 2.000000), val434});
		Value *val436 = builder.CreateAdd(val429, builder.getInt64(1ULL));
		Value *val437 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), emulationStepFunc->getArg(0), {val436});
		Value *val438 = builder.CreateAlignedLoad(Type::getFloatTy(context), val437, Align(4), false);
		Value *val439 = builder.CreateGEP(IntegerType::get(context, 8), val430, {builder.getInt64(18446744073709549568ULL)});
		Value *val440 = builder.CreateAlignedLoad(Type::getFloatTy(context), val439, Align(4), false);
		Value *val441 = builder.CreateFAdd(val438, val440);
		Value *val442 = builder.CreateGEP(IntegerType::get(context, 8), val430, {builder.getInt64(4ULL)});
		Value *val443 = builder.CreateAlignedLoad(Type::getFloatTy(context), val442, Align(4), false);
		Value *val444 = builder.CreateCall(llvm_fmuladd_f32Func, {val51, val443, val441});
		Value *val445 = builder.CreateCall(llvm_fmuladd_f32Func, {val431, ConstantFP::get(Type::getFloatTy(context), -4.000000), val444});
		Value *val446 = builder.CreateFPExt(val435, Type::getDoubleTy(context));
		Value *val447 = builder.CreateFPExt(val445, Type::getDoubleTy(context));
		Value *val448 = builder.CreateCall(llvm_fmuladd_f64Func, {val447, ConstantFP::get(Type::getDoubleTy(context), 0.100000), val446});
		Value *val449 = builder.CreateFPTrunc(val448, Type::getFloatTy(context));
		builder.CreateAlignedStore(val449, val432, Align(4), false);
		Value *val450 = builder.CreateGEP(IntegerType::get(context, 8), val430, {builder.getInt64(2044ULL)});
		Value *val451 = builder.CreateAlignedLoad(Type::getFloatTy(context), val450, Align(4), false);
		Value *val452 = builder.CreateGEP(IntegerType::get(context, 8), val432, {builder.getInt64(2044ULL)});
		Value *val453 = builder.CreateAlignedLoad(Type::getFloatTy(context), val452, Align(4), false);
		Value *val454 = builder.CreateFNeg(val453);
		Value *val455 = builder.CreateCall(llvm_fmuladd_f32Func, {val451, ConstantFP::get(Type::getFloatTy(context), 2.000000), val454});
		Value *val456 = builder.CreateGEP(IntegerType::get(context, 8), val437, {builder.getInt64(2044ULL)});
		Value *val457 = builder.CreateAlignedLoad(Type::getFloatTy(context), val456, Align(4), false);
		Value *val458 = builder.CreateGEP(IntegerType::get(context, 8), val430, {builder.getInt64(18446744073709551612ULL)});
		Value *val459 = builder.CreateAlignedLoad(Type::getFloatTy(context), val458, Align(4), false);
		Value *val460 = builder.CreateFAdd(val457, val459);
		Value *val461 = builder.CreateGEP(IntegerType::get(context, 8), val430, {builder.getInt64(2040ULL)});
		Value *val462 = builder.CreateAlignedLoad(Type::getFloatTy(context), val461, Align(4), false);
		Value *val463 = builder.CreateCall(llvm_fmuladd_f32Func, {val51, val462, val460});
		Value *val464 = builder.CreateCall(llvm_fmuladd_f32Func, {val451, ConstantFP::get(Type::getFloatTy(context), -4.000000), val463});
		Value *val465 = builder.CreateFPExt(val455, Type::getDoubleTy(context));
		Value *val466 = builder.CreateFPExt(val464, Type::getDoubleTy(context));
		Value *val467 = builder.CreateCall(llvm_fmuladd_f64Func, {val466, ConstantFP::get(Type::getDoubleTy(context), 0.100000), val465});
		Value *val468 = builder.CreateFPTrunc(val467, Type::getFloatTy(context));
		builder.CreateAlignedStore(val468, val452, Align(4), false);
		Value *val469 = builder.CreateICmpEQ(val436, builder.getInt64(511ULL));
		builder.CreateCondBr(val469, BB357, BB428);
		cast<PHINode>(val15)->addIncoming(builder.getInt64(1ULL), BB6);
		cast<PHINode>(val15)->addIncoming(val112, BB111);
		cast<PHINode>(val21)->addIncoming(builder.getInt64(1ULL), BB14);
		cast<PHINode>(val21)->addIncoming(builder.getInt64(509ULL), BB22);
		cast<PHINode>(val23)->addIncoming(val48, BB22);
		cast<PHINode>(val23)->addIncoming(builder.getInt64(0ULL), BB14);
		cast<PHINode>(val63)->addIncoming(builder.getInt64(1ULL), BB50);
		cast<PHINode>(val63)->addIncoming(builder.getInt64(509ULL), BB67);
		cast<PHINode>(val68)->addIncoming(builder.getInt64(0ULL), BB64);
		cast<PHINode>(val68)->addIncoming(val109, BB67);
		cast<PHINode>(val115)->addIncoming(val126, BB114);
		cast<PHINode>(val115)->addIncoming(val21, BB20);
		cast<PHINode>(val146)->addIncoming(val155, BB145);
		cast<PHINode>(val146)->addIncoming(val63, BB62);
		cast<PHINode>(val195)->addIncoming(builder.getInt64(1ULL), BB188);
		cast<PHINode>(val195)->addIncoming(builder.getInt64(509ULL), BB199);
		cast<PHINode>(val200)->addIncoming(builder.getInt64(0ULL), BB196);
		cast<PHINode>(val200)->addIncoming(val355, BB199);
		cast<PHINode>(val429)->addIncoming(val436, BB428);
		cast<PHINode>(val429)->addIncoming(val195, BB194);
	}
	Function *saturateFunc = Function::Create(FunctionType::get(Type::getFloatTy(context), {Type::getFloatTy(context)}, false), Function::ExternalLinkage, "saturate", module);
	{
		BasicBlock *BB1 = BasicBlock::Create(context, "", saturateFunc);
		BasicBlock *BB3 = BasicBlock::Create(context, "", saturateFunc);
		BasicBlock *BB5 = BasicBlock::Create(context, "", saturateFunc);
		BasicBlock *BB6 = BasicBlock::Create(context, "", saturateFunc);


		builder.SetInsertPoint(BB1);

		Value *val2 = builder.CreateFCmpOGT(saturateFunc->getArg(0), ConstantFP::get(Type::getFloatTy(context), 10.000000));
		builder.CreateCondBr(val2, BB6, BB3);

		builder.SetInsertPoint(BB3);

		Value *val4 = builder.CreateFCmpOLT(saturateFunc->getArg(0), ConstantFP::get(Type::getFloatTy(context), -10.000000));
		builder.CreateCondBr(val4, BB5, BB6);

		builder.SetInsertPoint(BB5);

		builder.CreateBr(BB6);

		builder.SetInsertPoint(BB6);

		Value *val7 = builder.CreatePHI(Type::getFloatTy(context), 3);
		builder.CreateRet(val7);
		cast<PHINode>(val7)->addIncoming(saturateFunc->getArg(0), BB3);
		cast<PHINode>(val7)->addIncoming(ConstantFP::get(Type::getFloatTy(context), -10.000000), BB5);
		cast<PHINode>(val7)->addIncoming(ConstantFP::get(Type::getFloatTy(context), 10.000000), BB1);
	}
	Function *appFunc = Function::Create(FunctionType::get(Type::getVoidTy(context), {}, false), Function::ExternalLinkage, "app", module);
	{
		BasicBlock *BB0 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB3 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB10 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB14 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB17 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB20 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB25 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB27 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB28 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB42 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB51 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB56 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB65 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB67 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB68 = BasicBlock::Create(context, "", appFunc);
		BasicBlock *BB72 = BasicBlock::Create(context, "", appFunc);


		builder.SetInsertPoint(BB0);

		Value *val1 = builder.CreateAlloca(ArrayType::get(ArrayType::get(ArrayType::get(Type::getFloatTy(context), 512), 512), 2), builder.getInt32(1ULL));
		cast<AllocaInst>(val1)->setAlignment(Align(16));
		builder.CreateCall(llvm_lifetime_start_p0Func, {val1});
		Value *val2 = builder.CreateGEP(IntegerType::get(context, 8), val1, {builder.getInt64(1048576ULL)});
		builder.CreateCall(llvm_memset_p0_i64Func, {val1, builder.getInt8(0ULL), builder.getInt64(2097152ULL), builder.getInt1(0ULL)});
		builder.CreateBr(BB3);

		builder.SetInsertPoint(BB3);

		Value *val4 = builder.CreatePHI(Type::getFloatTy(context), 2);
		Value *val5 = builder.CreatePHI(Type::getFloatTy(context), 2);
		Value *val6 = builder.CreatePHI(IntegerType::get(context, 32), 2);
		Value *val7 = builder.CreatePHI(IntegerType::get(context, 32), 2);
		Value *val8 = builder.CreatePHI(PointerType::get(context, 0), 2);
		Value *val9 = builder.CreatePHI(PointerType::get(context, 0), 2);
		builder.CreateCall(emulationStepFunc, {val9, val8, val4, val5, val7, val6});
		builder.CreateBr(BB10);

		builder.SetInsertPoint(BB10);

		Value *val11 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		Value *val12 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 2048), val9, {val11});
		Value *val13 = builder.CreateTrunc(val11, IntegerType::get(context, 32));
		builder.CreateBr(BB20);

		builder.SetInsertPoint(BB14);

		builder.CreateCall(simFlushFunc, {});
		Value *val15 = builder.CreateCall(simHasClickFunc, {});
		Value *val16 = builder.CreateICmpEQ(val15, builder.getInt32(0ULL));
		builder.CreateCondBr(val16, BB51, BB42);

		builder.SetInsertPoint(BB17);

		Value *val18 = builder.CreateAdd(val11, builder.getInt64(1ULL));
		Value *val19 = builder.CreateICmpEQ(val18, builder.getInt64(512ULL));
		builder.CreateCondBr(val19, BB14, BB10);

		builder.SetInsertPoint(BB20);

		Value *val21 = builder.CreatePHI(IntegerType::get(context, 64), 2);
		Value *val22 = builder.CreateGEP(ArrayType::get(IntegerType::get(context, 8), 4), val12, {val21});
		Value *val23 = builder.CreateAlignedLoad(Type::getFloatTy(context), val22, Align(4), false);
		Value *val24 = builder.CreateFCmpOGT(val23, ConstantFP::get(Type::getFloatTy(context), 10.000000));
		builder.CreateCondBr(val24, BB28, BB25);

		builder.SetInsertPoint(BB25);

		Value *val26 = builder.CreateFCmpOLT(val23, ConstantFP::get(Type::getFloatTy(context), -10.000000));
		builder.CreateCondBr(val26, BB27, BB28);

		builder.SetInsertPoint(BB27);

		builder.CreateBr(BB28);

		builder.SetInsertPoint(BB28);

		Value *val29 = builder.CreatePHI(Type::getFloatTy(context), 3);
		Value *val30 = builder.CreateFPExt(val29, Type::getDoubleTy(context));
		Value *val31 = builder.CreateFAdd(val30, ConstantFP::get(Type::getDoubleTy(context), 10.000000));
		Value *val32 = builder.CreateFDiv(val31, ConstantFP::get(Type::getDoubleTy(context), 20.000000));
		Value *val33 = builder.CreateFPTrunc(val32, Type::getFloatTy(context));
		Value *val34 = builder.CreateFMul(val33, ConstantFP::get(Type::getFloatTy(context), 255.000000));
		Value *val35 = builder.CreateFPToSI(val34, IntegerType::get(context, 32));
		Value *val36 = builder.CreateAnd(val35, builder.getInt32(255ULL));
		Value *val37 = builder.CreateMul(val36, builder.getInt32(65793ULL));
		Value *val38 = builder.CreateOr(val37, builder.getInt32(4278190080ULL));
		Value *val39 = builder.CreateTrunc(val21, IntegerType::get(context, 32));
		builder.CreateCall(simPutPixelFunc, {val13, val39, val38});
		Value *val40 = builder.CreateAdd(val21, builder.getInt64(1ULL));
		Value *val41 = builder.CreateICmpEQ(val40, builder.getInt64(512ULL));
		builder.CreateCondBr(val41, BB17, BB20);

		builder.SetInsertPoint(BB42);

		Value *val43 = builder.CreateCall(simGetClickFunc, {});
		Value *val44 = builder.CreateAShr(val43, builder.getInt32(16ULL));
		Value *val45 = builder.CreateAnd(val43, builder.getInt32(65535ULL));
		Value *val46 = builder.CreateICmpULT(val44, builder.getInt32(512ULL));
		Value *val47 = builder.CreateICmpULT(val45, builder.getInt32(512ULL));
		Value *val48 = builder.CreateSelect(val46, val47, builder.getInt1(0ULL));
		Value *val49 = builder.CreateSelect(val48, val45, val6);
		Value *val50 = builder.CreateSelect(val48, val44, val7);
		builder.CreateBr(BB51);

		builder.SetInsertPoint(BB51);

		Value *val52 = builder.CreatePHI(IntegerType::get(context, 32), 2);
		Value *val53 = builder.CreatePHI(IntegerType::get(context, 32), 2);
		Value *val54 = builder.CreateCall(simHasScrollFunc, {});
		Value *val55 = builder.CreateICmpEQ(val54, builder.getInt32(0ULL));
		builder.CreateCondBr(val55, BB72, BB56);

		builder.SetInsertPoint(BB56);

		Value *val57 = builder.CreatePHI(Type::getFloatTy(context), 2);
		Value *val58 = builder.CreateCall(simGetScrollFunc, {});
		Value *val59 = builder.CreateMul(val58, builder.getInt32(5ULL));
		Value *val60 = builder.CreateSIToFP(val59, Type::getDoubleTy(context));
		Value *val61 = builder.CreateFDiv(val60, ConstantFP::get(Type::getDoubleTy(context), 100.000000));
		Value *val62 = builder.CreateFPTrunc(val61, Type::getFloatTy(context));
		Value *val63 = builder.CreateFAdd(val57, val62);
		Value *val64 = builder.CreateFCmpOGT(val63, ConstantFP::get(Type::getFloatTy(context), 1.000000));
		builder.CreateCondBr(val64, BB68, BB65);

		builder.SetInsertPoint(BB65);

		Value *val66 = builder.CreateFCmpOLT(val63, ConstantFP::get(Type::getFloatTy(context), 0.000000));
		builder.CreateCondBr(val66, BB67, BB68);

		builder.SetInsertPoint(BB67);

		builder.CreateBr(BB68);

		builder.SetInsertPoint(BB68);

		Value *val69 = builder.CreatePHI(Type::getFloatTy(context), 3);
		Value *val70 = builder.CreateCall(simHasScrollFunc, {});
		Value *val71 = builder.CreateICmpEQ(val70, builder.getInt32(0ULL));
		builder.CreateCondBr(val71, BB72, BB56);

		builder.SetInsertPoint(BB72);

		Value *val73 = builder.CreatePHI(Type::getFloatTy(context), 2);
		Value *val74 = builder.CreateFPExt(val5, Type::getDoubleTy(context));
		Value *val75 = builder.CreateFAdd(val74, ConstantFP::get(Type::getDoubleTy(context), 0.050000));
		Value *val76 = builder.CreateFPTrunc(val75, Type::getFloatTy(context));
		builder.CreateBr(BB3);
		cast<PHINode>(val4)->addIncoming(ConstantFP::get(Type::getFloatTy(context), 0.500000), BB0);
		cast<PHINode>(val4)->addIncoming(val73, BB72);
		cast<PHINode>(val5)->addIncoming(ConstantFP::get(Type::getFloatTy(context), 0.000000), BB0);
		cast<PHINode>(val5)->addIncoming(val76, BB72);
		cast<PHINode>(val6)->addIncoming(builder.getInt32(256ULL), BB0);
		cast<PHINode>(val6)->addIncoming(val52, BB72);
		cast<PHINode>(val7)->addIncoming(builder.getInt32(256ULL), BB0);
		cast<PHINode>(val7)->addIncoming(val53, BB72);
		cast<PHINode>(val8)->addIncoming(val2, BB0);
		cast<PHINode>(val8)->addIncoming(val9, BB72);
		cast<PHINode>(val9)->addIncoming(val1, BB0);
		cast<PHINode>(val9)->addIncoming(val8, BB72);
		cast<PHINode>(val11)->addIncoming(builder.getInt64(0ULL), BB3);
		cast<PHINode>(val11)->addIncoming(val18, BB17);
		cast<PHINode>(val21)->addIncoming(builder.getInt64(0ULL), BB10);
		cast<PHINode>(val21)->addIncoming(val40, BB28);
		cast<PHINode>(val29)->addIncoming(val23, BB25);
		cast<PHINode>(val29)->addIncoming(ConstantFP::get(Type::getFloatTy(context), -10.000000), BB27);
		cast<PHINode>(val29)->addIncoming(ConstantFP::get(Type::getFloatTy(context), 10.000000), BB20);
		cast<PHINode>(val52)->addIncoming(val49, BB42);
		cast<PHINode>(val52)->addIncoming(val6, BB14);
		cast<PHINode>(val53)->addIncoming(val50, BB42);
		cast<PHINode>(val53)->addIncoming(val7, BB14);
		cast<PHINode>(val57)->addIncoming(val69, BB68);
		cast<PHINode>(val57)->addIncoming(val4, BB51);
		cast<PHINode>(val69)->addIncoming(val63, BB65);
		cast<PHINode>(val69)->addIncoming(ConstantFP::get(Type::getFloatTy(context), 0.000000), BB67);
		cast<PHINode>(val69)->addIncoming(ConstantFP::get(Type::getFloatTy(context), 1.000000), BB56);
		cast<PHINode>(val73)->addIncoming(val4, BB51);
		cast<PHINode>(val73)->addIncoming(val69, BB68);
	}
////////////////////////////////////////////////////////////////////////
// DUMP LLVM IR
////////////////////////////////////////////////////////////////////////

	module->print(outs(), nullptr);
	outs() << '\n';
	bool verif = verifyModule(*module, &outs());
	outs() << "[VERIFICATION]:" << (verif ? "FAIL\n\n" : "OK\n\n");
////////////////////////////////////////////////////////////////////////
// RUN LLVM IR
////////////////////////////////////////////////////////////////////////

	outs() << "[EE] Run\n";
	InitializeNativeTarget();
	InitializeNativeTargetAsmPrinter();

	ExecutionEngine *ee = EngineBuilder(std::unique_ptr<Module>(module)).create();
	ee->InstallLazyFunctionCreator([](const std::string &fnName) -> void * {
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
		return nullptr;
	});
	ee->finalizeObject();
	simInit();

	ArrayRef<GenericValue> noargs;
	GenericValue v = ee->runFunction(appFunc, noargs);
	outs() << "[EE] Result: " << v.IntVal << '\n';

	simExit();
	return EXIT_SUCCESS;
}
