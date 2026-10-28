; ModuleID = 'app.c'
source_filename = "app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @initGrids(ptr nofree noundef writeonly captures(none) initializes((0, 2097152)) %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind optsize sspstrong uwtable
define dso_local void @emulationStep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  br label %7

7:                                                ; preds = %6, %19
  %8 = phi i64 [ 1, %6 ], [ %20, %19 ]
  %9 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %8
  %10 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %8
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2048
  %12 = getelementptr i8, ptr %9, i64 -2048
  br label %22

13:                                               ; preds = %19
  %14 = fadd float %2, 1.000000e+00
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 1046528
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 1046528
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1044480
  br label %53

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, 511
  br i1 %21, label %13, label %7, !llvm.loop !11

22:                                               ; preds = %7, %22
  %23 = phi i64 [ 1, %7 ], [ %34, %22 ]
  %24 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !9
  %26 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %23
  %27 = load float, ptr %26, align 4, !tbaa !9
  %28 = fneg float %27
  %29 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %23
  %30 = load float, ptr %29, align 4, !tbaa !9
  %31 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %23
  %32 = load float, ptr %31, align 4, !tbaa !9
  %33 = fadd float %30, %32
  %34 = add nuw nsw i64 %23, 1
  %35 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !9
  %37 = fadd float %33, %36
  %38 = getelementptr i8, ptr %24, i64 -4
  %39 = load float, ptr %38, align 4, !tbaa !9
  %40 = fadd float %37, %39
  %41 = insertelement <2 x float> poison, float %25, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = insertelement <2 x float> poison, float %28, i64 0
  %44 = insertelement <2 x float> %43, float %40, i64 1
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> <float 2.000000e+00, float -4.000000e+00>, <2 x float> %44)
  %46 = extractelement <2 x float> %45, i64 0
  %47 = fpext float %46 to double
  %48 = extractelement <2 x float> %45, i64 1
  %49 = fpext float %48 to double
  %50 = tail call double @llvm.fmuladd.f64(double %49, double 1.000000e-01, double %47)
  %51 = fptrunc double %50 to float
  store float %51, ptr %26, align 4, !tbaa !9
  %52 = icmp eq i64 %34, 511
  br i1 %52, label %19, label %22, !llvm.loop !13

53:                                               ; preds = %13, %53
  %54 = phi i64 [ 1, %13 ], [ %63, %53 ]
  %55 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !9
  %57 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %54
  %58 = load float, ptr %57, align 4, !tbaa !9
  %59 = fneg float %58
  %60 = tail call float @llvm.fmuladd.f32(float %56, float 2.000000e+00, float %59)
  %61 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %54
  %62 = load float, ptr %61, align 4, !tbaa !9
  %63 = add nuw nsw i64 %54, 1
  %64 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !9
  %66 = tail call float @llvm.fmuladd.f32(float %14, float %62, float %65)
  %67 = add nsw i64 %54, -1
  %68 = getelementptr inbounds [4 x i8], ptr %0, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !9
  %70 = fadd float %66, %69
  %71 = tail call float @llvm.fmuladd.f32(float %56, float -4.000000e+00, float %70)
  %72 = fpext float %60 to double
  %73 = fpext float %71 to double
  %74 = tail call double @llvm.fmuladd.f64(double %73, double 1.000000e-01, double %72)
  %75 = fptrunc double %74 to float
  store float %75, ptr %57, align 4, !tbaa !9
  %76 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %54
  %77 = load float, ptr %76, align 4, !tbaa !9
  %78 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %54
  %79 = load float, ptr %78, align 4, !tbaa !9
  %80 = fneg float %79
  %81 = tail call float @llvm.fmuladd.f32(float %77, float 2.000000e+00, float %80)
  %82 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %54
  %83 = load float, ptr %82, align 4, !tbaa !9
  %84 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %63
  %85 = load float, ptr %84, align 4, !tbaa !9
  %86 = tail call float @llvm.fmuladd.f32(float %14, float %83, float %85)
  %87 = getelementptr inbounds [4 x i8], ptr %16, i64 %67
  %88 = load float, ptr %87, align 4, !tbaa !9
  %89 = fadd float %86, %88
  %90 = tail call float @llvm.fmuladd.f32(float %77, float -4.000000e+00, float %89)
  %91 = fpext float %81 to double
  %92 = fpext float %90 to double
  %93 = tail call double @llvm.fmuladd.f64(double %92, double 1.000000e-01, double %91)
  %94 = fptrunc double %93 to float
  store float %94, ptr %78, align 4, !tbaa !9
  %95 = icmp eq i64 %63, 511
  br i1 %95, label %167, label %53, !llvm.loop !14

