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
@9 = private unnamed_addr constant [5 x i8] c"fneg\00", align 1
@10 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@11 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@12 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@13 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@14 = private unnamed_addr constant [5 x i8] c"fcmp\00", align 1
@15 = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@16 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@17 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@18 = private unnamed_addr constant [7 x i8] c"fptosi\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@20 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@21 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@22 = private unnamed_addr constant [5 x i8] c"ashr\00", align 1
@23 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@24 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @initGrids(ptr noundef writeonly captures(none) initializes((0, 2097152)) %0) local_unnamed_addr #0 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110382656, ptr @0, i32 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110055160, ptr @1, i32 0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind optsize sspstrong uwtable
define dso_local void @emulationStep(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110084704, ptr @2, i32 0)
  br label %7

7:                                                ; preds = %6, %19
  %8 = phi i64 [ 1, %6 ], [ %20, %19 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110213792, ptr @3, i32 4, ptr @3, ptr @3, ptr @3, ptr @3)
  %9 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110179952, ptr @3, i32 1, ptr @3)
  %10 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110165264, ptr @3, i32 1, ptr @3)
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110156512, ptr @3, i32 1, ptr @3)
  %12 = getelementptr i8, ptr %9, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110091984, ptr @2, i32 0)
  br label %22

13:                                               ; preds = %19
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110208384, ptr @4, i32 8, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0)
  %14 = fadd float %2, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110316352, ptr @3, i32 2, ptr @5, ptr @3)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110319520, ptr @3, i32 4, ptr @5, ptr @3, ptr @3, ptr @3)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110200560, ptr @3, i32 3, ptr @6, ptr @5, ptr @3)
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110089776, ptr @3, i32 2, ptr @5, ptr @3)
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1044480
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110172528, ptr @2, i32 0)
  br label %48

19:                                               ; preds = %22
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110071568, ptr @7, i32 1, ptr @8)
  %20 = add nuw nsw i64 %8, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824108999696, ptr @8, i32 1, ptr @2)
  %21 = icmp eq i64 %20, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110082064, ptr @2, i32 0)
  br i1 %21, label %13, label %7, !llvm.loop !11

22:                                               ; preds = %7, %22
  %23 = phi i64 [ 1, %7 ], [ %35, %22 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110176112, ptr @3, i32 2, ptr @3, ptr @5)
  %24 = getelementptr inbounds nuw float, ptr %9, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110156672, ptr @5, i32 2, ptr @0, ptr @0)
  %25 = load float, ptr %24, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110181056, ptr @3, i32 2, ptr @5, ptr @6)
  %26 = getelementptr inbounds nuw float, ptr %10, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110157936, ptr @5, i32 1, ptr @9)
  %27 = load float, ptr %26, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110158064, ptr @9, i32 1, ptr @0)
  %28 = fneg float %27
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110053552, ptr @0, i32 1, ptr @10)
  %29 = tail call float @llvm.fmuladd.f32(float %25, float 2.000000e+00, float %28)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110156080, ptr @3, i32 1, ptr @5)
  %30 = getelementptr inbounds nuw float, ptr %11, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110159952, ptr @5, i32 1, ptr @4)
  %31 = load float, ptr %30, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110157776, ptr @3, i32 1, ptr @5)
  %32 = getelementptr inbounds nuw float, ptr %12, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110070576, ptr @5, i32 1, ptr @4)
  %33 = load float, ptr %32, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110070736, ptr @4, i32 1, ptr @4)
  %34 = fadd float %31, %33
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110175120, ptr @7, i32 2, ptr @8, ptr @3)
  %35 = add nuw nsw i64 %23, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110069984, ptr @3, i32 1, ptr @5)
  %36 = getelementptr inbounds nuw float, ptr %9, i64 %35
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110071984, ptr @5, i32 1, ptr @4)
  %37 = load float, ptr %36, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110072144, ptr @4, i32 1, ptr @4)
  %38 = fadd float %34, %37
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110070416, ptr @3, i32 1, ptr @5)
  %39 = getelementptr i8, ptr %24, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110166608, ptr @5, i32 1, ptr @4)
  %40 = load float, ptr %39, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110166768, ptr @4, i32 1, ptr @0)
  %41 = fadd float %38, %40
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110168416, ptr @0, i32 1, ptr @10)
  %42 = tail call float @llvm.fmuladd.f32(float %25, float -4.000000e+00, float %41)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110168832, ptr @10, i32 1, ptr @0)
  %43 = fpext float %29 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110169264, ptr @10, i32 1, ptr @0)
  %44 = fpext float %42 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110169680, ptr @0, i32 1, ptr @11)
  %45 = tail call double @llvm.fmuladd.f64(double %44, double 1.000000e-01, double %43)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110169808, ptr @11, i32 1, ptr @6)
  %46 = fptrunc double %45 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110170944, ptr @6, i32 0)
  store float %46, ptr %26, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110156832, ptr @8, i32 1, ptr @2)
  %47 = icmp eq i64 %35, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110154816, ptr @2, i32 0)
  br i1 %47, label %19, label %22, !llvm.loop !13

