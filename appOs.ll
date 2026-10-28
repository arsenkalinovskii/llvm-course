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
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725366784, ptr @0, i32 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725297720, ptr @1, i32 0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind optsize sspstrong uwtable
define dso_local void @emulationStep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725389968, ptr @2, i32 0)
  br label %7

7:                                                ; preds = %6, %19
  %8 = phi i64 [ 1, %6 ], [ %20, %19 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725520304, ptr @3, i32 4, ptr @3, ptr @3, ptr @3, ptr @3)
  %9 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725548400, ptr @3, i32 1, ptr @3)
  %10 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725382080, ptr @3, i32 1, ptr @3)
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725483552, ptr @3, i32 1, ptr @3)
  %12 = getelementptr i8, ptr %9, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725394656, ptr @2, i32 0)
  br label %22

13:                                               ; preds = %19
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725384448, ptr @4, i32 8, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0)
  %14 = fadd float %2, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725486112, ptr @3, i32 2, ptr @5, ptr @3)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725530752, ptr @3, i32 4, ptr @5, ptr @3, ptr @3, ptr @3)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725385504, ptr @3, i32 3, ptr @6, ptr @5, ptr @3)
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725492768, ptr @3, i32 2, ptr @5, ptr @3)
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1044480
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725390672, ptr @2, i32 0)
  br label %53

19:                                               ; preds = %22
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725402080, ptr @7, i32 1, ptr @8)
  %20 = add nuw nsw i64 %8, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725398560, ptr @8, i32 1, ptr @2)
  %21 = icmp eq i64 %20, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725390848, ptr @2, i32 0)
  br i1 %21, label %13, label %7, !llvm.loop !11

22:                                               ; preds = %7, %22
  %23 = phi i64 [ 1, %7 ], [ %34, %22 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725556320, ptr @3, i32 2, ptr @3, ptr @5)
  %24 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725394960, ptr @5, i32 1, ptr @9)
  %25 = load float, ptr %24, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725539504, ptr @3, i32 2, ptr @5, ptr @6)
  %26 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725396240, ptr @5, i32 1, ptr @10)
  %27 = load float, ptr %26, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725396368, ptr @10, i32 1, ptr @9)
  %28 = fneg float %27
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725476336, ptr @3, i32 1, ptr @5)
  %29 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725398272, ptr @5, i32 1, ptr @4)
  %30 = load float, ptr %29, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725413680, ptr @3, i32 1, ptr @5)
  %31 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725401072, ptr @5, i32 1, ptr @4)
  %32 = load float, ptr %31, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725401232, ptr @4, i32 1, ptr @4)
  %33 = fadd float %30, %32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725434736, ptr @7, i32 2, ptr @8, ptr @3)
  %34 = add nuw nsw i64 %23, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725417584, ptr @3, i32 1, ptr @5)
  %35 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %34
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725402496, ptr @5, i32 1, ptr @4)
  %36 = load float, ptr %35, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725402656, ptr @4, i32 1, ptr @4)
  %37 = fadd float %33, %36
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725398816, ptr @3, i32 1, ptr @5)
  %38 = getelementptr i8, ptr %24, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725403920, ptr @5, i32 1, ptr @4)
  %39 = load float, ptr %38, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725404080, ptr @4, i32 1, ptr @9)
  %40 = fadd float %37, %39
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725865536, ptr @9, i32 1, ptr @11)
  %41 = insertelement <2 x float> poison, float %25, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725418272, ptr @11, i32 1, ptr @0)
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725843472, ptr @9, i32 1, ptr @9)
  %43 = insertelement <2 x float> poison, float %28, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725411808, ptr @9, i32 1, ptr @0)
  %44 = insertelement <2 x float> %43, float %40, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725400736, ptr @0, i32 2, ptr @12, ptr @12)
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> <float 2.000000e+00, float -4.000000e+00>, <2 x float> %44)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725428768, ptr @12, i32 1, ptr @13)
  %46 = extractelement <2 x float> %45, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725406032, ptr @13, i32 1, ptr @0)
  %47 = fpext float %46 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725408960, ptr @12, i32 1, ptr @13)
  %48 = extractelement <2 x float> %45, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725406480, ptr @13, i32 1, ptr @0)
  %49 = fpext float %48 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725407072, ptr @0, i32 1, ptr @14)
  %50 = tail call double @llvm.fmuladd.f64(double %49, double 1.000000e-01, double %47)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725407216, ptr @14, i32 1, ptr @6)
  %51 = fptrunc double %50 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725406640, ptr @6, i32 0)
  store float %51, ptr %26, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725440976, ptr @8, i32 1, ptr @2)
  %52 = icmp eq i64 %34, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725393088, ptr @2, i32 0)
  br i1 %52, label %19, label %22, !llvm.loop !13

