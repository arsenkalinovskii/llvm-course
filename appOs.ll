; ModuleID = 'App/app.c'
source_filename = "App/app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@0 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@3 = private unnamed_addr constant [14 x i8] c"getelementptr\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@6 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@7 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@9 = private unnamed_addr constant [14 x i8] c"insertelement\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"fneg\00", align 1
@11 = private unnamed_addr constant [14 x i8] c"shufflevector\00", align 1
@12 = private unnamed_addr constant [15 x i8] c"extractelement\00", align 1
@13 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@14 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@15 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@16 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@17 = private unnamed_addr constant [5 x i8] c"fcmp\00", align 1
@18 = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@19 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@20 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@21 = private unnamed_addr constant [7 x i8] c"fptosi\00", align 1
@22 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@23 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@24 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@25 = private unnamed_addr constant [5 x i8] c"ashr\00", align 1
@26 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@27 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @initGrids(ptr nofree noundef writeonly captures(none) initializes((0, 2097152)) %0) local_unnamed_addr #0 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428353024, ptr @0, i32 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428283960, ptr @1, i32 0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind optsize sspstrong uwtable
define dso_local void @emulationStep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428376208, ptr @2, i32 0)
  br label %7

7:                                                ; preds = %6, %19
  %8 = phi i64 [ 1, %6 ], [ %20, %19 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428506544, ptr @3, i32 4, ptr @3, ptr @3, ptr @3, ptr @3)
  %9 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428534640, ptr @3, i32 1, ptr @3)
  %10 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428368320, ptr @3, i32 1, ptr @3)
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428469792, ptr @3, i32 1, ptr @3)
  %12 = getelementptr i8, ptr %9, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428380896, ptr @2, i32 0)
  br label %22

13:                                               ; preds = %19
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428370688, ptr @4, i32 8, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0)
  %14 = fadd float %2, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428472352, ptr @3, i32 2, ptr @5, ptr @3)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428516992, ptr @3, i32 4, ptr @5, ptr @3, ptr @3, ptr @3)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428371744, ptr @3, i32 3, ptr @6, ptr @5, ptr @3)
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428479008, ptr @3, i32 2, ptr @5, ptr @3)
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1044480
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428376912, ptr @2, i32 0)
  br label %53

19:                                               ; preds = %22
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428388320, ptr @7, i32 1, ptr @8)
  %20 = add nuw nsw i64 %8, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428384800, ptr @8, i32 1, ptr @2)
  %21 = icmp eq i64 %20, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428377088, ptr @2, i32 0)
  br i1 %21, label %13, label %7, !llvm.loop !11