48:                                               ; preds = %13, %48
  %49 = phi i64 [ 1, %13 ], [ %58, %48 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110215872, ptr @3, i32 1, ptr @5)
  %50 = getelementptr inbounds nuw float, ptr %0, i64 %49
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110176272, ptr @5, i32 2, ptr @0, ptr @0)
  %51 = load float, ptr %50, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110091856, ptr @3, i32 2, ptr @5, ptr @6)
  %52 = getelementptr inbounds nuw float, ptr %1, i64 %49
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110177296, ptr @5, i32 1, ptr @9)
  %53 = load float, ptr %52, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110177424, ptr @9, i32 1, ptr @0)
  %54 = fneg float %53
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110177632, ptr @0, i32 1, ptr @10)
  %55 = tail call float @llvm.fmuladd.f32(float %51, float 2.000000e+00, float %54)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110305824, ptr @3, i32 1, ptr @5)
  %56 = getelementptr inbounds nuw float, ptr %15, i64 %49
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110179088, ptr @5, i32 1, ptr @0)
  %57 = load float, ptr %56, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110155216, ptr @7, i32 3, ptr @8, ptr @3, ptr @3)
  %58 = add nuw nsw i64 %49, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110305312, ptr @3, i32 1, ptr @5)
  %59 = getelementptr inbounds nuw float, ptr %0, i64 %58
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110180112, ptr @5, i32 1, ptr @0)
  %60 = load float, ptr %59, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110180336, ptr @0, i32 1, ptr @4)
  %61 = tail call float @llvm.fmuladd.f32(float %14, float %57, float %60)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824109004112, ptr @7, i32 2, ptr @3, ptr @3)
  %62 = add nsw i64 %49, -1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110317536, ptr @3, i32 1, ptr @5)
  %63 = getelementptr inbounds float, ptr %0, i64 %62
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110181216, ptr @5, i32 1, ptr @4)
  %64 = load float, ptr %63, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110160368, ptr @4, i32 1, ptr @0)
  %65 = fadd float %61, %64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110161600, ptr @0, i32 1, ptr @10)
  %66 = tail call float @llvm.fmuladd.f32(float %51, float -4.000000e+00, float %65)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110162016, ptr @10, i32 1, ptr @0)
  %67 = fpext float %55 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110162256, ptr @10, i32 1, ptr @0)
  %68 = fpext float %66 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110162464, ptr @0, i32 1, ptr @11)
  %69 = tail call double @llvm.fmuladd.f64(double %68, double 1.000000e-01, double %67)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110162592, ptr @11, i32 1, ptr @6)
  %70 = fptrunc double %69 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110163488, ptr @6, i32 0)
  store float %70, ptr %52, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110083712, ptr @3, i32 1, ptr @5)
  %71 = getelementptr inbounds nuw float, ptr %16, i64 %49
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110164976, ptr @5, i32 2, ptr @0, ptr @0)
  %72 = load float, ptr %71, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110309312, ptr @3, i32 2, ptr @5, ptr @6)
  %73 = getelementptr inbounds nuw float, ptr %17, i64 %49
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110192032, ptr @5, i32 1, ptr @9)
  %74 = load float, ptr %73, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110192160, ptr @9, i32 1, ptr @0)
  %75 = fneg float %74
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110192368, ptr @0, i32 1, ptr @10)
  %76 = tail call float @llvm.fmuladd.f32(float %72, float 2.000000e+00, float %75)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110090208, ptr @3, i32 1, ptr @5)
  %77 = getelementptr inbounds nuw float, ptr %18, i64 %49
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110193872, ptr @5, i32 1, ptr @0)
  %78 = load float, ptr %77, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110262480, ptr @3, i32 1, ptr @5)
  %79 = getelementptr inbounds nuw float, ptr %16, i64 %58
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110194896, ptr @5, i32 1, ptr @0)
  %80 = load float, ptr %79, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110195168, ptr @0, i32 1, ptr @4)
  %81 = tail call float @llvm.fmuladd.f32(float %14, float %78, float %80)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110262912, ptr @3, i32 1, ptr @5)
  %82 = getelementptr inbounds float, ptr %16, i64 %62
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110196048, ptr @5, i32 1, ptr @4)
  %83 = load float, ptr %82, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110196208, ptr @4, i32 1, ptr @0)
  %84 = fadd float %81, %83
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110197440, ptr @0, i32 1, ptr @10)
  %85 = tail call float @llvm.fmuladd.f32(float %72, float -4.000000e+00, float %84)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110197856, ptr @10, i32 1, ptr @0)
  %86 = fpext float %76 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110198096, ptr @10, i32 1, ptr @0)
  %87 = fpext float %85 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110198304, ptr @0, i32 1, ptr @11)
  %88 = tail call double @llvm.fmuladd.f64(double %87, double 1.000000e-01, double %86)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110198432, ptr @11, i32 1, ptr @6)
  %89 = fptrunc double %88 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110199328, ptr @6, i32 0)
  store float %89, ptr %73, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110166192, ptr @8, i32 1, ptr @2)
  %90 = icmp eq i64 %58, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110084112, ptr @2, i32 0)
  br i1 %90, label %162, label %48, !llvm.loop !14