53:                                               ; preds = %13, %53
  %54 = phi i64 [ 1, %13 ], [ %63, %53 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725421664, ptr @3, i32 1, ptr @5)
  %55 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725413840, ptr @5, i32 2, ptr @0, ptr @0)
  %56 = load float, ptr %55, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725478896, ptr @3, i32 2, ptr @5, ptr @6)
  %57 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725414880, ptr @5, i32 1, ptr @10)
  %58 = load float, ptr %57, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725415008, ptr @10, i32 1, ptr @0)
  %59 = fneg float %58
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725415232, ptr @0, i32 1, ptr @13)
  %60 = tail call float @llvm.fmuladd.f32(float %56, float 2.000000e+00, float %59)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725522832, ptr @3, i32 1, ptr @5)
  %61 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725416560, ptr @5, i32 1, ptr @0)
  %62 = load float, ptr %61, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725409376, ptr @7, i32 3, ptr @8, ptr @3, ptr @3)
  %63 = add nuw nsw i64 %54, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725551296, ptr @3, i32 1, ptr @5)
  %64 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %63
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725417744, ptr @5, i32 1, ptr @0)
  %65 = load float, ptr %64, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725417968, ptr @0, i32 1, ptr @4)
  %66 = tail call float @llvm.fmuladd.f32(float %14, float %62, float %65)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725392800, ptr @7, i32 2, ptr @3, ptr @3)
  %67 = add nsw i64 %54, -1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725556112, ptr @3, i32 1, ptr @5)
  %68 = getelementptr inbounds [4 x i8], ptr %0, i64 %67
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725398976, ptr @5, i32 1, ptr @4)
  %69 = load float, ptr %68, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725416720, ptr @4, i32 1, ptr @0)
  %70 = fadd float %66, %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725421888, ptr @0, i32 1, ptr @13)
  %71 = tail call float @llvm.fmuladd.f32(float %56, float -4.000000e+00, float %70)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725422160, ptr @13, i32 1, ptr @0)
  %72 = fpext float %60 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725422416, ptr @13, i32 1, ptr @0)
  %73 = fpext float %71 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725422800, ptr @0, i32 1, ptr @14)
  %74 = tail call double @llvm.fmuladd.f64(double %73, double 1.000000e-01, double %72)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725422944, ptr @14, i32 1, ptr @6)
  %75 = fptrunc double %74 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725422576, ptr @6, i32 0)
  store float %75, ptr %57, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725538976, ptr @3, i32 1, ptr @5)
  %76 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725425232, ptr @5, i32 2, ptr @0, ptr @0)
  %77 = load float, ptr %76, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725527152, ptr @3, i32 2, ptr @5, ptr @6)
  %78 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725426272, ptr @5, i32 1, ptr @10)
  %79 = load float, ptr %78, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725426400, ptr @10, i32 1, ptr @0)
  %80 = fneg float %79
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725426624, ptr @0, i32 1, ptr @13)
  %81 = tail call float @llvm.fmuladd.f32(float %77, float 2.000000e+00, float %80)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725390112, ptr @3, i32 1, ptr @5)
  %82 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725428000, ptr @5, i32 1, ptr @0)
  %83 = load float, ptr %82, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725434992, ptr @3, i32 1, ptr @5)
  %84 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %63
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725429184, ptr @5, i32 1, ptr @0)
  %85 = load float, ptr %84, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725429456, ptr @0, i32 1, ptr @4)
  %86 = tail call float @llvm.fmuladd.f32(float %14, float %83, float %85)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725435616, ptr @3, i32 1, ptr @5)
  %87 = getelementptr inbounds [4 x i8], ptr %16, i64 %67
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725430496, ptr @5, i32 1, ptr @4)
  %88 = load float, ptr %87, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725428160, ptr @4, i32 1, ptr @0)
  %89 = fadd float %86, %88
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725431760, ptr @0, i32 1, ptr @13)
  %90 = tail call float @llvm.fmuladd.f32(float %77, float -4.000000e+00, float %89)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725432032, ptr @13, i32 1, ptr @0)
  %91 = fpext float %81 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725432288, ptr @13, i32 1, ptr @0)
  %92 = fpext float %90 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725432672, ptr @0, i32 1, ptr @14)
  %93 = tail call double @llvm.fmuladd.f64(double %92, double 1.000000e-01, double %91)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725432816, ptr @14, i32 1, ptr @6)
  %94 = fptrunc double %93 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725432448, ptr @6, i32 0)
  store float %94, ptr %78, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606724333088, ptr @8, i32 1, ptr @2)
  %95 = icmp eq i64 %63, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725412416, ptr @2, i32 0)
  br i1 %95, label %167, label %53, !llvm.loop !14