22:                                               ; preds = %7, %22
  %23 = phi i64 [ 1, %7 ], [ %34, %22 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428542560, ptr @3, i32 2, ptr @3, ptr @5)
  %24 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428381200, ptr @5, i32 1, ptr @9)
  %25 = load float, ptr %24, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428525744, ptr @3, i32 2, ptr @5, ptr @6)
  %26 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428382480, ptr @5, i32 1, ptr @10)
  %27 = load float, ptr %26, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428382608, ptr @10, i32 1, ptr @9)
  %28 = fneg float %27
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428462576, ptr @3, i32 1, ptr @5)
  %29 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428384512, ptr @5, i32 1, ptr @4)
  %30 = load float, ptr %29, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428399920, ptr @3, i32 1, ptr @5)
  %31 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428387312, ptr @5, i32 1, ptr @4)
  %32 = load float, ptr %31, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428387472, ptr @4, i32 1, ptr @4)
  %33 = fadd float %30, %32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428420976, ptr @7, i32 2, ptr @8, ptr @3)
  %34 = add nuw nsw i64 %23, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428403824, ptr @3, i32 1, ptr @5)
  %35 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %34
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428388736, ptr @5, i32 1, ptr @4)
  %36 = load float, ptr %35, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428388896, ptr @4, i32 1, ptr @4)
  %37 = fadd float %33, %36
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428385056, ptr @3, i32 1, ptr @5)
  %38 = getelementptr i8, ptr %24, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428390160, ptr @5, i32 1, ptr @4)
  %39 = load float, ptr %38, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428390320, ptr @4, i32 1, ptr @9)
  %40 = fadd float %37, %39
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428398048, ptr @9, i32 1, ptr @11)
  %41 = insertelement <2 x float> poison, float %25, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428404512, ptr @11, i32 1, ptr @0)
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428395904, ptr @9, i32 1, ptr @9)
  %43 = insertelement <2 x float> poison, float %28, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428426192, ptr @9, i32 1, ptr @0)
  %44 = insertelement <2 x float> %43, float %40, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428385760, ptr @0, i32 2, ptr @12, ptr @12)
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> <float 2.000000e+00, float -4.000000e+00>, <2 x float> %44)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428395200, ptr @12, i32 1, ptr @13)
  %46 = extractelement <2 x float> %45, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428392272, ptr @13, i32 1, ptr @0)
  %47 = fpext float %46 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428346256, ptr @12, i32 1, ptr @13)
  %48 = extractelement <2 x float> %45, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428392720, ptr @13, i32 1, ptr @0)
  %49 = fpext float %48 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428393312, ptr @0, i32 1, ptr @14)
  %50 = tail call double @llvm.fmuladd.f64(double %49, double 1.000000e-01, double %47)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428393456, ptr @14, i32 1, ptr @6)
  %51 = fptrunc double %50 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428392880, ptr @6, i32 0)
  store float %51, ptr %26, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428427216, ptr @8, i32 1, ptr @2)
  %52 = icmp eq i64 %34, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428379328, ptr @2, i32 0)
  br i1 %52, label %19, label %22, !llvm.loop !13