96:                                               ; preds = %167
  %97 = load float, ptr %0, align 4, !tbaa !9
  %98 = load float, ptr %1, align 4, !tbaa !9
  %99 = fneg float %98
  %100 = tail call float @llvm.fmuladd.f32(float %97, float 2.000000e+00, float %99)
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %102 = load float, ptr %101, align 4, !tbaa !9
  %103 = load float, ptr %15, align 4, !tbaa !9
  %104 = fadd float %102, %103
  %105 = fmul float %97, -4.000000e+00
  %106 = tail call float @llvm.fmuladd.f32(float %14, float %104, float %105)
  %107 = fpext float %100 to double
  %108 = fpext float %106 to double
  %109 = tail call double @llvm.fmuladd.f64(double %108, double 1.000000e-01, double %107)
  %110 = fptrunc double %109 to float
  store float %110, ptr %1, align 4, !tbaa !9
  %111 = load float, ptr %16, align 4, !tbaa !9
  %112 = load float, ptr %17, align 4, !tbaa !9
  %113 = fneg float %112
  %114 = tail call float @llvm.fmuladd.f32(float %111, float 2.000000e+00, float %113)
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  %116 = load float, ptr %115, align 4, !tbaa !9
  %117 = load float, ptr %18, align 4, !tbaa !9
  %118 = fadd float %116, %117
  %119 = fmul float %111, -4.000000e+00
  %120 = tail call float @llvm.fmuladd.f32(float %14, float %118, float %119)
  %121 = fpext float %114 to double
  %122 = fpext float %120 to double
  %123 = tail call double @llvm.fmuladd.f64(double %122, double 1.000000e-01, double %121)
  %124 = fptrunc double %123 to float
  store float %124, ptr %17, align 4, !tbaa !9
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  %126 = load float, ptr %125, align 4, !tbaa !9
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  %128 = load float, ptr %127, align 4, !tbaa !9
  %129 = fneg float %128
  %130 = tail call float @llvm.fmuladd.f32(float %126, float 2.000000e+00, float %129)
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %132 = load float, ptr %131, align 4, !tbaa !9
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  %134 = load float, ptr %133, align 4, !tbaa !9
  %135 = fadd float %132, %134
  %136 = fmul float %126, -4.000000e+00
  %137 = tail call float @llvm.fmuladd.f32(float %14, float %135, float %136)
  %138 = fpext float %130 to double
  %139 = fpext float %137 to double
  %140 = tail call double @llvm.fmuladd.f64(double %139, double 1.000000e-01, double %138)
  %141 = fptrunc double %140 to float
  store float %141, ptr %127, align 4, !tbaa !9
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  %143 = load float, ptr %142, align 4, !tbaa !9
  %144 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  %145 = load float, ptr %144, align 4, !tbaa !9
  %146 = fneg float %145
  %147 = tail call float @llvm.fmuladd.f32(float %143, float 2.000000e+00, float %146)
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  %149 = load float, ptr %148, align 4, !tbaa !9
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  %151 = load float, ptr %150, align 4, !tbaa !9
  %152 = fadd float %149, %151
  %153 = fmul float %143, -4.000000e+00
  %154 = tail call float @llvm.fmuladd.f32(float %14, float %152, float %153)
  %155 = fpext float %147 to double
  %156 = fpext float %154 to double
  %157 = tail call double @llvm.fmuladd.f64(double %156, double 1.000000e-01, double %155)
  %158 = fptrunc double %157 to float
  store float %158, ptr %144, align 4, !tbaa !9
  %159 = tail call float @simCalcSinus(float noundef %3) #9
  %160 = fmul float %159, 3.000000e+00
  %161 = sext i32 %4 to i64
  %162 = getelementptr inbounds [2048 x i8], ptr %1, i64 %161
  %163 = sext i32 %5 to i64
  %164 = getelementptr inbounds [4 x i8], ptr %162, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !9
  %166 = fadd float %165, %160
  store float %166, ptr %164, align 4, !tbaa !9
  ret void