96:                                               ; preds = %167
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725419696, ptr @5, i32 2, ptr @15, ptr @0)
  %97 = load float, ptr %0, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725420496, ptr @5, i32 1, ptr @10)
  %98 = load float, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725420624, ptr @10, i32 1, ptr @0)
  %99 = fneg float %98
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725420848, ptr @0, i32 1, ptr @13)
  %100 = tail call float @llvm.fmuladd.f32(float %97, float 2.000000e+00, float %99)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725410768, ptr @3, i32 1, ptr @5)
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725463504, ptr @5, i32 1, ptr @4)
  %102 = load float, ptr %101, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725464144, ptr @5, i32 1, ptr @4)
  %103 = load float, ptr %15, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725464304, ptr @4, i32 1, ptr @0)
  %104 = fadd float %102, %103
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725553632, ptr @15, i32 1, ptr @0)
  %105 = fmul float %97, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725465616, ptr @0, i32 1, ptr @13)
  %106 = tail call float @llvm.fmuladd.f32(float %14, float %104, float %105)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725465888, ptr @13, i32 1, ptr @0)
  %107 = fpext float %100 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725466144, ptr @13, i32 1, ptr @0)
  %108 = fpext float %106 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725466528, ptr @0, i32 1, ptr @14)
  %109 = tail call double @llvm.fmuladd.f64(double %108, double 1.000000e-01, double %107)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725466672, ptr @14, i32 1, ptr @6)
  %110 = fptrunc double %109 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725466304, ptr @6, i32 0)
  store float %110, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725468480, ptr @5, i32 2, ptr @15, ptr @0)
  %111 = load float, ptr %16, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725469280, ptr @5, i32 1, ptr @10)
  %112 = load float, ptr %17, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725469408, ptr @10, i32 1, ptr @0)
  %113 = fneg float %112
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725469632, ptr @0, i32 1, ptr @13)
  %114 = tail call float @llvm.fmuladd.f32(float %111, float 2.000000e+00, float %113)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725750912, ptr @3, i32 1, ptr @5)
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725470720, ptr @5, i32 1, ptr @4)
  %116 = load float, ptr %115, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725471360, ptr @5, i32 1, ptr @4)
  %117 = load float, ptr %18, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725471520, ptr @4, i32 1, ptr @0)
  %118 = fadd float %116, %117
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725749536, ptr @15, i32 1, ptr @0)
  %119 = fmul float %111, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725472832, ptr @0, i32 1, ptr @13)
  %120 = tail call float @llvm.fmuladd.f32(float %14, float %118, float %119)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725473104, ptr @13, i32 1, ptr @0)
  %121 = fpext float %114 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725473360, ptr @13, i32 1, ptr @0)
  %122 = fpext float %120 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725473744, ptr @0, i32 1, ptr @14)
  %123 = tail call double @llvm.fmuladd.f64(double %122, double 1.000000e-01, double %121)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725473888, ptr @14, i32 1, ptr @6)
  %124 = fptrunc double %123 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725473520, ptr @6, i32 0)
  store float %124, ptr %17, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725472480, ptr @3, i32 1, ptr @5)
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725475696, ptr @5, i32 2, ptr @15, ptr @0)
  %126 = load float, ptr %125, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725749376, ptr @3, i32 2, ptr @5, ptr @6)
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725476496, ptr @5, i32 1, ptr @10)
  %128 = load float, ptr %127, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725476624, ptr @10, i32 1, ptr @0)
  %129 = fneg float %128
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725476848, ptr @0, i32 1, ptr @13)
  %130 = tail call float @llvm.fmuladd.f32(float %126, float 2.000000e+00, float %129)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725324096, ptr @3, i32 1, ptr @5)
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725477936, ptr @5, i32 1, ptr @4)
  %132 = load float, ptr %131, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725318128, ptr @3, i32 1, ptr @5)
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725478576, ptr @5, i32 1, ptr @4)
  %134 = load float, ptr %133, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725478736, ptr @4, i32 1, ptr @0)
  %135 = fadd float %132, %134
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725321280, ptr @15, i32 1, ptr @0)
  %136 = fmul float %126, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725480048, ptr @0, i32 1, ptr @13)
  %137 = tail call float @llvm.fmuladd.f32(float %14, float %135, float %136)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725480320, ptr @13, i32 1, ptr @0)
  %138 = fpext float %130 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725480576, ptr @13, i32 1, ptr @0)
  %139 = fpext float %137 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725480960, ptr @0, i32 1, ptr @14)
  %140 = tail call double @llvm.fmuladd.f64(double %139, double 1.000000e-01, double %138)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725481104, ptr @14, i32 1, ptr @6)
  %141 = fptrunc double %140 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725480736, ptr @6, i32 0)
  store float %141, ptr %127, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725309136, ptr @3, i32 1, ptr @5)
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725482912, ptr @5, i32 2, ptr @15, ptr @0)
  %143 = load float, ptr %142, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725333008, ptr @3, i32 2, ptr @6, ptr @5)
  %144 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725483712, ptr @5, i32 1, ptr @10)
  %145 = load float, ptr %144, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725483840, ptr @10, i32 1, ptr @0)
  %146 = fneg float %145
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725484064, ptr @0, i32 1, ptr @13)
  %147 = tail call float @llvm.fmuladd.f32(float %143, float 2.000000e+00, float %146)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725325456, ptr @3, i32 1, ptr @5)
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725485152, ptr @5, i32 1, ptr @4)
  %149 = load float, ptr %148, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725389840, ptr @3, i32 1, ptr @5)
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725485792, ptr @5, i32 1, ptr @4)
  %151 = load float, ptr %150, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725485952, ptr @4, i32 1, ptr @0)
  %152 = fadd float %149, %151
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725520672, ptr @15, i32 1, ptr @0)
  %153 = fmul float %143, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725487264, ptr @0, i32 1, ptr @13)
  %154 = tail call float @llvm.fmuladd.f32(float %14, float %152, float %153)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725487536, ptr @13, i32 1, ptr @0)
  %155 = fpext float %147 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725487792, ptr @13, i32 1, ptr @0)
  %156 = fpext float %154 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725488176, ptr @0, i32 1, ptr @14)
  %157 = tail call double @llvm.fmuladd.f64(double %156, double 1.000000e-01, double %155)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725488320, ptr @14, i32 1, ptr @6)
  %158 = fptrunc double %157 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725487952, ptr @6, i32 0)
  store float %158, ptr %144, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725490384, ptr @0, i32 1, ptr @15)
  %159 = tail call float @simCalcSinus(float noundef %3) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725486912, ptr @15, i32 1, ptr @4)
  %160 = fmul float %159, 3.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725436176, ptr @16, i32 1, ptr @3)
  %161 = sext i32 %4 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725490688, ptr @3, i32 1, ptr @3)
  %162 = getelementptr inbounds [2048 x i8], ptr %1, i64 %161
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725491808, ptr @16, i32 1, ptr @3)
  %163 = sext i32 %5 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725536880, ptr @3, i32 2, ptr @5, ptr @6)
  %164 = getelementptr inbounds [4 x i8], ptr %162, i64 %163
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725492112, ptr @5, i32 1, ptr @4)
  %165 = load float, ptr %164, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725492272, ptr @4, i32 1, ptr @6)
  %166 = fadd float %165, %160
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725492432, ptr @6, i32 0)
  store float %166, ptr %164, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725321384, ptr @1, i32 0)
  ret void