53:                                               ; preds = %13, %53
  %54 = phi i64 [ 1, %13 ], [ %63, %53 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428407904, ptr @3, i32 1, ptr @5)
  %55 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428400080, ptr @5, i32 2, ptr @0, ptr @0)
  %56 = load float, ptr %55, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428465136, ptr @3, i32 2, ptr @5, ptr @6)
  %57 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428401120, ptr @5, i32 1, ptr @10)
  %58 = load float, ptr %57, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428401248, ptr @10, i32 1, ptr @0)
  %59 = fneg float %58
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428401472, ptr @0, i32 1, ptr @13)
  %60 = tail call float @llvm.fmuladd.f32(float %56, float 2.000000e+00, float %59)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428509072, ptr @3, i32 1, ptr @5)
  %61 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428402800, ptr @5, i32 1, ptr @0)
  %62 = load float, ptr %61, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428395616, ptr @7, i32 3, ptr @8, ptr @3, ptr @3)
  %63 = add nuw nsw i64 %54, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428537536, ptr @3, i32 1, ptr @5)
  %64 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %63
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428403984, ptr @5, i32 1, ptr @0)
  %65 = load float, ptr %64, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428404208, ptr @0, i32 1, ptr @4)
  %66 = tail call float @llvm.fmuladd.f32(float %14, float %62, float %65)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428379040, ptr @7, i32 2, ptr @3, ptr @3)
  %67 = add nsw i64 %54, -1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428542352, ptr @3, i32 1, ptr @5)
  %68 = getelementptr inbounds [4 x i8], ptr %0, i64 %67
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428385216, ptr @5, i32 1, ptr @4)
  %69 = load float, ptr %68, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428402960, ptr @4, i32 1, ptr @0)
  %70 = fadd float %66, %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428408128, ptr @0, i32 1, ptr @13)
  %71 = tail call float @llvm.fmuladd.f32(float %56, float -4.000000e+00, float %70)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428408400, ptr @13, i32 1, ptr @0)
  %72 = fpext float %60 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428408656, ptr @13, i32 1, ptr @0)
  %73 = fpext float %71 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428409040, ptr @0, i32 1, ptr @14)
  %74 = tail call double @llvm.fmuladd.f64(double %73, double 1.000000e-01, double %72)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428409184, ptr @14, i32 1, ptr @6)
  %75 = fptrunc double %74 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428408816, ptr @6, i32 0)
  store float %75, ptr %57, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428525216, ptr @3, i32 1, ptr @5)
  %76 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428411472, ptr @5, i32 2, ptr @0, ptr @0)
  %77 = load float, ptr %76, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428513392, ptr @3, i32 2, ptr @5, ptr @6)
  %78 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428412512, ptr @5, i32 1, ptr @10)
  %79 = load float, ptr %78, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428412640, ptr @10, i32 1, ptr @0)
  %80 = fneg float %79
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428412864, ptr @0, i32 1, ptr @13)
  %81 = tail call float @llvm.fmuladd.f32(float %77, float 2.000000e+00, float %80)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428376352, ptr @3, i32 1, ptr @5)
  %82 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428414240, ptr @5, i32 1, ptr @0)
  %83 = load float, ptr %82, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428421232, ptr @3, i32 1, ptr @5)
  %84 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %63
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428415424, ptr @5, i32 1, ptr @0)
  %85 = load float, ptr %84, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428415696, ptr @0, i32 1, ptr @4)
  %86 = tail call float @llvm.fmuladd.f32(float %14, float %83, float %85)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428421856, ptr @3, i32 1, ptr @5)
  %87 = getelementptr inbounds [4 x i8], ptr %16, i64 %67
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428416736, ptr @5, i32 1, ptr @4)
  %88 = load float, ptr %87, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428414400, ptr @4, i32 1, ptr @0)
  %89 = fadd float %86, %88
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428418000, ptr @0, i32 1, ptr @13)
  %90 = tail call float @llvm.fmuladd.f32(float %77, float -4.000000e+00, float %89)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428418272, ptr @13, i32 1, ptr @0)
  %91 = fpext float %81 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428418528, ptr @13, i32 1, ptr @0)
  %92 = fpext float %90 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428418912, ptr @0, i32 1, ptr @14)
  %93 = tail call double @llvm.fmuladd.f64(double %92, double 1.000000e-01, double %91)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428419056, ptr @14, i32 1, ptr @6)
  %94 = fptrunc double %93 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428418688, ptr @6, i32 0)
  store float %94, ptr %78, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651427319328, ptr @8, i32 1, ptr @2)
  %95 = icmp eq i64 %63, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428398656, ptr @2, i32 0)
  br i1 %95, label %167, label %53, !llvm.loop !14