167:                                              ; preds = %53, %167
  %168 = phi i64 [ %175, %167 ], [ 1, %53 ]
  %169 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %168
  %170 = load float, ptr %169, align 4, !tbaa !9
  %171 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %168
  %172 = load float, ptr %171, align 4, !tbaa !9
  %173 = fneg float %172
  %174 = tail call float @llvm.fmuladd.f32(float %170, float 2.000000e+00, float %173)
  %175 = add nuw nsw i64 %168, 1
  %176 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %175
  %177 = load float, ptr %176, align 4, !tbaa !9
  %178 = getelementptr i8, ptr %169, i64 -2048
  %179 = load float, ptr %178, align 4, !tbaa !9
  %180 = fadd float %177, %179
  %181 = getelementptr inbounds nuw i8, ptr %169, i64 4
  %182 = load float, ptr %181, align 4, !tbaa !9
  %183 = tail call float @llvm.fmuladd.f32(float %14, float %182, float %180)
  %184 = tail call float @llvm.fmuladd.f32(float %170, float -4.000000e+00, float %183)
  %185 = fpext float %174 to double
  %186 = fpext float %184 to double
  %187 = tail call double @llvm.fmuladd.f64(double %186, double 1.000000e-01, double %185)
  %188 = fptrunc double %187 to float
  store float %188, ptr %171, align 4, !tbaa !9
  %189 = getelementptr inbounds nuw i8, ptr %169, i64 2044
  %190 = load float, ptr %189, align 4, !tbaa !9
  %191 = getelementptr inbounds nuw i8, ptr %171, i64 2044
  %192 = load float, ptr %191, align 4, !tbaa !9
  %193 = fneg float %192
  %194 = tail call float @llvm.fmuladd.f32(float %190, float 2.000000e+00, float %193)
  %195 = getelementptr inbounds nuw i8, ptr %176, i64 2044
  %196 = load float, ptr %195, align 4, !tbaa !9
  %197 = getelementptr i8, ptr %169, i64 -4
  %198 = load float, ptr %197, align 4, !tbaa !9
  %199 = fadd float %196, %198
  %200 = getelementptr inbounds nuw i8, ptr %169, i64 2040
  %201 = load float, ptr %200, align 4, !tbaa !9
  %202 = tail call float @llvm.fmuladd.f32(float %14, float %201, float %199)
  %203 = tail call float @llvm.fmuladd.f32(float %190, float -4.000000e+00, float %202)
  %204 = fpext float %194 to double
  %205 = fpext float %203 to double
  %206 = tail call double @llvm.fmuladd.f64(double %205, double 1.000000e-01, double %204)
  %207 = fptrunc double %206 to float
  store float %207, ptr %191, align 4, !tbaa !9
  %208 = icmp eq i64 %175, 511
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
  %2 = fcmp ogt float %0, 1.000000e+01
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = fcmp olt float %0, -1.000000e+01
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %1, %3, %5
  %7 = phi float [ %0, %3 ], [ -1.000000e+01, %5 ], [ 1.000000e+01, %1 ]
  ret float %7
}

; Function Attrs: noreturn nounwind optsize sspstrong uwtable
define dso_local void @app() local_unnamed_addr #6 {
  %1 = alloca [2 x [512 x [512 x float]]], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1048576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2097152) %1, i8 0, i64 2097152, i1 false), !tbaa !9
  br label %3