91:                                               ; preds = %162
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110181728, ptr @5, i32 2, ptr @12, ptr @0)
  %92 = load float, ptr %0, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110182368, ptr @5, i32 1, ptr @9)
  %93 = load float, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110201584, ptr @9, i32 1, ptr @0)
  %94 = fneg float %93
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110182592, ptr @0, i32 1, ptr @10)
  %95 = tail call float @llvm.fmuladd.f32(float %92, float 2.000000e+00, float %94)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110148576, ptr @3, i32 1, ptr @5)
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110183808, ptr @5, i32 1, ptr @4)
  %97 = load float, ptr %96, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110184448, ptr @5, i32 1, ptr @4)
  %98 = load float, ptr %15, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110202160, ptr @4, i32 1, ptr @0)
  %99 = fadd float %97, %98
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824109003824, ptr @12, i32 1, ptr @0)
  %100 = fmul float %92, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110185712, ptr @0, i32 1, ptr @10)
  %101 = tail call float @llvm.fmuladd.f32(float %14, float %99, float %100)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110186128, ptr @10, i32 1, ptr @0)
  %102 = fpext float %95 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110186368, ptr @10, i32 1, ptr @0)
  %103 = fpext float %101 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110186576, ptr @0, i32 1, ptr @11)
  %104 = tail call double @llvm.fmuladd.f64(double %103, double 1.000000e-01, double %102)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110186704, ptr @11, i32 1, ptr @6)
  %105 = fptrunc double %104 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110187360, ptr @6, i32 0)
  store float %105, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110188608, ptr @5, i32 2, ptr @12, ptr @0)
  %106 = load float, ptr %16, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110189248, ptr @5, i32 1, ptr @9)
  %107 = load float, ptr %17, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110189376, ptr @9, i32 1, ptr @0)
  %108 = fneg float %107
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110189584, ptr @0, i32 1, ptr @10)
  %109 = tail call float @llvm.fmuladd.f32(float %106, float 2.000000e+00, float %108)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110081024, ptr @3, i32 1, ptr @5)
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110190800, ptr @5, i32 1, ptr @4)
  %111 = load float, ptr %110, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110191440, ptr @5, i32 1, ptr @4)
  %112 = load float, ptr %18, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110184608, ptr @4, i32 1, ptr @0)
  %113 = fadd float %111, %112
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110185392, ptr @12, i32 1, ptr @0)
  %114 = fmul float %106, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110244496, ptr @0, i32 1, ptr @10)
  %115 = tail call float @llvm.fmuladd.f32(float %14, float %113, float %114)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110244912, ptr @10, i32 1, ptr @0)
  %116 = fpext float %109 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110245152, ptr @10, i32 1, ptr @0)
  %117 = fpext float %115 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110245360, ptr @0, i32 1, ptr @11)
  %118 = tail call double @llvm.fmuladd.f64(double %117, double 1.000000e-01, double %116)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110245488, ptr @11, i32 1, ptr @6)
  %119 = fptrunc double %118 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110246144, ptr @6, i32 0)
  store float %119, ptr %17, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110092416, ptr @3, i32 1, ptr @5)
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110247392, ptr @5, i32 2, ptr @12, ptr @0)
  %121 = load float, ptr %120, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110083552, ptr @3, i32 2, ptr @5, ptr @6)
  %122 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110248032, ptr @5, i32 1, ptr @9)
  %123 = load float, ptr %122, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110248160, ptr @9, i32 1, ptr @0)
  %124 = fneg float %123
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110248368, ptr @0, i32 1, ptr @10)
  %125 = tail call float @llvm.fmuladd.f32(float %121, float 2.000000e+00, float %124)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110091632, ptr @3, i32 1, ptr @5)
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110249584, ptr @5, i32 1, ptr @4)
  %127 = load float, ptr %126, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110448272, ptr @3, i32 1, ptr @5)
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110250224, ptr @5, i32 1, ptr @4)
  %129 = load float, ptr %128, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110243392, ptr @4, i32 1, ptr @0)
  %130 = fadd float %127, %129
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110244176, ptr @12, i32 1, ptr @0)
  %131 = fmul float %121, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110251488, ptr @0, i32 1, ptr @10)
  %132 = tail call float @llvm.fmuladd.f32(float %14, float %130, float %131)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110251904, ptr @10, i32 1, ptr @0)
  %133 = fpext float %125 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110252144, ptr @10, i32 1, ptr @0)
  %134 = fpext float %132 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110252352, ptr @0, i32 1, ptr @11)
  %135 = tail call double @llvm.fmuladd.f64(double %134, double 1.000000e-01, double %133)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110252480, ptr @11, i32 1, ptr @6)
  %136 = fptrunc double %135 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110253136, ptr @6, i32 0)
  store float %136, ptr %122, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110066416, ptr @3, i32 1, ptr @5)
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110254384, ptr @5, i32 2, ptr @12, ptr @0)
  %138 = load float, ptr %137, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110077920, ptr @3, i32 2, ptr @6, ptr @5)
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110255024, ptr @5, i32 1, ptr @9)
  %140 = load float, ptr %139, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110255152, ptr @9, i32 1, ptr @0)
  %141 = fneg float %140
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110255360, ptr @0, i32 1, ptr @10)
  %142 = tail call float @llvm.fmuladd.f32(float %138, float 2.000000e+00, float %141)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110092576, ptr @3, i32 1, ptr @5)
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110256576, ptr @5, i32 1, ptr @4)
  %144 = load float, ptr %143, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110093088, ptr @3, i32 1, ptr @5)
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110257216, ptr @5, i32 1, ptr @4)
  %146 = load float, ptr %145, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110250384, ptr @4, i32 1, ptr @0)
  %147 = fadd float %144, %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110251168, ptr @12, i32 1, ptr @0)
  %148 = fmul float %138, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110258480, ptr @0, i32 1, ptr @10)
  %149 = tail call float @llvm.fmuladd.f32(float %14, float %147, float %148)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110258896, ptr @10, i32 1, ptr @0)
  %150 = fpext float %142 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110259136, ptr @10, i32 1, ptr @0)
  %151 = fpext float %149 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110259344, ptr @0, i32 1, ptr @11)
  %152 = tail call double @llvm.fmuladd.f64(double %151, double 1.000000e-01, double %150)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110259472, ptr @11, i32 1, ptr @6)
  %153 = fptrunc double %152 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110260128, ptr @6, i32 0)
  store float %153, ptr %139, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110261440, ptr @0, i32 1, ptr @12)
  %154 = tail call float @simCalcSinus(float noundef %3) #8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110258160, ptr @12, i32 1, ptr @4)
  %155 = fmul float %154, 3.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110262336, ptr @13, i32 1, ptr @3)
  %156 = sext i32 %4 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110447792, ptr @3, i32 1, ptr @3)
  %157 = getelementptr inbounds [512 x float], ptr %1, i64 %156
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110262768, ptr @13, i32 1, ptr @3)
  %158 = sext i32 %5 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110292704, ptr @3, i32 2, ptr @5, ptr @6)
  %159 = getelementptr inbounds float, ptr %157, i64 %158
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110263072, ptr @5, i32 1, ptr @4)
  %160 = load float, ptr %159, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110263232, ptr @4, i32 1, ptr @6)
  %161 = fadd float %160, %155
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110263376, ptr @6, i32 0)
  store float %161, ptr %159, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110081128, ptr @1, i32 0)
  ret void