96:                                               ; preds = %167
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428405936, ptr @5, i32 2, ptr @15, ptr @0)
  %97 = load float, ptr %0, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428406736, ptr @5, i32 1, ptr @10)
  %98 = load float, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428406864, ptr @10, i32 1, ptr @0)
  %99 = fneg float %98
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428407088, ptr @0, i32 1, ptr @13)
  %100 = tail call float @llvm.fmuladd.f32(float %97, float 2.000000e+00, float %99)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428397008, ptr @3, i32 1, ptr @5)
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428449744, ptr @5, i32 1, ptr @4)
  %102 = load float, ptr %101, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428450384, ptr @5, i32 1, ptr @4)
  %103 = load float, ptr %15, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428450544, ptr @4, i32 1, ptr @0)
  %104 = fadd float %102, %103
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428539872, ptr @15, i32 1, ptr @0)
  %105 = fmul float %97, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428451856, ptr @0, i32 1, ptr @13)
  %106 = tail call float @llvm.fmuladd.f32(float %14, float %104, float %105)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428452128, ptr @13, i32 1, ptr @0)
  %107 = fpext float %100 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428452384, ptr @13, i32 1, ptr @0)
  %108 = fpext float %106 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428452768, ptr @0, i32 1, ptr @14)
  %109 = tail call double @llvm.fmuladd.f64(double %108, double 1.000000e-01, double %107)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428452912, ptr @14, i32 1, ptr @6)
  %110 = fptrunc double %109 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428452544, ptr @6, i32 0)
  store float %110, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428454720, ptr @5, i32 2, ptr @15, ptr @0)
  %111 = load float, ptr %16, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428455520, ptr @5, i32 1, ptr @10)
  %112 = load float, ptr %17, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428455648, ptr @10, i32 1, ptr @0)
  %113 = fneg float %112
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428455872, ptr @0, i32 1, ptr @13)
  %114 = tail call float @llvm.fmuladd.f32(float %111, float 2.000000e+00, float %113)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428737232, ptr @3, i32 1, ptr @5)
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428456960, ptr @5, i32 1, ptr @4)
  %116 = load float, ptr %115, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428457600, ptr @5, i32 1, ptr @4)
  %117 = load float, ptr %18, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428457760, ptr @4, i32 1, ptr @0)
  %118 = fadd float %116, %117
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428735856, ptr @15, i32 1, ptr @0)
  %119 = fmul float %111, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428459072, ptr @0, i32 1, ptr @13)
  %120 = tail call float @llvm.fmuladd.f32(float %14, float %118, float %119)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428459344, ptr @13, i32 1, ptr @0)
  %121 = fpext float %114 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428459600, ptr @13, i32 1, ptr @0)
  %122 = fpext float %120 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428459984, ptr @0, i32 1, ptr @14)
  %123 = tail call double @llvm.fmuladd.f64(double %122, double 1.000000e-01, double %121)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428460128, ptr @14, i32 1, ptr @6)
  %124 = fptrunc double %123 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428459760, ptr @6, i32 0)
  store float %124, ptr %17, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428458720, ptr @3, i32 1, ptr @5)
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428461936, ptr @5, i32 2, ptr @15, ptr @0)
  %126 = load float, ptr %125, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428735696, ptr @3, i32 2, ptr @5, ptr @6)
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428462736, ptr @5, i32 1, ptr @10)
  %128 = load float, ptr %127, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428462864, ptr @10, i32 1, ptr @0)
  %129 = fneg float %128
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428463088, ptr @0, i32 1, ptr @13)
  %130 = tail call float @llvm.fmuladd.f32(float %126, float 2.000000e+00, float %129)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428310336, ptr @3, i32 1, ptr @5)
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428464176, ptr @5, i32 1, ptr @4)
  %132 = load float, ptr %131, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428304368, ptr @3, i32 1, ptr @5)
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428464816, ptr @5, i32 1, ptr @4)
  %134 = load float, ptr %133, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428464976, ptr @4, i32 1, ptr @0)
  %135 = fadd float %132, %134
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428307520, ptr @15, i32 1, ptr @0)
  %136 = fmul float %126, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428466288, ptr @0, i32 1, ptr @13)
  %137 = tail call float @llvm.fmuladd.f32(float %14, float %135, float %136)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428466560, ptr @13, i32 1, ptr @0)
  %138 = fpext float %130 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428466816, ptr @13, i32 1, ptr @0)
  %139 = fpext float %137 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428467200, ptr @0, i32 1, ptr @14)
  %140 = tail call double @llvm.fmuladd.f64(double %139, double 1.000000e-01, double %138)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428467344, ptr @14, i32 1, ptr @6)
  %141 = fptrunc double %140 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428466976, ptr @6, i32 0)
  store float %141, ptr %127, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428295376, ptr @3, i32 1, ptr @5)
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428469152, ptr @5, i32 2, ptr @15, ptr @0)
  %143 = load float, ptr %142, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428319248, ptr @3, i32 2, ptr @6, ptr @5)
  %144 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428469952, ptr @5, i32 1, ptr @10)
  %145 = load float, ptr %144, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428470080, ptr @10, i32 1, ptr @0)
  %146 = fneg float %145
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428470304, ptr @0, i32 1, ptr @13)
  %147 = tail call float @llvm.fmuladd.f32(float %143, float 2.000000e+00, float %146)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428311696, ptr @3, i32 1, ptr @5)
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428471392, ptr @5, i32 1, ptr @4)
  %149 = load float, ptr %148, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428376080, ptr @3, i32 1, ptr @5)
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428472032, ptr @5, i32 1, ptr @4)
  %151 = load float, ptr %150, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428472192, ptr @4, i32 1, ptr @0)
  %152 = fadd float %149, %151
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428506912, ptr @15, i32 1, ptr @0)
  %153 = fmul float %143, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428473504, ptr @0, i32 1, ptr @13)
  %154 = tail call float @llvm.fmuladd.f32(float %14, float %152, float %153)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428473776, ptr @13, i32 1, ptr @0)
  %155 = fpext float %147 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428474032, ptr @13, i32 1, ptr @0)
  %156 = fpext float %154 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428474416, ptr @0, i32 1, ptr @14)
  %157 = tail call double @llvm.fmuladd.f64(double %156, double 1.000000e-01, double %155)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428474560, ptr @14, i32 1, ptr @6)
  %158 = fptrunc double %157 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428474192, ptr @6, i32 0)
  store float %158, ptr %144, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428476624, ptr @0, i32 1, ptr @15)
  %159 = tail call float @simCalcSinus(float noundef %3) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428473152, ptr @15, i32 1, ptr @4)
  %160 = fmul float %159, 3.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428422416, ptr @16, i32 1, ptr @3)
  %161 = sext i32 %4 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428476928, ptr @3, i32 1, ptr @3)
  %162 = getelementptr inbounds [2048 x i8], ptr %1, i64 %161
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428478048, ptr @16, i32 1, ptr @3)
  %163 = sext i32 %5 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428523120, ptr @3, i32 2, ptr @5, ptr @6)
  %164 = getelementptr inbounds [4 x i8], ptr %162, i64 %163
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428478352, ptr @5, i32 1, ptr @4)
  %165 = load float, ptr %164, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428478512, ptr @4, i32 1, ptr @6)
  %166 = fadd float %165, %160
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428478672, ptr @6, i32 0)
  store float %166, ptr %164, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428307624, ptr @1, i32 0)
  ret void