167:                                              ; preds = %53, %167
  %168 = phi i64 [ %175, %167 ], [ 1, %53 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725543904, ptr @3, i32 6, ptr @3, ptr @3, ptr @3, ptr @3, ptr @3, ptr @5)
  %169 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %168
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725437776, ptr @5, i32 2, ptr @0, ptr @0)
  %170 = load float, ptr %169, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725321936, ptr @3, i32 3, ptr @3, ptr @5, ptr @6)
  %171 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %168
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725438816, ptr @5, i32 1, ptr @10)
  %172 = load float, ptr %171, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725438944, ptr @10, i32 1, ptr @0)
  %173 = fneg float %172
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725439216, ptr @0, i32 1, ptr @13)
  %174 = tail call float @llvm.fmuladd.f32(float %170, float 2.000000e+00, float %173)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725546016, ptr @7, i32 2, ptr @8, ptr @3)
  %175 = add nuw nsw i64 %168, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725323536, ptr @3, i32 2, ptr @3, ptr @5)
  %176 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %175
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725440560, ptr @5, i32 1, ptr @4)
  %177 = load float, ptr %176, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725456736, ptr @3, i32 1, ptr @5)
  %178 = getelementptr i8, ptr %169, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725441584, ptr @5, i32 1, ptr @4)
  %179 = load float, ptr %178, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725441744, ptr @4, i32 1, ptr @0)
  %180 = fadd float %177, %179
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725393232, ptr @3, i32 1, ptr @5)
  %181 = getelementptr inbounds nuw i8, ptr %169, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725442752, ptr @5, i32 1, ptr @0)
  %182 = load float, ptr %181, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725443136, ptr @0, i32 1, ptr @0)
  %183 = tail call float @llvm.fmuladd.f32(float %14, float %182, float %180)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725444256, ptr @0, i32 1, ptr @13)
  %184 = tail call float @llvm.fmuladd.f32(float %170, float -4.000000e+00, float %183)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725444528, ptr @13, i32 1, ptr @0)
  %185 = fpext float %174 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725444784, ptr @13, i32 1, ptr @0)
  %186 = fpext float %184 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725445168, ptr @0, i32 1, ptr @14)
  %187 = tail call double @llvm.fmuladd.f64(double %186, double 1.000000e-01, double %185)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725445312, ptr @14, i32 1, ptr @6)
  %188 = fptrunc double %187 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725444944, ptr @6, i32 0)
  store float %188, ptr %171, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725409104, ptr @3, i32 1, ptr @5)
  %189 = getelementptr inbounds nuw i8, ptr %169, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725447600, ptr @5, i32 2, ptr @0, ptr @0)
  %190 = load float, ptr %189, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725434464, ptr @3, i32 2, ptr @5, ptr @6)
  %191 = getelementptr inbounds nuw i8, ptr %171, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725448640, ptr @5, i32 1, ptr @10)
  %192 = load float, ptr %191, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725448768, ptr @10, i32 1, ptr @0)
  %193 = fneg float %192
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725448992, ptr @0, i32 1, ptr @13)
  %194 = tail call float @llvm.fmuladd.f32(float %190, float 2.000000e+00, float %193)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725471680, ptr @3, i32 1, ptr @5)
  %195 = getelementptr inbounds nuw i8, ptr %176, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725450336, ptr @5, i32 1, ptr @4)
  %196 = load float, ptr %195, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725442912, ptr @3, i32 1, ptr @5)
  %197 = getelementptr i8, ptr %169, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725451360, ptr @5, i32 1, ptr @4)
  %198 = load float, ptr %197, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725451520, ptr @4, i32 1, ptr @0)
  %199 = fadd float %196, %198
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725452688, ptr @3, i32 1, ptr @5)
  %200 = getelementptr inbounds nuw i8, ptr %169, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725452528, ptr @5, i32 1, ptr @0)
  %201 = load float, ptr %200, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725452912, ptr @0, i32 1, ptr @0)
  %202 = tail call float @llvm.fmuladd.f32(float %14, float %201, float %199)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725454032, ptr @0, i32 1, ptr @13)
  %203 = tail call float @llvm.fmuladd.f32(float %190, float -4.000000e+00, float %202)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725454304, ptr @13, i32 1, ptr @0)
  %204 = fpext float %194 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725454560, ptr @13, i32 1, ptr @0)
  %205 = fpext float %203 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725454944, ptr @0, i32 1, ptr @14)
  %206 = tail call double @llvm.fmuladd.f64(double %205, double 1.000000e-01, double %204)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725455088, ptr @14, i32 1, ptr @6)
  %207 = fptrunc double %206 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725454720, ptr @6, i32 0)
  store float %207, ptr %191, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725417328, ptr @8, i32 1, ptr @2)
  %208 = icmp eq i64 %175, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725436352, ptr @2, i32 0)
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
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725430336, ptr @17, i32 1, ptr @2)
  %2 = fcmp ogt float %0, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725384240, ptr @2, i32 0)
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725363296, ptr @17, i32 1, ptr @2)
  %4 = fcmp olt float %0, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725385296, ptr @2, i32 0)
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725385120, ptr @2, i32 0)
  br label %6