162:                                              ; preds = %48, %162
  %163 = phi i64 [ %170, %162 ], [ 1, %48 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110083072, ptr @3, i32 6, ptr @3, ptr @3, ptr @3, ptr @3, ptr @3, ptr @5)
  %164 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %163
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110203312, ptr @5, i32 2, ptr @0, ptr @0)
  %165 = load float, ptr %164, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110302544, ptr @3, i32 3, ptr @3, ptr @5, ptr @6)
  %166 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %163
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110204336, ptr @5, i32 1, ptr @9)
  %167 = load float, ptr %166, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110204464, ptr @9, i32 1, ptr @0)
  %168 = fneg float %167
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110204720, ptr @0, i32 1, ptr @10)
  %169 = tail call float @llvm.fmuladd.f32(float %165, float 2.000000e+00, float %168)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110257376, ptr @7, i32 2, ptr @8, ptr @3)
  %170 = add nuw nsw i64 %163, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110321040, ptr @3, i32 2, ptr @3, ptr @5)
  %171 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %170
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110206048, ptr @5, i32 1, ptr @4)
  %172 = load float, ptr %171, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110172400, ptr @3, i32 1, ptr @5)
  %173 = getelementptr i8, ptr %164, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110207072, ptr @5, i32 1, ptr @4)
  %174 = load float, ptr %173, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110207232, ptr @4, i32 1, ptr @0)
  %175 = fadd float %172, %174
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110085072, ptr @3, i32 1, ptr @5)
  %176 = getelementptr inbounds nuw i8, ptr %164, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110208224, ptr @5, i32 1, ptr @0)
  %177 = load float, ptr %176, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110208592, ptr @0, i32 1, ptr @0)
  %178 = tail call float @llvm.fmuladd.f32(float %14, float %177, float %175)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110209696, ptr @0, i32 1, ptr @10)
  %179 = tail call float @llvm.fmuladd.f32(float %165, float -4.000000e+00, float %178)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110210112, ptr @10, i32 1, ptr @0)
  %180 = fpext float %169 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110210352, ptr @10, i32 1, ptr @0)
  %181 = fpext float %179 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110210560, ptr @0, i32 1, ptr @11)
  %182 = tail call double @llvm.fmuladd.f64(double %181, double 1.000000e-01, double %180)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110210688, ptr @11, i32 1, ptr @6)
  %183 = fptrunc double %182 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110211584, ptr @6, i32 0)
  store float %183, ptr %166, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110172176, ptr @3, i32 1, ptr @5)
  %184 = getelementptr inbounds nuw i8, ptr %164, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110213072, ptr @5, i32 2, ptr @0, ptr @0)
  %185 = load float, ptr %184, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110147424, ptr @3, i32 2, ptr @5, ptr @6)
  %186 = getelementptr inbounds nuw i8, ptr %166, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110213952, ptr @5, i32 1, ptr @9)
  %187 = load float, ptr %186, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110214080, ptr @9, i32 1, ptr @0)
  %188 = fneg float %187
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110214288, ptr @0, i32 1, ptr @10)
  %189 = tail call float @llvm.fmuladd.f32(float %185, float 2.000000e+00, float %188)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110321248, ptr @3, i32 1, ptr @5)
  %190 = getelementptr inbounds nuw i8, ptr %171, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110215616, ptr @5, i32 1, ptr @4)
  %191 = load float, ptr %190, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110174864, ptr @3, i32 1, ptr @5)
  %192 = getelementptr i8, ptr %164, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110216640, ptr @5, i32 1, ptr @4)
  %193 = load float, ptr %192, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110216800, ptr @4, i32 1, ptr @0)
  %194 = fadd float %191, %193
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110154960, ptr @3, i32 1, ptr @5)
  %195 = getelementptr inbounds nuw i8, ptr %164, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110217792, ptr @5, i32 1, ptr @0)
  %196 = load float, ptr %195, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110218160, ptr @0, i32 1, ptr @0)
  %197 = tail call float @llvm.fmuladd.f32(float %14, float %196, float %194)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110219264, ptr @0, i32 1, ptr @10)
  %198 = tail call float @llvm.fmuladd.f32(float %185, float -4.000000e+00, float %197)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110219680, ptr @10, i32 1, ptr @0)
  %199 = fpext float %189 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110219920, ptr @10, i32 1, ptr @0)
  %200 = fpext float %198 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110220128, ptr @0, i32 1, ptr @11)
  %201 = tail call double @llvm.fmuladd.f64(double %200, double 1.000000e-01, double %199)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110220256, ptr @11, i32 1, ptr @6)
  %202 = fptrunc double %201 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110221152, ptr @6, i32 0)
  store float %202, ptr %186, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110179696, ptr @8, i32 1, ptr @2)
  %203 = icmp eq i64 %170, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110201760, ptr @2, i32 0)
  br i1 %203, label %91, label %162, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: optsize