167:                                              ; preds = %53, %167
  %168 = phi i64 [ %175, %167 ], [ 1, %53 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428530144, ptr @3, i32 6, ptr @3, ptr @3, ptr @3, ptr @3, ptr @3, ptr @5)
  %169 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %168
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428424016, ptr @5, i32 2, ptr @0, ptr @0)
  %170 = load float, ptr %169, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428308176, ptr @3, i32 3, ptr @3, ptr @5, ptr @6)
  %171 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %168
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428425056, ptr @5, i32 1, ptr @10)
  %172 = load float, ptr %171, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428425184, ptr @10, i32 1, ptr @0)
  %173 = fneg float %172
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428425456, ptr @0, i32 1, ptr @13)
  %174 = tail call float @llvm.fmuladd.f32(float %170, float 2.000000e+00, float %173)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428532256, ptr @7, i32 2, ptr @8, ptr @3)
  %175 = add nuw nsw i64 %168, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428309776, ptr @3, i32 2, ptr @3, ptr @5)
  %176 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %175
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428426800, ptr @5, i32 1, ptr @4)
  %177 = load float, ptr %176, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428442976, ptr @3, i32 1, ptr @5)
  %178 = getelementptr i8, ptr %169, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428427824, ptr @5, i32 1, ptr @4)
  %179 = load float, ptr %178, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428427984, ptr @4, i32 1, ptr @0)
  %180 = fadd float %177, %179
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428379472, ptr @3, i32 1, ptr @5)
  %181 = getelementptr inbounds nuw i8, ptr %169, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428428992, ptr @5, i32 1, ptr @0)
  %182 = load float, ptr %181, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428429376, ptr @0, i32 1, ptr @0)
  %183 = tail call float @llvm.fmuladd.f32(float %14, float %182, float %180)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428430496, ptr @0, i32 1, ptr @13)
  %184 = tail call float @llvm.fmuladd.f32(float %170, float -4.000000e+00, float %183)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428430768, ptr @13, i32 1, ptr @0)
  %185 = fpext float %174 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428431024, ptr @13, i32 1, ptr @0)
  %186 = fpext float %184 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428431408, ptr @0, i32 1, ptr @14)
  %187 = tail call double @llvm.fmuladd.f64(double %186, double 1.000000e-01, double %185)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428431552, ptr @14, i32 1, ptr @6)
  %188 = fptrunc double %187 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428431184, ptr @6, i32 0)
  store float %188, ptr %171, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428395344, ptr @3, i32 1, ptr @5)
  %189 = getelementptr inbounds nuw i8, ptr %169, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428433840, ptr @5, i32 2, ptr @0, ptr @0)
  %190 = load float, ptr %189, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428420704, ptr @3, i32 2, ptr @5, ptr @6)
  %191 = getelementptr inbounds nuw i8, ptr %171, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428434880, ptr @5, i32 1, ptr @10)
  %192 = load float, ptr %191, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428435008, ptr @10, i32 1, ptr @0)
  %193 = fneg float %192
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428435232, ptr @0, i32 1, ptr @13)
  %194 = tail call float @llvm.fmuladd.f32(float %190, float 2.000000e+00, float %193)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428457920, ptr @3, i32 1, ptr @5)
  %195 = getelementptr inbounds nuw i8, ptr %176, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428436576, ptr @5, i32 1, ptr @4)
  %196 = load float, ptr %195, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428429152, ptr @3, i32 1, ptr @5)
  %197 = getelementptr i8, ptr %169, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428437600, ptr @5, i32 1, ptr @4)
  %198 = load float, ptr %197, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428437760, ptr @4, i32 1, ptr @0)
  %199 = fadd float %196, %198
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428438928, ptr @3, i32 1, ptr @5)
  %200 = getelementptr inbounds nuw i8, ptr %169, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428438768, ptr @5, i32 1, ptr @0)
  %201 = load float, ptr %200, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428439152, ptr @0, i32 1, ptr @0)
  %202 = tail call float @llvm.fmuladd.f32(float %14, float %201, float %199)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428440272, ptr @0, i32 1, ptr @13)
  %203 = tail call float @llvm.fmuladd.f32(float %190, float -4.000000e+00, float %202)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428440544, ptr @13, i32 1, ptr @0)
  %204 = fpext float %194 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428440800, ptr @13, i32 1, ptr @0)
  %205 = fpext float %203 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428441184, ptr @0, i32 1, ptr @14)
  %206 = tail call double @llvm.fmuladd.f64(double %205, double 1.000000e-01, double %204)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428441328, ptr @14, i32 1, ptr @6)
  %207 = fptrunc double %206 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428440960, ptr @6, i32 0)
  store float %207, ptr %191, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428403568, ptr @8, i32 1, ptr @2)
  %208 = icmp eq i64 %175, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428422592, ptr @2, i32 0)
  br i1 %208, label %96, label %167, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: optsize