6:                                                ; preds = %1, %3, %5
  %7 = phi float [ %0, %3 ], [ -1.000000e+01, %5 ], [ 1.000000e+01, %1 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725508336, ptr @1, i32 0)
  ret float %7
}

; Function Attrs: noreturn nounwind optsize sspstrong uwtable
define dso_local void @app() local_unnamed_addr #6 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725362144, ptr @18, i32 3, ptr @0, ptr @3, ptr @0)
  %1 = alloca [2 x [512 x [512 x float]]], align 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725506976, ptr @0, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725384992, ptr @3, i32 0)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725761568, ptr @0, i32 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2097152) %1, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725522960, ptr @2, i32 0)
  br label %3

3:                                                ; preds = %72, %0
  %4 = phi float [ 5.000000e-01, %0 ], [ %73, %72 ]
  %5 = phi float [ 0.000000e+00, %0 ], [ %76, %72 ]
  %6 = phi i32 [ 256, %0 ], [ %52, %72 ]
  %7 = phi i32 [ 256, %0 ], [ %53, %72 ]
  %8 = phi ptr [ %2, %0 ], [ %9, %72 ]
  %9 = phi ptr [ %1, %0 ], [ %8, %72 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725524512, ptr @0, i32 0)
  call void @emulationStep(ptr noundef %9, ptr noundef %8, float noundef %4, float noundef %5, i32 noundef %7, i32 noundef %6) #11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725527376, ptr @2, i32 0)
  br label %10

