; ModuleID = 'app.c'
source_filename = "app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @initGrids(ptr noundef writeonly captures(none) initializes((0, 2097152)) %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nounwind optsize sspstrong memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @emulationStep(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  br label %7

7:                                                ; preds = %6, %19
  %8 = phi i64 [ 1, %6 ], [ %20, %19 ]
  %9 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %8
  %10 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %8
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2048
  %12 = getelementptr i8, ptr %9, i64 -2048
  br label %22

13:                                               ; preds = %19
  %14 = fadd float %2, 1.000000e+00
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 1046528
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 1046528
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1044480
  br label %48

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, 511
  br i1 %21, label %13, label %7, !llvm.loop !11

22:                                               ; preds = %7, %22
  %23 = phi i64 [ 1, %7 ], [ %35, %22 ]
  %24 = getelementptr inbounds nuw float, ptr %9, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !9
  %26 = getelementptr inbounds nuw float, ptr %10, i64 %23
  %27 = load float, ptr %26, align 4, !tbaa !9
  %28 = fneg float %27
  %29 = tail call float @llvm.fmuladd.f32(float %25, float 2.000000e+00, float %28)
  %30 = getelementptr inbounds nuw float, ptr %11, i64 %23
  %31 = load float, ptr %30, align 4, !tbaa !9
  %32 = getelementptr inbounds nuw float, ptr %12, i64 %23
  %33 = load float, ptr %32, align 4, !tbaa !9
  %34 = fadd float %31, %33
  %35 = add nuw nsw i64 %23, 1
  %36 = getelementptr inbounds nuw float, ptr %9, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !9
  %38 = fadd float %34, %37
  %39 = getelementptr i8, ptr %24, i64 -4
  %40 = load float, ptr %39, align 4, !tbaa !9
  %41 = fadd float %38, %40
  %42 = tail call float @llvm.fmuladd.f32(float %25, float -4.000000e+00, float %41)
  %43 = fpext float %29 to double
  %44 = fpext float %42 to double
  %45 = tail call double @llvm.fmuladd.f64(double %44, double 1.000000e-01, double %43)
  %46 = fptrunc double %45 to float
  store float %46, ptr %26, align 4, !tbaa !9
  %47 = icmp eq i64 %35, 511
  br i1 %47, label %19, label %22, !llvm.loop !13

48:                                               ; preds = %13, %48
  %49 = phi i64 [ 1, %13 ], [ %58, %48 ]
  %50 = getelementptr inbounds nuw float, ptr %0, i64 %49
  %51 = load float, ptr %50, align 4, !tbaa !9
  %52 = getelementptr inbounds nuw float, ptr %1, i64 %49
  %53 = load float, ptr %52, align 4, !tbaa !9
  %54 = fneg float %53
  %55 = tail call float @llvm.fmuladd.f32(float %51, float 2.000000e+00, float %54)
  %56 = getelementptr inbounds nuw float, ptr %15, i64 %49
  %57 = load float, ptr %56, align 4, !tbaa !9
  %58 = add nuw nsw i64 %49, 1
  %59 = getelementptr inbounds nuw float, ptr %0, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !9
  %61 = tail call float @llvm.fmuladd.f32(float %14, float %57, float %60)
  %62 = add nsw i64 %49, -1
  %63 = getelementptr inbounds float, ptr %0, i64 %62
  %64 = load float, ptr %63, align 4, !tbaa !9
  %65 = fadd float %61, %64
  %66 = tail call float @llvm.fmuladd.f32(float %51, float -4.000000e+00, float %65)
  %67 = fpext float %55 to double
  %68 = fpext float %66 to double
  %69 = tail call double @llvm.fmuladd.f64(double %68, double 1.000000e-01, double %67)
  %70 = fptrunc double %69 to float
  store float %70, ptr %52, align 4, !tbaa !9
  %71 = getelementptr inbounds nuw float, ptr %16, i64 %49
  %72 = load float, ptr %71, align 4, !tbaa !9
  %73 = getelementptr inbounds nuw float, ptr %17, i64 %49
  %74 = load float, ptr %73, align 4, !tbaa !9
  %75 = fneg float %74
  %76 = tail call float @llvm.fmuladd.f32(float %72, float 2.000000e+00, float %75)
  %77 = getelementptr inbounds nuw float, ptr %18, i64 %49
  %78 = load float, ptr %77, align 4, !tbaa !9
  %79 = getelementptr inbounds nuw float, ptr %16, i64 %58
  %80 = load float, ptr %79, align 4, !tbaa !9
  %81 = tail call float @llvm.fmuladd.f32(float %14, float %78, float %80)
  %82 = getelementptr inbounds float, ptr %16, i64 %62
  %83 = load float, ptr %82, align 4, !tbaa !9
  %84 = fadd float %81, %83
  %85 = tail call float @llvm.fmuladd.f32(float %72, float -4.000000e+00, float %84)
  %86 = fpext float %76 to double
  %87 = fpext float %85 to double
  %88 = tail call double @llvm.fmuladd.f64(double %87, double 1.000000e-01, double %86)
  %89 = fptrunc double %88 to float
  store float %89, ptr %73, align 4, !tbaa !9
  %90 = icmp eq i64 %58, 511
  br i1 %90, label %164, label %48, !llvm.loop !14