declare float @simCalcSinus(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(none) uwtable
define dso_local noundef float @saturate(float noundef %0) local_unnamed_addr #5 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428416576, ptr @17, i32 1, ptr @2)
  %2 = fcmp ogt float %0, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428370480, ptr @2, i32 0)
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428349536, ptr @17, i32 1, ptr @2)
  %4 = fcmp olt float %0, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428371536, ptr @2, i32 0)
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428371360, ptr @2, i32 0)
  br label %6

6:                                                ; preds = %1, %3, %5
  %7 = phi float [ %0, %3 ], [ -1.000000e+01, %5 ], [ 1.000000e+01, %1 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428494576, ptr @1, i32 0)
  ret float %7
}

; Function Attrs: noreturn nounwind optsize sspstrong uwtable
define dso_local void @app() local_unnamed_addr #6 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428348384, ptr @18, i32 3, ptr @0, ptr @3, ptr @0)
  %1 = alloca [2 x [512 x [512 x float]]], align 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428493216, ptr @0, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428371232, ptr @3, i32 0)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428747888, ptr @0, i32 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2097152) %1, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428509200, ptr @2, i32 0)
  br label %3

3:                                                ; preds = %72, %0
  %4 = phi float [ 5.000000e-01, %0 ], [ %73, %72 ]
  %5 = phi float [ 0.000000e+00, %0 ], [ %76, %72 ]
  %6 = phi i32 [ 256, %0 ], [ %52, %72 ]
  %7 = phi i32 [ 256, %0 ], [ %53, %72 ]
  %8 = phi ptr [ %2, %0 ], [ %9, %72 ]
  %9 = phi ptr [ %1, %0 ], [ %8, %72 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428510752, ptr @0, i32 0)
  call void @emulationStep(ptr noundef %9, ptr noundef %8, float noundef %4, float noundef %5, i32 noundef %7, i32 noundef %6) #11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428513616, ptr @2, i32 0)
  br label %10