3:                                                ; preds = %72, %0
  %4 = phi float [ 5.000000e-01, %0 ], [ %73, %72 ]
  %5 = phi float [ 0.000000e+00, %0 ], [ %76, %72 ]
  %6 = phi i32 [ 256, %0 ], [ %52, %72 ]
  %7 = phi i32 [ 256, %0 ], [ %53, %72 ]
  %8 = phi ptr [ %2, %0 ], [ %9, %72 ]
  %9 = phi ptr [ %1, %0 ], [ %8, %72 ]
  call void @emulationStep(ptr noundef %9, ptr noundef %8, float noundef %4, float noundef %5, i32 noundef %7, i32 noundef %6) #11
  br label %10

10:                                               ; preds = %3, %17
  %11 = phi i64 [ 0, %3 ], [ %18, %17 ]
  %12 = getelementptr inbounds nuw [2048 x i8], ptr %9, i64 %11
  %13 = trunc nuw nsw i64 %11 to i32
  br label %20

14:                                               ; preds = %17
  tail call void (...) @simFlush() #9
  %15 = tail call i32 (...) @simHasClick() #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %51, label %42

17:                                               ; preds = %28
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, 512
  br i1 %19, label %14, label %10, !llvm.loop !16

20:                                               ; preds = %10, %28
  %21 = phi i64 [ 0, %10 ], [ %40, %28 ]
  %22 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !9
  %24 = fcmp ogt float %23, 1.000000e+01
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = fcmp olt float %23, -1.000000e+01
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %20, %25, %27
  %29 = phi float [ %23, %25 ], [ -1.000000e+01, %27 ], [ 1.000000e+01, %20 ]
  %30 = fpext float %29 to double
  %31 = fadd double %30, 1.000000e+01
  %32 = fdiv double %31, 2.000000e+01
  %33 = fptrunc double %32 to float
  %34 = fmul float %33, 2.550000e+02
  %35 = fptosi float %34 to i32
  %36 = and i32 %35, 255
  %37 = mul nuw nsw i32 %36, 65793
  %38 = or disjoint i32 %37, -16777216
  %39 = trunc nuw nsw i64 %21 to i32
  tail call void @simPutPixel(i32 noundef %13, i32 noundef %39, i32 noundef %38) #9
  %40 = add nuw nsw i64 %21, 1
  %41 = icmp eq i64 %40, 512
  br i1 %41, label %17, label %20, !llvm.loop !17

42:                                               ; preds = %14
  %43 = tail call i32 (...) @simGetClick() #9
  %44 = ashr i32 %43, 16
  %45 = and i32 %43, 65535
  %46 = icmp ult i32 %44, 512
  %47 = icmp samesign ult i32 %45, 512
  %48 = select i1 %46, i1 %47, i1 false
  %49 = select i1 %48, i32 %45, i32 %6
  %50 = select i1 %48, i32 %44, i32 %7
  br label %51

51:                                               ; preds = %42, %14
  %52 = phi i32 [ %49, %42 ], [ %6, %14 ]
  %53 = phi i32 [ %50, %42 ], [ %7, %14 ]
  %54 = tail call i32 (...) @simHasScroll() #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51, %68
  %57 = phi float [ %69, %68 ], [ %4, %51 ]
  %58 = tail call i32 (...) @simGetScroll() #9
  %59 = mul nsw i32 %58, 5
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %60, 1.000000e+02
  %62 = fptrunc double %61 to float
  %63 = fadd float %57, %62
  %64 = fcmp ogt float %63, 1.000000e+00
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = fcmp olt float %63, 0.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %56, %65, %67
  %69 = phi float [ %63, %65 ], [ 0.000000e+00, %67 ], [ 1.000000e+00, %56 ]
  %70 = tail call i32 (...) @simHasScroll() #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %56, !llvm.loop !18

72:                                               ; preds = %68, %51
  %73 = phi float [ %4, %51 ], [ %69, %68 ]
  %74 = fpext float %5 to double
  %75 = fadd double %74, 5.000000e-02
  %76 = fptrunc double %75 to float
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