10:                                               ; preds = %3, %17
  %11 = phi i64 [ 0, %3 ], [ %18, %17 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725553184, ptr @3, i32 1, ptr @3)
  %12 = getelementptr inbounds nuw [2048 x i8], ptr %9, i64 %11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725394224, ptr @19, i32 1, ptr @0)
  %13 = trunc nuw nsw i64 %11 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725332576, ptr @2, i32 0)
  br label %20

14:                                               ; preds = %17
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725530976, ptr @0, i32 0)
  tail call void (...) @simFlush() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725541456, ptr @0, i32 1, ptr @8)
  %15 = tail call i32 (...) @simHasClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725541632, ptr @8, i32 1, ptr @2)
  %16 = icmp eq i32 %15, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725527552, ptr @2, i32 0)
  br i1 %16, label %51, label %42

17:                                               ; preds = %28
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725538832, ptr @7, i32 1, ptr @8)
  %18 = add nuw nsw i64 %11, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606724232800, ptr @8, i32 1, ptr @2)
  %19 = icmp eq i64 %18, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725528320, ptr @2, i32 0)
  br i1 %19, label %14, label %10, !llvm.loop !16

20:                                               ; preds = %10, %28
  %21 = phi i64 [ 0, %10 ], [ %40, %28 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725397680, ptr @3, i32 1, ptr @5)
  %22 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %21
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725532416, ptr @5, i32 2, ptr @17, ptr @17)
  %23 = load float, ptr %22, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725551744, ptr @17, i32 1, ptr @2)
  %24 = fcmp ogt float %23, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725521056, ptr @2, i32 0)
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725419088, ptr @17, i32 1, ptr @2)
  %26 = fcmp olt float %23, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725389696, ptr @2, i32 0)
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725325088, ptr @2, i32 0)
  br label %28