declare float @simCalcSinus(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(none) uwtable
define dso_local noundef float @saturate(float noundef %0) local_unnamed_addr #5 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110310352, ptr @14, i32 1, ptr @2)
  %2 = fcmp ogt float %0, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110078384, ptr @2, i32 0)
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110127344, ptr @14, i32 1, ptr @2)
  %4 = fcmp olt float %0, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110148368, ptr @2, i32 0)
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110148192, ptr @2, i32 0)
  br label %6

6:                                                ; preds = %1, %3, %5
  %7 = phi float [ %0, %3 ], [ -1.000000e+01, %5 ], [ 1.000000e+01, %1 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110275120, ptr @1, i32 0)
  ret float %7
}

; Function Attrs: noreturn nounwind optsize sspstrong uwtable
define dso_local void @app() local_unnamed_addr #6 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110125984, ptr @15, i32 3, ptr @0, ptr @3, ptr @0)
  %1 = alloca [2 x [512 x [512 x float]]], align 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110272640, ptr @0, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110166448, ptr @3, i32 0)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110303984, ptr @0, i32 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2097152) %1, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110288496, ptr @2, i32 0)
  br label %3

3:                                                ; preds = %72, %0
  %4 = phi float [ 5.000000e-01, %0 ], [ %73, %72 ]
  %5 = phi float [ 0.000000e+00, %0 ], [ %76, %72 ]
  %6 = phi i32 [ 256, %0 ], [ %52, %72 ]
  %7 = phi i32 [ 256, %0 ], [ %53, %72 ]
  %8 = phi ptr [ %2, %0 ], [ %9, %72 ]
  %9 = phi ptr [ %1, %0 ], [ %8, %72 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110290096, ptr @0, i32 0)
  call void @emulationStep(ptr noundef %9, ptr noundef %8, float noundef %4, float noundef %5, i32 noundef %7, i32 noundef %6) #10
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110304704, ptr @2, i32 0)
  br label %10