91:                                               ; preds = %164
  %92 = load float, ptr %0, align 4, !tbaa !9
  %93 = load float, ptr %1, align 4, !tbaa !9
  %94 = fneg float %93
  %95 = tail call float @llvm.fmuladd.f32(float %92, float 2.000000e+00, float %94)
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %97 = load float, ptr %96, align 4, !tbaa !9
  %98 = load float, ptr %15, align 4, !tbaa !9
  %99 = fadd float %97, %98
  %100 = fmul float %92, -4.000000e+00
  %101 = tail call float @llvm.fmuladd.f32(float %14, float %99, float %100)
  %102 = fpext float %95 to double
  %103 = fpext float %101 to double
  %104 = tail call double @llvm.fmuladd.f64(double %103, double 1.000000e-01, double %102)
  %105 = fptrunc double %104 to float
  store float %105, ptr %1, align 4, !tbaa !9
  %106 = load float, ptr %16, align 4, !tbaa !9
  %107 = load float, ptr %17, align 4, !tbaa !9
  %108 = fneg float %107
  %109 = tail call float @llvm.fmuladd.f32(float %106, float 2.000000e+00, float %108)
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  %111 = load float, ptr %110, align 4, !tbaa !9
  %112 = load float, ptr %18, align 4, !tbaa !9
  %113 = fadd float %111, %112
  %114 = fmul float %106, -4.000000e+00
  %115 = tail call float @llvm.fmuladd.f32(float %14, float %113, float %114)
  %116 = fpext float %109 to double
  %117 = fpext float %115 to double
  %118 = tail call double @llvm.fmuladd.f64(double %117, double 1.000000e-01, double %116)
  %119 = fptrunc double %118 to float
  store float %119, ptr %17, align 4, !tbaa !9
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  %121 = load float, ptr %120, align 4, !tbaa !9
  %122 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  %123 = load float, ptr %122, align 4, !tbaa !9
  %124 = fneg float %123
  %125 = tail call float @llvm.fmuladd.f32(float %121, float 2.000000e+00, float %124)
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %127 = load float, ptr %126, align 4, !tbaa !9
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  %129 = load float, ptr %128, align 4, !tbaa !9
  %130 = fadd float %127, %129
  %131 = fmul float %121, -4.000000e+00
  %132 = tail call float @llvm.fmuladd.f32(float %14, float %130, float %131)
  %133 = fpext float %125 to double
  %134 = fpext float %132 to double
  %135 = tail call double @llvm.fmuladd.f64(double %134, double 1.000000e-01, double %133)
  %136 = fptrunc double %135 to float
  store float %136, ptr %122, align 4, !tbaa !9
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  %138 = load float, ptr %137, align 4, !tbaa !9
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  %140 = load float, ptr %139, align 4, !tbaa !9
  %141 = fneg float %140
  %142 = tail call float @llvm.fmuladd.f32(float %138, float 2.000000e+00, float %141)
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  %144 = load float, ptr %143, align 4, !tbaa !9
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  %146 = load float, ptr %145, align 4, !tbaa !9
  %147 = fadd float %144, %146
  %148 = fmul float %138, -4.000000e+00
  %149 = tail call float @llvm.fmuladd.f32(float %14, float %147, float %148)
  %150 = fpext float %142 to double
  %151 = fpext float %149 to double
  %152 = tail call double @llvm.fmuladd.f64(double %151, double 1.000000e-01, double %150)
  %153 = fptrunc double %152 to float
  store float %153, ptr %139, align 4, !tbaa !9
  %154 = fpext float %3 to double
  %155 = tail call double @sin(double noundef %154) #9, !tbaa !5
  %156 = fmul double %155, 3.000000e+00
  %157 = fptrunc double %156 to float
  %158 = sext i32 %4 to i64
  %159 = getelementptr inbounds [512 x float], ptr %1, i64 %158
  %160 = sext i32 %5 to i64
  %161 = getelementptr inbounds float, ptr %159, i64 %160
  %162 = load float, ptr %161, align 4, !tbaa !9
  %163 = fadd float %162, %157
  store float %163, ptr %161, align 4, !tbaa !9
  ret void