28:                                               ; preds = %20, %25, %27
  %29 = phi float [ %23, %25 ], [ -1.000000e+01, %27 ], [ 1.000000e+01, %20 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725533312, ptr @13, i32 1, ptr @4)
  %30 = fpext float %29 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725533472, ptr @4, i32 1, ptr @20)
  %31 = fadd double %30, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725533760, ptr @20, i32 1, ptr @14)
  %32 = fdiv double %31, 2.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725533888, ptr @14, i32 1, ptr @15)
  %33 = fptrunc double %32 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725534752, ptr @15, i32 1, ptr @21)
  %34 = fmul float %33, 2.550000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725534880, ptr @21, i32 1, ptr @22)
  %35 = fptosi float %34 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725535024, ptr @22, i32 1, ptr @23)
  %36 = and i32 %35, 255
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725535888, ptr @23, i32 1, ptr @24)
  %37 = mul nuw nsw i32 %36, 65793
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725507936, ptr @24, i32 1, ptr @0)
  %38 = or disjoint i32 %37, -16777216
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725554224, ptr @19, i32 1, ptr @0)
  %39 = trunc nuw nsw i64 %21 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725490000, ptr @0, i32 0)
  tail call void @simPutPixel(i32 noundef %13, i32 noundef %39, i32 noundef %38) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725418592, ptr @7, i32 1, ptr @8)
  %40 = add nuw nsw i64 %21, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606724227952, ptr @8, i32 1, ptr @2)
  %41 = icmp eq i64 %40, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725530560, ptr @2, i32 0)
  br i1 %41, label %17, label %20, !llvm.loop !17

42:                                               ; preds = %14
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725542256, ptr @0, i32 2, ptr @25, ptr @22)
  %43 = tail call i32 (...) @simGetClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725543024, ptr @25, i32 2, ptr @26, ptr @8)
  %44 = ashr i32 %43, 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725543760, ptr @22, i32 2, ptr @26, ptr @8)
  %45 = and i32 %43, 65535
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725400224, ptr @8, i32 1, ptr @26)
  %46 = icmp ult i32 %44, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725545568, ptr @8, i32 1, ptr @26)
  %47 = icmp samesign ult i32 %45, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725423696, ptr @26, i32 2, ptr @26, ptr @26)
  %48 = select i1 %46, i1 %47, i1 false
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725428480, ptr @26, i32 0)
  %49 = select i1 %48, i32 %45, i32 %6
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725520864, ptr @26, i32 0)
  %50 = select i1 %48, i32 %44, i32 %7
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725547456, ptr @2, i32 0)
  br label %51

51:                                               ; preds = %42, %14
  %52 = phi i32 [ %49, %42 ], [ %6, %14 ]
  %53 = phi i32 [ %50, %42 ], [ %7, %14 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725403472, ptr @0, i32 1, ptr @8)
  %54 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725456592, ptr @8, i32 1, ptr @2)
  %55 = icmp eq i32 %54, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725489328, ptr @2, i32 0)
  br i1 %55, label %72, label %56

56:                                               ; preds = %51, %68
  %57 = phi float [ %69, %68 ], [ %4, %51 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725549328, ptr @0, i32 1, ptr @23)
  %58 = tail call i32 (...) @simGetScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725549504, ptr @23, i32 1, ptr @27)
  %59 = mul nsw i32 %58, 5
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725550208, ptr @27, i32 1, ptr @20)
  %60 = sitofp i32 %59 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725550432, ptr @20, i32 1, ptr @14)
  %61 = fdiv double %60, 1.000000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725550560, ptr @14, i32 1, ptr @4)
  %62 = fptrunc double %61 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725551136, ptr @4, i32 2, ptr @17, ptr @17)
  %63 = fadd float %57, %62
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725394800, ptr @17, i32 1, ptr @2)
  %64 = fcmp ogt float %63, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725552304, ptr @2, i32 0)
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725552000, ptr @17, i32 1, ptr @2)
  %66 = fcmp olt float %63, 0.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725553488, ptr @2, i32 0)
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725553312, ptr @2, i32 0)
  br label %68

68:                                               ; preds = %56, %65, %67
  %69 = phi float [ %63, %65 ], [ 0.000000e+00, %67 ], [ 1.000000e+00, %56 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725548080, ptr @0, i32 1, ptr @8)
  %70 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725548256, ptr @8, i32 1, ptr @2)
  %71 = icmp eq i32 %70, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725548704, ptr @2, i32 0)
  br i1 %71, label %72, label %56, !llvm.loop !18

72:                                               ; preds = %68, %51
  %73 = phi float [ %4, %51 ], [ %69, %68 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725555664, ptr @13, i32 1, ptr @4)
  %74 = fpext float %5 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725555824, ptr @4, i32 1, ptr @14)
  %75 = fadd double %74, 5.000000e-02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725555952, ptr @14, i32 0)
  %76 = fptrunc double %75 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94606725556464, ptr @2, i32 0)
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