10:                                               ; preds = %3, %17
  %11 = phi i64 [ 0, %3 ], [ %18, %17 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110157504, ptr @3, i32 1, ptr @3)
  %12 = getelementptr inbounds nuw [512 x float], ptr %9, i64 %11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110092944, ptr @16, i32 1, ptr @0)
  %13 = trunc nuw nsw i64 %11 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110222000, ptr @2, i32 0)
  br label %20

14:                                               ; preds = %17
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110305552, ptr @0, i32 0)
  tail call void (...) @simFlush() #8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110306944, ptr @0, i32 1, ptr @8)
  %15 = tail call i32 (...) @simHasClick() #8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110307104, ptr @8, i32 1, ptr @2)
  %16 = icmp eq i32 %15, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110293104, ptr @2, i32 0)
  br i1 %16, label %51, label %42

17:                                               ; preds = %28
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110304432, ptr @7, i32 1, ptr @8)
  %18 = add nuw nsw i64 %11, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110274720, ptr @8, i32 1, ptr @2)
  %19 = icmp eq i64 %18, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110294016, ptr @2, i32 0)
  br i1 %19, label %14, label %10, !llvm.loop !16

20:                                               ; preds = %10, %28
  %21 = phi i64 [ 0, %10 ], [ %40, %28 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110156240, ptr @3, i32 1, ptr @5)
  %22 = getelementptr inbounds nuw float, ptr %12, i64 %21
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110298224, ptr @5, i32 2, ptr @14, ptr @14)
  %23 = load float, ptr %22, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824109003536, ptr @14, i32 1, ptr @2)
  %24 = fcmp ogt float %23, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110191760, ptr @2, i32 0)
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824108998112, ptr @14, i32 1, ptr @2)
  %26 = fcmp olt float %23, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110195680, ptr @2, i32 0)
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110082704, ptr @2, i32 0)
  br label %28