10:                                               ; preds = %3, %17
  %11 = phi i64 [ 0, %3 ], [ %18, %17 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428539424, ptr @3, i32 1, ptr @3)
  %12 = getelementptr inbounds nuw [2048 x i8], ptr %9, i64 %11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428525344, ptr @19, i32 1, ptr @0)
  %13 = trunc nuw nsw i64 %11 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428396368, ptr @2, i32 0)
  br label %20

14:                                               ; preds = %17
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428517216, ptr @0, i32 0)
  tail call void (...) @simFlush() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428527696, ptr @0, i32 1, ptr @8)
  %15 = tail call i32 (...) @simHasClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428527872, ptr @8, i32 1, ptr @2)
  %16 = icmp eq i32 %15, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428513792, ptr @2, i32 0)
  br i1 %16, label %51, label %42

17:                                               ; preds = %28
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428525072, ptr @7, i32 1, ptr @8)
  %18 = add nuw nsw i64 %11, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428522272, ptr @8, i32 1, ptr @2)
  %19 = icmp eq i64 %18, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428514560, ptr @2, i32 0)
  br i1 %19, label %14, label %10, !llvm.loop !16

20:                                               ; preds = %10, %28
  %21 = phi i64 [ 0, %10 ], [ %40, %28 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428383920, ptr @3, i32 1, ptr @5)
  %22 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %21
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428518656, ptr @5, i32 2, ptr @17, ptr @17)
  %23 = load float, ptr %22, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428538752, ptr @17, i32 1, ptr @2)
  %24 = fcmp ogt float %23, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428507296, ptr @2, i32 0)
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428541072, ptr @17, i32 1, ptr @2)
  %26 = fcmp olt float %23, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428377872, ptr @2, i32 0)
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428311328, ptr @2, i32 0)
  br label %28

28:                                               ; preds = %20, %25, %27
  %29 = phi float [ %23, %25 ], [ -1.000000e+01, %27 ], [ 1.000000e+01, %20 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428519552, ptr @13, i32 1, ptr @4)
  %30 = fpext float %29 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428519712, ptr @4, i32 1, ptr @20)
  %31 = fadd double %30, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428520000, ptr @20, i32 1, ptr @14)
  %32 = fdiv double %31, 2.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428520128, ptr @14, i32 1, ptr @15)
  %33 = fptrunc double %32 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428520992, ptr @15, i32 1, ptr @21)
  %34 = fmul float %33, 2.550000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428521120, ptr @21, i32 1, ptr @22)
  %35 = fptosi float %34 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428521264, ptr @22, i32 1, ptr @23)
  %36 = and i32 %35, 255
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428522128, ptr @23, i32 1, ptr @24)
  %37 = mul nuw nsw i32 %36, 65793
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428435968, ptr @24, i32 1, ptr @0)
  %38 = or disjoint i32 %37, -16777216
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428540464, ptr @19, i32 1, ptr @0)
  %39 = trunc nuw nsw i64 %21 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428476240, ptr @0, i32 0)
  tail call void @simPutPixel(i32 noundef %13, i32 noundef %39, i32 noundef %38) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428404832, ptr @7, i32 1, ptr @8)
  %40 = add nuw nsw i64 %21, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651427219040, ptr @8, i32 1, ptr @2)
  %41 = icmp eq i64 %40, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428516800, ptr @2, i32 0)
  br i1 %41, label %17, label %20, !llvm.loop !17