164:                                              ; preds = %48, %164
  %165 = phi i64 [ %172, %164 ], [ 1, %48 ]
  %166 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %165
  %167 = load float, ptr %166, align 4, !tbaa !9
  %168 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %165
  %169 = load float, ptr %168, align 4, !tbaa !9
  %170 = fneg float %169
  %171 = tail call float @llvm.fmuladd.f32(float %167, float 2.000000e+00, float %170)
  %172 = add nuw nsw i64 %165, 1
  %173 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %172
  %174 = load float, ptr %173, align 4, !tbaa !9
  %175 = getelementptr i8, ptr %166, i64 -2048
  %176 = load float, ptr %175, align 4, !tbaa !9
  %177 = fadd float %174, %176
  %178 = getelementptr inbounds nuw i8, ptr %166, i64 4
  %179 = load float, ptr %178, align 4, !tbaa !9
  %180 = tail call float @llvm.fmuladd.f32(float %14, float %179, float %177)
  %181 = tail call float @llvm.fmuladd.f32(float %167, float -4.000000e+00, float %180)
  %182 = fpext float %171 to double
  %183 = fpext float %181 to double
  %184 = tail call double @llvm.fmuladd.f64(double %183, double 1.000000e-01, double %182)
  %185 = fptrunc double %184 to float
  store float %185, ptr %168, align 4, !tbaa !9
  %186 = getelementptr inbounds nuw i8, ptr %166, i64 2044
  %187 = load float, ptr %186, align 4, !tbaa !9
  %188 = getelementptr inbounds nuw i8, ptr %168, i64 2044
  %189 = load float, ptr %188, align 4, !tbaa !9
  %190 = fneg float %189
  %191 = tail call float @llvm.fmuladd.f32(float %187, float 2.000000e+00, float %190)
  %192 = getelementptr inbounds nuw i8, ptr %173, i64 2044
  %193 = load float, ptr %192, align 4, !tbaa !9
  %194 = getelementptr i8, ptr %166, i64 -4
  %195 = load float, ptr %194, align 4, !tbaa !9
  %196 = fadd float %193, %195
  %197 = getelementptr inbounds nuw i8, ptr %166, i64 2040
  %198 = load float, ptr %197, align 4, !tbaa !9
  %199 = tail call float @llvm.fmuladd.f32(float %14, float %198, float %196)
  %200 = tail call float @llvm.fmuladd.f32(float %187, float -4.000000e+00, float %199)
  %201 = fpext float %191 to double
  %202 = fpext float %200 to double
  %203 = tail call double @llvm.fmuladd.f64(double %202, double 1.000000e-01, double %201)
  %204 = fptrunc double %203 to float
  store float %204, ptr %188, align 4, !tbaa !9
  %205 = icmp eq i64 %172, 511
  br i1 %205, label %91, label %164, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nounwind optsize willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

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
  %12 = getelementptr inbounds nuw [512 x float], ptr %9, i64 %11
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
  %22 = getelementptr inbounds nuw float, ptr %12, i64 %21
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
declare void @simPutPixel(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @simFlush(...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @simHasClick(...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @simGetClick(...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @simHasScroll(...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @simGetScroll(...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nounwind optsize sspstrong memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind optsize willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind optsize sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

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