28:                                               ; preds = %20, %25, %27
  %29 = phi float [ %23, %25 ], [ -1.000000e+01, %27 ], [ 1.000000e+01, %20 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110299088, ptr @10, i32 1, ptr @4)
  %30 = fpext float %29 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110299232, ptr @4, i32 1, ptr @17)
  %31 = fadd double %30, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110299504, ptr @17, i32 1, ptr @11)
  %32 = fdiv double %31, 2.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110299616, ptr @11, i32 1, ptr @12)
  %33 = fptrunc double %32 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110300448, ptr @12, i32 1, ptr @18)
  %34 = fmul float %33, 2.550000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110300560, ptr @18, i32 1, ptr @19)
  %35 = fptosi float %34 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110300704, ptr @19, i32 1, ptr @20)
  %36 = and i32 %35, 255
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110301552, ptr @20, i32 1, ptr @21)
  %37 = mul nuw nsw i32 %36, 65793
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110302400, ptr @21, i32 1, ptr @0)
  %38 = or disjoint i32 %37, -16777216
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110352480, ptr @16, i32 1, ptr @0)
  %39 = trunc nuw nsw i64 %21 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824109420816, ptr @0, i32 0)
  tail call void @simPutPixel(i32 noundef %13, i32 noundef %39, i32 noundef %38) #8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110337728, ptr @7, i32 1, ptr @8)
  %40 = add nuw nsw i64 %21, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110293728, ptr @8, i32 1, ptr @2)
  %41 = icmp eq i64 %40, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110296384, ptr @2, i32 0)
  br i1 %41, label %17, label %20, !llvm.loop !17