42:                                               ; preds = %14
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428528496, ptr @0, i32 2, ptr @25, ptr @22)
  %43 = tail call i32 (...) @simGetClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428529264, ptr @25, i32 2, ptr @26, ptr @8)
  %44 = ashr i32 %43, 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428530000, ptr @22, i32 2, ptr @26, ptr @8)
  %45 = and i32 %43, 65535
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428386464, ptr @8, i32 1, ptr @26)
  %46 = icmp ult i32 %44, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428531808, ptr @8, i32 1, ptr @26)
  %47 = icmp samesign ult i32 %45, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428409936, ptr @26, i32 2, ptr @26, ptr @26)
  %48 = select i1 %46, i1 %47, i1 false
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428414720, ptr @26, i32 0)
  %49 = select i1 %48, i32 %45, i32 %6
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428507104, ptr @26, i32 0)
  %50 = select i1 %48, i32 %44, i32 %7
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428533696, ptr @2, i32 0)
  br label %51

51:                                               ; preds = %42, %14
  %52 = phi i32 [ %49, %42 ], [ %6, %14 ]
  %53 = phi i32 [ %50, %42 ], [ %7, %14 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428389712, ptr @0, i32 1, ptr @8)
  %54 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428442832, ptr @8, i32 1, ptr @2)
  %55 = icmp eq i32 %54, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428375936, ptr @2, i32 0)
  br i1 %55, label %72, label %56

56:                                               ; preds = %51, %68
  %57 = phi float [ %69, %68 ], [ %4, %51 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428535568, ptr @0, i32 1, ptr @23)
  %58 = tail call i32 (...) @simGetScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428535744, ptr @23, i32 1, ptr @27)
  %59 = mul nsw i32 %58, 5
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428536448, ptr @27, i32 1, ptr @20)
  %60 = sitofp i32 %59 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428536672, ptr @20, i32 1, ptr @14)
  %61 = fdiv double %60, 1.000000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428536800, ptr @14, i32 1, ptr @4)
  %62 = fptrunc double %61 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428537376, ptr @4, i32 2, ptr @17, ptr @17)
  %63 = fadd float %57, %62
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428381040, ptr @17, i32 1, ptr @2)
  %64 = fcmp ogt float %63, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428538544, ptr @2, i32 0)
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428538240, ptr @17, i32 1, ptr @2)
  %66 = fcmp olt float %63, 0.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428539728, ptr @2, i32 0)
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428539552, ptr @2, i32 0)
  br label %68

68:                                               ; preds = %56, %65, %67
  %69 = phi float [ %63, %65 ], [ 0.000000e+00, %67 ], [ 1.000000e+00, %56 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428534320, ptr @0, i32 1, ptr @8)
  %70 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428534496, ptr @8, i32 1, ptr @2)
  %71 = icmp eq i32 %70, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428534944, ptr @2, i32 0)
  br i1 %71, label %72, label %56, !llvm.loop !18

72:                                               ; preds = %68, %51
  %73 = phi float [ %4, %51 ], [ %69, %68 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428541904, ptr @13, i32 1, ptr @4)
  %74 = fpext float %5 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428542064, ptr @4, i32 1, ptr @14)
  %75 = fadd double %74, 5.000000e-02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428542192, ptr @14, i32 0)
  %76 = fptrunc double %75 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94651428542704, ptr @2, i32 0)
  br label %3
}

; Function Attrs: optsize
declare void @simPutPixel(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @simFlush(...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @simHasClick(...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @simGetClick(...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @simHasScroll(...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @simGetScroll(...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

declare void @logUserOperand(i64, ptr, i32, ...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind optsize sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.1.3"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