42:                                               ; preds = %14
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110307712, ptr @0, i32 2, ptr @22, ptr @19)
  %43 = tail call i32 (...) @simGetClick() #8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110308448, ptr @22, i32 2, ptr @23, ptr @8)
  %44 = ashr i32 %43, 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110309168, ptr @19, i32 2, ptr @23, ptr @8)
  %45 = and i32 %43, 65535
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110311248, ptr @8, i32 1, ptr @23)
  %46 = icmp ult i32 %44, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110310800, ptr @8, i32 1, ptr @23)
  %47 = icmp samesign ult i32 %45, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110310976, ptr @23, i32 2, ptr @23, ptr @23)
  %48 = select i1 %46, i1 %47, i1 false
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110456912, ptr @23, i32 0)
  %49 = select i1 %48, i32 %45, i32 %6
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110311424, ptr @23, i32 0)
  %50 = select i1 %48, i32 %44, i32 %7
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110312640, ptr @2, i32 0)
  br label %51

51:                                               ; preds = %42, %14
  %52 = phi i32 [ %49, %42 ], [ %6, %14 ]
  %53 = phi i32 [ %50, %42 ], [ %7, %14 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110076544, ptr @0, i32 1, ptr @8)
  %54 = tail call i32 (...) @simHasScroll() #8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110318192, ptr @8, i32 1, ptr @2)
  %55 = icmp eq i32 %54, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110457440, ptr @2, i32 0)
  br i1 %55, label %72, label %56

56:                                               ; preds = %51, %68
  %57 = phi float [ %69, %68 ], [ %4, %51 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110314480, ptr @0, i32 1, ptr @20)
  %58 = tail call i32 (...) @simGetScroll() #8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110314640, ptr @20, i32 1, ptr @24)
  %59 = mul nsw i32 %58, 5
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110315328, ptr @24, i32 1, ptr @17)
  %60 = sitofp i32 %59 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110315536, ptr @17, i32 1, ptr @11)
  %61 = fdiv double %60, 1.000000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110315648, ptr @11, i32 1, ptr @4)
  %62 = fptrunc double %61 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110316208, ptr @4, i32 2, ptr @14, ptr @14)
  %63 = fadd float %57, %62
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110148080, ptr @14, i32 1, ptr @2)
  %64 = fcmp ogt float %63, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110317328, ptr @2, i32 0)
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110317040, ptr @14, i32 1, ptr @2)
  %66 = fcmp olt float %63, 0.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110318480, ptr @2, i32 0)
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110318304, ptr @2, i32 0)
  br label %68

68:                                               ; preds = %56, %65, %67
  %69 = phi float [ %63, %65 ], [ 0.000000e+00, %67 ], [ 1.000000e+00, %56 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110313264, ptr @0, i32 1, ptr @8)
  %70 = tail call i32 (...) @simHasScroll() #8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110313424, ptr @8, i32 1, ptr @2)
  %71 = icmp eq i32 %70, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110313872, ptr @2, i32 0)
  br i1 %71, label %72, label %56, !llvm.loop !18

72:                                               ; preds = %68, %51
  %73 = phi float [ %4, %51 ], [ %69, %68 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110320640, ptr @10, i32 1, ptr @4)
  %74 = fpext float %5 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110320784, ptr @4, i32 1, ptr @11)
  %75 = fadd double %74, 5.000000e-02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110320896, ptr @11, i32 0)
  %76 = fptrunc double %75 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94824110321376, ptr @2, i32 0)
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @logUserOperand(i64, ptr, i32, ...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind optsize sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 22.1.8"}
!5 = !{!6, !6, i64 0}
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
