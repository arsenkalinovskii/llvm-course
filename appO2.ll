; ModuleID = 'App/app.c'
source_filename = "App/app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@0 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@2 = private unnamed_addr constant [14 x i8] c"getelementptr\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@5 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@6 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@7 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@8 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"fneg\00", align 1
@10 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@11 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@12 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@13 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@14 = private unnamed_addr constant [14 x i8] c"insertelement\00", align 1
@15 = private unnamed_addr constant [14 x i8] c"shufflevector\00", align 1
@16 = private unnamed_addr constant [15 x i8] c"extractelement\00", align 1
@17 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@18 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@19 = private unnamed_addr constant [5 x i8] c"fcmp\00", align 1
@20 = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@21 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@22 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@23 = private unnamed_addr constant [7 x i8] c"fptosi\00", align 1
@24 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@25 = private unnamed_addr constant [5 x i8] c"ashr\00", align 1
@26 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@27 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @initGrids(ptr noundef writeonly captures(none) initializes((0, 2097152)) %0) local_unnamed_addr #0 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030229472, ptr @0, i32 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029902040, ptr @1, i32 0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emulationStep(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030145120, ptr @2, i32 1, ptr @3)
  %7 = getelementptr nuw i8, ptr %1, i64 2052
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029936256, ptr @2, i32 1, ptr @3)
  %8 = getelementptr i8, ptr %1, i64 1046524
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030028192, ptr @2, i32 1, ptr @3)
  %9 = getelementptr nuw i8, ptr %0, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029937280, ptr @2, i32 1, ptr @3)
  %10 = getelementptr i8, ptr %0, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030065776, ptr @3, i32 1, ptr @4)
  %11 = icmp ult ptr %7, %10
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030202112, ptr @3, i32 1, ptr @4)
  %12 = icmp ult ptr %9, %8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030014912, ptr @4, i32 1, ptr @5)
  %13 = and i1 %11, %12
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030141040, ptr @5, i32 0)
  br label %14

14:                                               ; preds = %6, %111
  %15 = phi i64 [ 1, %6 ], [ %112, %111 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030060608, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2)
  %16 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %15
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030026768, ptr @2, i32 2, ptr @2, ptr @2)
  %17 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %15
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030012080, ptr @2, i32 2, ptr @2, ptr @2)
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030003328, ptr @2, i32 2, ptr @2, ptr @2)
  %19 = getelementptr i8, ptr %16, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029929760, ptr @5, i32 0)
  br i1 %13, label %20, label %22

20:                                               ; preds = %22, %14
  %21 = phi i64 [ 1, %14 ], [ 509, %22 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030644944, ptr @5, i32 0)
  br label %114

22:                                               ; preds = %14, %22
  %23 = phi i64 [ %48, %22 ], [ 0, %14 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030578880, ptr @6, i32 4, ptr @2, ptr @2, ptr @2, ptr @2)
  %24 = or disjoint i64 %23, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030151760, ptr @2, i32 2, ptr @2, ptr @7)
  %25 = getelementptr inbounds nuw float, ptr %16, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030597168, ptr @7, i32 2, ptr @0, ptr @0)
  %26 = load <4 x float>, ptr %25, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029973568, ptr @2, i32 2, ptr @8, ptr @7)
  %27 = getelementptr inbounds nuw float, ptr %17, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030033056, ptr @7, i32 1, ptr @9)
  %28 = load <4 x float>, ptr %27, align 4, !tbaa !9, !alias.scope !14, !noalias !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030095888, ptr @9, i32 1, ptr @0)
  %29 = fneg <4 x float> %28
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029904512, ptr @0, i32 1, ptr @10)
  %30 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float 2.000000e+00), <4 x float> %29)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030014352, ptr @2, i32 1, ptr @7)
  %31 = getelementptr inbounds nuw float, ptr %18, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030148832, ptr @7, i32 1, ptr @11)
  %32 = load <4 x float>, ptr %31, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030143712, ptr @2, i32 1, ptr @7)
  %33 = getelementptr inbounds nuw float, ptr %19, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030144064, ptr @7, i32 1, ptr @11)
  %34 = load <4 x float>, ptr %33, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030599632, ptr @11, i32 1, ptr @11)
  %35 = fadd <4 x float> %32, %34
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030731952, ptr @2, i32 1, ptr @2)
  %36 = getelementptr inbounds nuw float, ptr %16, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029918704, ptr @2, i32 1, ptr @7)
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030628048, ptr @7, i32 1, ptr @11)
  %38 = load <4 x float>, ptr %37, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030041296, ptr @11, i32 1, ptr @11)
  %39 = fadd <4 x float> %35, %38
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030119664, ptr @2, i32 1, ptr @7)
  %40 = getelementptr i8, ptr %25, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030335696, ptr @7, i32 1, ptr @11)
  %41 = load <4 x float>, ptr %40, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030502496, ptr @11, i32 1, ptr @0)
  %42 = fadd <4 x float> %39, %41
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030028416, ptr @0, i32 1, ptr @10)
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float -4.000000e+00), <4 x float> %42)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030096000, ptr @10, i32 1, ptr @0)
  %44 = fpext <4 x float> %30 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030462976, ptr @10, i32 1, ptr @0)
  %45 = fpext <4 x float> %43 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029929408, ptr @0, i32 1, ptr @12)
  %46 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %45, <4 x double> splat (double 1.000000e-01), <4 x double> %44)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030463088, ptr @12, i32 1, ptr @8)
  %47 = fptrunc <4 x double> %46 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029182912, ptr @8, i32 0)
  store <4 x float> %47, ptr %27, align 4, !tbaa !9, !alias.scope !14, !noalias !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030502640, ptr @13, i32 1, ptr @3)
  %48 = add nuw i64 %23, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030300320, ptr @3, i32 1, ptr @5)
  %49 = icmp eq i64 %48, 508
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030143904, ptr @5, i32 0)
  br i1 %49, label %20, label %22, !llvm.loop !16

50:                                               ; preds = %111
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030055200, ptr @11, i32 10, ptr @14, ptr @14, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0)
  %51 = fadd float %2, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029931952, ptr @2, i32 3, ptr @2, ptr @7, ptr @2)
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030164272, ptr @2, i32 7, ptr @2, ptr @2, ptr @2, ptr @7, ptr @2, ptr @2, ptr @2)
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030001776, ptr @2, i32 5, ptr @3, ptr @2, ptr @8, ptr @7, ptr @2)
  %54 = getelementptr i8, ptr %1, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029936656, ptr @2, i32 3, ptr @2, ptr @7, ptr @2)
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 1044480
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030284384, ptr @2, i32 1, ptr @3)
  %56 = getelementptr i8, ptr %1, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030105456, ptr @2, i32 1, ptr @3)
  %57 = getelementptr i8, ptr %1, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030091472, ptr @2, i32 1, ptr @3)
  %58 = getelementptr i8, ptr %0, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030044048, ptr @3, i32 1, ptr @4)
  %59 = icmp ult ptr %56, %58
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030156816, ptr @3, i32 1, ptr @4)
  %60 = icmp ult ptr %0, %57
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030599776, ptr @4, i32 1, ptr @5)
  %61 = and i1 %59, %60
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030417424, ptr @5, i32 0)
  br i1 %61, label %62, label %64

62:                                               ; preds = %67, %50
  %63 = phi i64 [ 1, %50 ], [ 509, %67 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030644720, ptr @5, i32 0)
  br label %140

64:                                               ; preds = %50
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030053456, ptr @14, i32 1, ptr @15)
  %65 = insertelement <4 x float> poison, float %51, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030017568, ptr @15, i32 2, ptr @0, ptr @0)
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030592928, ptr @5, i32 0)
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i64 [ 0, %64 ], [ %109, %67 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030463232, ptr @6, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2)
  %69 = or disjoint i64 %68, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030625088, ptr @2, i32 1, ptr @7)
  %70 = getelementptr inbounds nuw float, ptr %0, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030586128, ptr @7, i32 2, ptr @0, ptr @0)
  %71 = load <4 x float>, ptr %70, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030298656, ptr @2, i32 2, ptr @8, ptr @7)
  %72 = getelementptr inbounds nuw float, ptr %1, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030105584, ptr @7, i32 1, ptr @9)
  %73 = load <4 x float>, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030413472, ptr @9, i32 1, ptr @0)
  %74 = fneg <4 x float> %73
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030655200, ptr @0, i32 1, ptr @10)
  %75 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float 2.000000e+00), <4 x float> %74)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030038064, ptr @2, i32 1, ptr @7)
  %76 = getelementptr inbounds nuw float, ptr %52, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030136960, ptr @7, i32 1, ptr @0)
  %77 = load <4 x float>, ptr %76, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030593072, ptr @6, i32 2, ptr @2, ptr @2)
  %78 = or disjoint i64 %68, 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030133360, ptr @2, i32 1, ptr @7)
  %79 = getelementptr inbounds nuw float, ptr %0, i64 %78
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030151552, ptr @7, i32 1, ptr @0)
  %80 = load <4 x float>, ptr %79, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029167856, ptr @0, i32 1, ptr @11)
  %81 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %77, <4 x float> %80)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030628848, ptr @2, i32 1, ptr @7)
  %82 = getelementptr inbounds float, ptr %0, i64 %68
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030167216, ptr @7, i32 1, ptr @11)
  %83 = load <4 x float>, ptr %82, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030603984, ptr @11, i32 1, ptr @0)
  %84 = fadd <4 x float> %81, %83
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030595344, ptr @0, i32 1, ptr @10)
  %85 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float -4.000000e+00), <4 x float> %84)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030620688, ptr @10, i32 1, ptr @0)
  %86 = fpext <4 x float> %75 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030620800, ptr @10, i32 1, ptr @0)
  %87 = fpext <4 x float> %85 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030488112, ptr @0, i32 1, ptr @12)
  %88 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %87, <4 x double> splat (double 1.000000e-01), <4 x double> %86)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030620912, ptr @12, i32 1, ptr @8)
  %89 = fptrunc <4 x double> %88 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030610192, ptr @8, i32 0)
  store <4 x float> %89, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030458400, ptr @2, i32 1, ptr @7)
  %90 = getelementptr inbounds nuw float, ptr %53, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030608384, ptr @7, i32 2, ptr @0, ptr @0)
  %91 = load <4 x float>, ptr %90, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030626528, ptr @2, i32 2, ptr @8, ptr @7)
  %92 = getelementptr inbounds nuw float, ptr %54, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029916704, ptr @7, i32 1, ptr @9)
  %93 = load <4 x float>, ptr %92, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030607344, ptr @9, i32 1, ptr @0)
  %94 = fneg <4 x float> %93
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030592432, ptr @0, i32 1, ptr @10)
  %95 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> splat (float 2.000000e+00), <4 x float> %94)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030068448, ptr @2, i32 1, ptr @7)
  %96 = getelementptr inbounds nuw float, ptr %55, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030391024, ptr @7, i32 1, ptr @0)
  %97 = load <4 x float>, ptr %96, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030046624, ptr @2, i32 1, ptr @7)
  %98 = getelementptr inbounds nuw float, ptr %53, i64 %78
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030162496, ptr @7, i32 1, ptr @0)
  %99 = load <4 x float>, ptr %98, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030603616, ptr @0, i32 1, ptr @11)
  %100 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %97, <4 x float> %99)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030556528, ptr @2, i32 1, ptr @7)
  %101 = getelementptr inbounds float, ptr %53, i64 %68
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030137216, ptr @7, i32 1, ptr @11)
  %102 = load <4 x float>, ptr %101, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030603360, ptr @11, i32 1, ptr @0)
  %103 = fadd <4 x float> %100, %102
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030605248, ptr @0, i32 1, ptr @10)
  %104 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> splat (float -4.000000e+00), <4 x float> %103)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030607728, ptr @10, i32 1, ptr @0)
  %105 = fpext <4 x float> %95 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030679520, ptr @10, i32 1, ptr @0)
  %106 = fpext <4 x float> %104 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030056736, ptr @0, i32 1, ptr @12)
  %107 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %106, <4 x double> splat (double 1.000000e-01), <4 x double> %105)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030679904, ptr @12, i32 1, ptr @8)
  %108 = fptrunc <4 x double> %107 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030066240, ptr @8, i32 0)
  store <4 x float> %108, ptr %92, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030141280, ptr @13, i32 1, ptr @3)
  %109 = add nuw i64 %68, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030098464, ptr @3, i32 1, ptr @5)
  %110 = icmp eq i64 %109, 508
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030157264, ptr @5, i32 0)
  br i1 %110, label %62, label %67, !llvm.loop !25

111:                                              ; preds = %114
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029918448, ptr @13, i32 1, ptr @3)
  %112 = add nuw nsw i64 %15, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697028846608, ptr @3, i32 1, ptr @5)
  %113 = icmp eq i64 %112, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029928944, ptr @5, i32 0)
  br i1 %113, label %50, label %14, !llvm.loop !26

114:                                              ; preds = %20, %114
  %115 = phi i64 [ %127, %114 ], [ %21, %20 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030022928, ptr @2, i32 2, ptr @2, ptr @7)
  %116 = getelementptr inbounds nuw float, ptr %16, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030003488, ptr @7, i32 2, ptr @0, ptr @0)
  %117 = load float, ptr %116, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030027872, ptr @2, i32 2, ptr @7, ptr @8)
  %118 = getelementptr inbounds nuw float, ptr %17, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030004752, ptr @7, i32 1, ptr @9)
  %119 = load float, ptr %118, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030004880, ptr @9, i32 1, ptr @0)
  %120 = fneg float %119
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029900432, ptr @0, i32 1, ptr @10)
  %121 = tail call float @llvm.fmuladd.f32(float %117, float 2.000000e+00, float %120)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030002896, ptr @2, i32 1, ptr @7)
  %122 = getelementptr inbounds nuw float, ptr %18, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030006768, ptr @7, i32 1, ptr @11)
  %123 = load float, ptr %122, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030004592, ptr @2, i32 1, ptr @7)
  %124 = getelementptr inbounds nuw float, ptr %19, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029917456, ptr @7, i32 1, ptr @11)
  %125 = load float, ptr %124, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029917616, ptr @11, i32 1, ptr @11)
  %126 = fadd float %123, %125
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030021936, ptr @13, i32 2, ptr @3, ptr @2)
  %127 = add nuw nsw i64 %115, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029916864, ptr @2, i32 1, ptr @7)
  %128 = getelementptr inbounds nuw float, ptr %16, i64 %127
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029918864, ptr @7, i32 1, ptr @11)
  %129 = load float, ptr %128, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029919024, ptr @11, i32 1, ptr @11)
  %130 = fadd float %126, %129
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029917296, ptr @2, i32 1, ptr @7)
  %131 = getelementptr i8, ptr %116, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030013424, ptr @7, i32 1, ptr @11)
  %132 = load float, ptr %131, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030013584, ptr @11, i32 1, ptr @0)
  %133 = fadd float %130, %132
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030015232, ptr @0, i32 1, ptr @10)
  %134 = tail call float @llvm.fmuladd.f32(float %117, float -4.000000e+00, float %133)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030015648, ptr @10, i32 1, ptr @0)
  %135 = fpext float %121 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030016080, ptr @10, i32 1, ptr @0)
  %136 = fpext float %134 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030016496, ptr @0, i32 1, ptr @12)
  %137 = tail call double @llvm.fmuladd.f64(double %136, double 1.000000e-01, double %135)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030016624, ptr @12, i32 1, ptr @8)
  %138 = fptrunc double %137 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030017760, ptr @8, i32 0)
  store float %138, ptr %118, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030144656, ptr @3, i32 1, ptr @5)
  %139 = icmp eq i64 %127, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030001632, ptr @5, i32 0)
  br i1 %139, label %111, label %114, !llvm.loop !27

140:                                              ; preds = %62, %140
  %141 = phi i64 [ %150, %140 ], [ %63, %62 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030018992, ptr @2, i32 1, ptr @7)
  %142 = getelementptr inbounds nuw float, ptr %0, i64 %141
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030023088, ptr @7, i32 2, ptr @0, ptr @0)
  %143 = load float, ptr %142, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029994336, ptr @2, i32 2, ptr @7, ptr @8)
  %144 = getelementptr inbounds nuw float, ptr %1, i64 %141
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030024112, ptr @7, i32 1, ptr @9)
  %145 = load float, ptr %144, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030024240, ptr @9, i32 1, ptr @0)
  %146 = fneg float %145
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030024448, ptr @0, i32 1, ptr @10)
  %147 = tail call float @llvm.fmuladd.f32(float %143, float 2.000000e+00, float %146)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030163088, ptr @2, i32 1, ptr @7)
  %148 = getelementptr inbounds nuw float, ptr %52, i64 %141
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030025904, ptr @7, i32 1, ptr @0)
  %149 = load float, ptr %148, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030002032, ptr @13, i32 3, ptr @3, ptr @2, ptr @2)
  %150 = add nuw nsw i64 %141, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030152560, ptr @2, i32 1, ptr @7)
  %151 = getelementptr inbounds nuw float, ptr %0, i64 %150
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030026928, ptr @7, i32 1, ptr @0)
  %152 = load float, ptr %151, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030027152, ptr @0, i32 1, ptr @11)
  %153 = tail call float @llvm.fmuladd.f32(float %51, float %149, float %152)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697028851024, ptr @13, i32 2, ptr @2, ptr @2)
  %154 = add nsw i64 %141, -1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029929952, ptr @2, i32 1, ptr @7)
  %155 = getelementptr inbounds float, ptr %0, i64 %154
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030028032, ptr @7, i32 1, ptr @11)
  %156 = load float, ptr %155, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030007184, ptr @11, i32 1, ptr @0)
  %157 = fadd float %153, %156
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030008416, ptr @0, i32 1, ptr @10)
  %158 = tail call float @llvm.fmuladd.f32(float %143, float -4.000000e+00, float %157)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030008832, ptr @10, i32 1, ptr @0)
  %159 = fpext float %147 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030009072, ptr @10, i32 1, ptr @0)
  %160 = fpext float %158 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030009280, ptr @0, i32 1, ptr @12)
  %161 = tail call double @llvm.fmuladd.f64(double %160, double 1.000000e-01, double %159)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030009408, ptr @12, i32 1, ptr @8)
  %162 = fptrunc double %161 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030010304, ptr @8, i32 0)
  store float %162, ptr %144, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030021680, ptr @2, i32 1, ptr @7)
  %163 = getelementptr inbounds nuw float, ptr %53, i64 %141
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030011792, ptr @7, i32 2, ptr @0, ptr @0)
  %164 = load float, ptr %163, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030284224, ptr @2, i32 2, ptr @7, ptr @8)
  %165 = getelementptr inbounds nuw float, ptr %54, i64 %141
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030038848, ptr @7, i32 1, ptr @9)
  %166 = load float, ptr %165, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030038976, ptr @9, i32 1, ptr @0)
  %167 = fneg float %166
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030039184, ptr @0, i32 1, ptr @10)
  %168 = tail call float @llvm.fmuladd.f32(float %164, float 2.000000e+00, float %167)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029937088, ptr @2, i32 1, ptr @7)
  %169 = getelementptr inbounds nuw float, ptr %55, i64 %141
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030040688, ptr @7, i32 1, ptr @0)
  %170 = load float, ptr %169, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030109216, ptr @2, i32 1, ptr @7)
  %171 = getelementptr inbounds nuw float, ptr %53, i64 %150
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030041712, ptr @7, i32 1, ptr @0)
  %172 = load float, ptr %171, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030041984, ptr @0, i32 1, ptr @11)
  %173 = tail call float @llvm.fmuladd.f32(float %51, float %170, float %172)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030109648, ptr @2, i32 1, ptr @7)
  %174 = getelementptr inbounds float, ptr %53, i64 %154
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030042864, ptr @7, i32 1, ptr @11)
  %175 = load float, ptr %174, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030043024, ptr @11, i32 1, ptr @0)
  %176 = fadd float %173, %175
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030044256, ptr @0, i32 1, ptr @10)
  %177 = tail call float @llvm.fmuladd.f32(float %164, float -4.000000e+00, float %176)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030044672, ptr @10, i32 1, ptr @0)
  %178 = fpext float %168 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030044912, ptr @10, i32 1, ptr @0)
  %179 = fpext float %177 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030045120, ptr @0, i32 1, ptr @12)
  %180 = tail call double @llvm.fmuladd.f64(double %179, double 1.000000e-01, double %178)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030045248, ptr @12, i32 1, ptr @8)
  %181 = fptrunc double %180 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030046144, ptr @8, i32 0)
  store float %181, ptr %165, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030013008, ptr @3, i32 1, ptr @5)
  %182 = icmp eq i64 %150, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029930992, ptr @5, i32 0)
  br i1 %182, label %183, label %140, !llvm.loop !28

183:                                              ; preds = %140
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030589520, ptr @2, i32 1, ptr @3)
  %184 = getelementptr nuw i8, ptr %1, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030607488, ptr @2, i32 1, ptr @3)
  %185 = getelementptr i8, ptr %0, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030413792, ptr @3, i32 1, ptr @4)
  %186 = icmp ult ptr %184, %185
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030627664, ptr @3, i32 1, ptr @4)
  %187 = icmp ult ptr %0, %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030624944, ptr @4, i32 1, ptr @5)
  %188 = and i1 %186, %187
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030410912, ptr @5, i32 0)
  br i1 %188, label %189, label %191

189:                                              ; preds = %194, %183
  %190 = phi i64 [ 1, %183 ], [ 509, %194 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030599008, ptr @5, i32 0)
  br label %423

191:                                              ; preds = %183
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030303552, ptr @14, i32 1, ptr @15)
  %192 = insertelement <4 x float> poison, float %51, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030023520, ptr @15, i32 2, ptr @0, ptr @0)
  %193 = shufflevector <4 x float> %192, <4 x float> poison, <4 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030603808, ptr @5, i32 0)
  br label %194

194:                                              ; preds = %194, %191
  %195 = phi i64 [ 0, %191 ], [ %350, %194 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030592816, ptr @6, i32 2, ptr @2, ptr @2)
  %196 = or disjoint i64 %195, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030616384, ptr @6, i32 2, ptr @2, ptr @2)
  %197 = or disjoint i64 %195, 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030578160, ptr @6, i32 2, ptr @2, ptr @2)
  %198 = or disjoint i64 %195, 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030621056, ptr @13, i32 2, ptr @2, ptr @2)
  %199 = add i64 %195, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030598192, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %200 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %196
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030656128, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %201 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %197
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030588352, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %202 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %198
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030720064, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %203 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %199
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030629104, ptr @7, i32 1, ptr @14)
  %204 = load float, ptr %200, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030595040, ptr @7, i32 1, ptr @14)
  %205 = load float, ptr %201, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030556656, ptr @7, i32 1, ptr @14)
  %206 = load float, ptr %202, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030579872, ptr @7, i32 1, ptr @14)
  %207 = load float, ptr %203, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030037168, ptr @14, i32 1, ptr @14)
  %208 = insertelement <4 x float> poison, float %204, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030608160, ptr @14, i32 1, ptr @14)
  %209 = insertelement <4 x float> %208, float %205, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030652784, ptr @14, i32 1, ptr @14)
  %210 = insertelement <4 x float> %209, float %206, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030652048, ptr @14, i32 2, ptr @0, ptr @0)
  %211 = insertelement <4 x float> %210, float %207, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030594912, ptr @2, i32 3, ptr @2, ptr @8, ptr @7)
  %212 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %196
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030046784, ptr @2, i32 3, ptr @2, ptr @8, ptr @7)
  %213 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %197
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030488336, ptr @2, i32 2, ptr @2, ptr @7)
  %214 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %198
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030068608, ptr @2, i32 2, ptr @2, ptr @7)
  %215 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %199
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030594496, ptr @7, i32 1, ptr @14)
  %216 = load float, ptr %212, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030620192, ptr @7, i32 1, ptr @14)
  %217 = load float, ptr %213, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030652960, ptr @7, i32 1, ptr @14)
  %218 = load float, ptr %214, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030653824, ptr @7, i32 1, ptr @14)
  %219 = load float, ptr %215, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030713376, ptr @14, i32 1, ptr @14)
  %220 = insertelement <4 x float> poison, float %216, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030730800, ptr @14, i32 1, ptr @14)
  %221 = insertelement <4 x float> %220, float %217, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030730976, ptr @14, i32 1, ptr @14)
  %222 = insertelement <4 x float> %221, float %218, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030731152, ptr @14, i32 1, ptr @9)
  %223 = insertelement <4 x float> %222, float %219, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030458656, ptr @9, i32 1, ptr @0)
  %224 = fneg <4 x float> %223
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030632016, ptr @0, i32 1, ptr @10)
  %225 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %211, <4 x float> splat (float 2.000000e+00), <4 x float> %224)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030579744, ptr @2, i32 2, ptr @2, ptr @2)
  %226 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %195
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030452368, ptr @2, i32 1, ptr @7)
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 4096
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030577616, ptr @2, i32 2, ptr @2, ptr @2)
  %228 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %195
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030452528, ptr @2, i32 1, ptr @7)
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 6144
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030464800, ptr @2, i32 2, ptr @2, ptr @2)
  %230 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %195
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030452688, ptr @2, i32 1, ptr @7)
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 8192
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030767440, ptr @2, i32 2, ptr @2, ptr @2)
  %232 = getelementptr [512 x float], ptr %0, i64 %195
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030452848, ptr @2, i32 1, ptr @7)
  %233 = getelementptr i8, ptr %232, i64 10240
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030587280, ptr @7, i32 1, ptr @14)
  %234 = load float, ptr %227, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030577744, ptr @7, i32 1, ptr @14)
  %235 = load float, ptr %229, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030335824, ptr @7, i32 1, ptr @14)
  %236 = load float, ptr %231, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030287552, ptr @7, i32 1, ptr @14)
  %237 = load float, ptr %233, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030453040, ptr @14, i32 1, ptr @14)
  %238 = insertelement <4 x float> poison, float %234, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030383168, ptr @14, i32 1, ptr @14)
  %239 = insertelement <4 x float> %238, float %235, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030383344, ptr @14, i32 1, ptr @14)
  %240 = insertelement <4 x float> %239, float %236, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030383520, ptr @14, i32 1, ptr @11)
  %241 = insertelement <4 x float> %240, float %237, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030383664, ptr @2, i32 1, ptr @7)
  %242 = getelementptr i8, ptr %200, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030383824, ptr @2, i32 1, ptr @7)
  %243 = getelementptr i8, ptr %201, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030383984, ptr @2, i32 1, ptr @7)
  %244 = getelementptr i8, ptr %202, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030384144, ptr @2, i32 1, ptr @7)
  %245 = getelementptr i8, ptr %203, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030287680, ptr @7, i32 1, ptr @14)
  %246 = load float, ptr %242, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030134512, ptr @7, i32 1, ptr @14)
  %247 = load float, ptr %243, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030134640, ptr @7, i32 1, ptr @14)
  %248 = load float, ptr %244, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030013760, ptr @7, i32 1, ptr @14)
  %249 = load float, ptr %245, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030384336, ptr @14, i32 1, ptr @14)
  %250 = insertelement <4 x float> poison, float %246, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030384512, ptr @14, i32 1, ptr @14)
  %251 = insertelement <4 x float> %250, float %247, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030384688, ptr @14, i32 1, ptr @14)
  %252 = insertelement <4 x float> %251, float %248, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030384864, ptr @14, i32 1, ptr @11)
  %253 = insertelement <4 x float> %252, float %249, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030385008, ptr @11, i32 1, ptr @0)
  %254 = fadd <4 x float> %241, %253
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030385152, ptr @2, i32 1, ptr @7)
  %255 = getelementptr inbounds nuw i8, ptr %200, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030385312, ptr @2, i32 1, ptr @7)
  %256 = getelementptr inbounds nuw i8, ptr %201, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030385472, ptr @2, i32 1, ptr @7)
  %257 = getelementptr inbounds nuw i8, ptr %202, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030385632, ptr @2, i32 1, ptr @7)
  %258 = getelementptr inbounds nuw i8, ptr %203, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030431664, ptr @7, i32 1, ptr @14)
  %259 = load float, ptr %255, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030733744, ptr @7, i32 1, ptr @14)
  %260 = load float, ptr %256, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030628688, ptr @7, i32 1, ptr @14)
  %261 = load float, ptr %257, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030645296, ptr @7, i32 1, ptr @14)
  %262 = load float, ptr %258, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030385824, ptr @14, i32 1, ptr @14)
  %263 = insertelement <4 x float> poison, float %259, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030386000, ptr @14, i32 1, ptr @14)
  %264 = insertelement <4 x float> %263, float %260, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030448656, ptr @14, i32 1, ptr @14)
  %265 = insertelement <4 x float> %264, float %261, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030448832, ptr @14, i32 1, ptr @0)
  %266 = insertelement <4 x float> %265, float %262, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030620064, ptr @0, i32 1, ptr @0)
  %267 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %193, <4 x float> %266, <4 x float> %254)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030587152, ptr @0, i32 1, ptr @10)
  %268 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %211, <4 x float> splat (float -4.000000e+00), <4 x float> %267)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030018320, ptr @10, i32 1, ptr @0)
  %269 = fpext <4 x float> %225 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030018432, ptr @10, i32 1, ptr @0)
  %270 = fpext <4 x float> %268 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030653696, ptr @0, i32 3, ptr @15, ptr @15, ptr @12)
  %271 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %270, <4 x double> splat (double 1.000000e-01), <4 x double> %269)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030008544, ptr @12, i32 2, ptr @16, ptr @16)
  %272 = fptrunc <4 x double> %271 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030448976, ptr @16, i32 1, ptr @8)
  %273 = extractelement <4 x float> %272, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030449120, ptr @16, i32 1, ptr @8)
  %274 = extractelement <4 x float> %272, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030449552, ptr @8, i32 0)
  store float %273, ptr %212, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030449712, ptr @8, i32 0)
  store float %274, ptr %213, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030450192, ptr @2, i32 1, ptr @7)
  %275 = getelementptr inbounds nuw i8, ptr %200, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030450352, ptr @2, i32 1, ptr @7)
  %276 = getelementptr inbounds nuw i8, ptr %201, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030450512, ptr @2, i32 1, ptr @7)
  %277 = getelementptr inbounds nuw i8, ptr %202, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030450672, ptr @2, i32 1, ptr @7)
  %278 = getelementptr inbounds nuw i8, ptr %203, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030600464, ptr @7, i32 1, ptr @14)
  %279 = load float, ptr %275, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030464928, ptr @7, i32 1, ptr @14)
  %280 = load float, ptr %276, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030680880, ptr @7, i32 1, ptr @14)
  %281 = load float, ptr %277, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030450800, ptr @7, i32 1, ptr @14)
  %282 = load float, ptr %278, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030451056, ptr @14, i32 1, ptr @14)
  %283 = insertelement <4 x float> poison, float %279, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030451232, ptr @14, i32 1, ptr @14)
  %284 = insertelement <4 x float> %283, float %280, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030451408, ptr @14, i32 1, ptr @14)
  %285 = insertelement <4 x float> %284, float %281, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030451584, ptr @14, i32 2, ptr @0, ptr @0)
  %286 = insertelement <4 x float> %285, float %282, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030451728, ptr @2, i32 2, ptr @8, ptr @7)
  %287 = getelementptr inbounds nuw i8, ptr %212, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030451888, ptr @2, i32 2, ptr @8, ptr @7)
  %288 = getelementptr inbounds nuw i8, ptr %213, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030452048, ptr @2, i32 2, ptr @8, ptr @7)
  %289 = getelementptr inbounds nuw i8, ptr %214, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030769376, ptr @2, i32 2, ptr @8, ptr @7)
  %290 = getelementptr inbounds nuw i8, ptr %215, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030769504, ptr @7, i32 1, ptr @14)
  %291 = load float, ptr %287, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030769632, ptr @7, i32 1, ptr @14)
  %292 = load float, ptr %288, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030769760, ptr @7, i32 1, ptr @14)
  %293 = load float, ptr %289, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030769888, ptr @7, i32 1, ptr @14)
  %294 = load float, ptr %290, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030770080, ptr @14, i32 1, ptr @14)
  %295 = insertelement <4 x float> poison, float %291, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030770256, ptr @14, i32 1, ptr @14)
  %296 = insertelement <4 x float> %295, float %292, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030770432, ptr @14, i32 1, ptr @14)
  %297 = insertelement <4 x float> %296, float %293, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030770608, ptr @14, i32 1, ptr @9)
  %298 = insertelement <4 x float> %297, float %294, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030008656, ptr @9, i32 1, ptr @0)
  %299 = fneg <4 x float> %298
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030595632, ptr @0, i32 1, ptr @10)
  %300 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %286, <4 x float> splat (float 2.000000e+00), <4 x float> %299)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030633472, ptr @2, i32 1, ptr @7)
  %301 = getelementptr inbounds nuw i8, ptr %226, i64 6140
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030770752, ptr @2, i32 1, ptr @7)
  %302 = getelementptr inbounds nuw i8, ptr %228, i64 8188
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030770912, ptr @2, i32 1, ptr @7)
  %303 = getelementptr inbounds nuw i8, ptr %230, i64 10236
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030771072, ptr @2, i32 1, ptr @7)
  %304 = getelementptr i8, ptr %232, i64 12284
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030771360, ptr @7, i32 1, ptr @14)
  %305 = load float, ptr %301, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030771488, ptr @7, i32 1, ptr @14)
  %306 = load float, ptr %302, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030771616, ptr @7, i32 1, ptr @14)
  %307 = load float, ptr %303, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030771744, ptr @7, i32 1, ptr @14)
  %308 = load float, ptr %304, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030771936, ptr @14, i32 1, ptr @14)
  %309 = insertelement <4 x float> poison, float %305, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030772112, ptr @14, i32 1, ptr @14)
  %310 = insertelement <4 x float> %309, float %306, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030772288, ptr @14, i32 1, ptr @14)
  %311 = insertelement <4 x float> %310, float %307, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030772464, ptr @14, i32 1, ptr @11)
  %312 = insertelement <4 x float> %311, float %308, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030772608, ptr @2, i32 1, ptr @7)
  %313 = getelementptr i8, ptr %200, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030772768, ptr @2, i32 1, ptr @7)
  %314 = getelementptr i8, ptr %201, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030772928, ptr @2, i32 1, ptr @7)
  %315 = getelementptr i8, ptr %202, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030773088, ptr @2, i32 1, ptr @7)
  %316 = getelementptr i8, ptr %203, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030773216, ptr @7, i32 1, ptr @14)
  %317 = load float, ptr %313, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030773344, ptr @7, i32 1, ptr @14)
  %318 = load float, ptr %314, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030773472, ptr @7, i32 1, ptr @14)
  %319 = load float, ptr %315, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030773600, ptr @7, i32 1, ptr @14)
  %320 = load float, ptr %316, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030773792, ptr @14, i32 1, ptr @14)
  %321 = insertelement <4 x float> poison, float %317, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030773968, ptr @14, i32 1, ptr @14)
  %322 = insertelement <4 x float> %321, float %318, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030774144, ptr @14, i32 1, ptr @14)
  %323 = insertelement <4 x float> %322, float %319, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030774320, ptr @14, i32 1, ptr @11)
  %324 = insertelement <4 x float> %323, float %320, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030774464, ptr @11, i32 1, ptr @0)
  %325 = fadd <4 x float> %312, %324
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030774608, ptr @2, i32 1, ptr @7)
  %326 = getelementptr inbounds nuw i8, ptr %200, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030774768, ptr @2, i32 1, ptr @7)
  %327 = getelementptr inbounds nuw i8, ptr %201, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030774928, ptr @2, i32 1, ptr @7)
  %328 = getelementptr inbounds nuw i8, ptr %202, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030775088, ptr @2, i32 1, ptr @7)
  %329 = getelementptr inbounds nuw i8, ptr %203, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030762160, ptr @7, i32 1, ptr @14)
  %330 = load float, ptr %326, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030762352, ptr @7, i32 1, ptr @14)
  %331 = load float, ptr %327, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030762544, ptr @7, i32 1, ptr @14)
  %332 = load float, ptr %328, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030762736, ptr @7, i32 1, ptr @14)
  %333 = load float, ptr %329, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030762992, ptr @14, i32 1, ptr @14)
  %334 = insertelement <4 x float> poison, float %330, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030763168, ptr @14, i32 1, ptr @14)
  %335 = insertelement <4 x float> %334, float %331, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030763344, ptr @14, i32 1, ptr @14)
  %336 = insertelement <4 x float> %335, float %332, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030763520, ptr @14, i32 1, ptr @0)
  %337 = insertelement <4 x float> %336, float %333, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030037840, ptr @0, i32 1, ptr @0)
  %338 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %193, <4 x float> %337, <4 x float> %325)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030597968, ptr @0, i32 1, ptr @10)
  %339 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %286, <4 x float> splat (float -4.000000e+00), <4 x float> %338)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030730272, ptr @10, i32 1, ptr @0)
  %340 = fpext <4 x float> %300 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030730624, ptr @10, i32 1, ptr @0)
  %341 = fpext <4 x float> %339 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030611808, ptr @0, i32 3, ptr @15, ptr @15, ptr @12)
  %342 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %341, <4 x double> splat (double 1.000000e-01), <4 x double> %340)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029918560, ptr @12, i32 2, ptr @16, ptr @16)
  %343 = fptrunc <4 x double> %342 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030763664, ptr @16, i32 1, ptr @8)
  %344 = extractelement <4 x float> %343, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030764096, ptr @16, i32 1, ptr @8)
  %345 = extractelement <4 x float> %343, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030764240, ptr @8, i32 0)
  store float %344, ptr %287, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030007456, ptr @15, i32 1, ptr @12)
  %346 = shufflevector <4 x double> %342, <4 x double> %271, <2 x i32> <i32 1, i32 6>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030598896, ptr @12, i32 1, ptr @8)
  %347 = fptrunc <2 x double> %346 to <2 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030676144, ptr @8, i32 0)
  store <2 x float> %347, ptr %288, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030009680, ptr @15, i32 1, ptr @12)
  %348 = shufflevector <4 x double> %342, <4 x double> %271, <2 x i32> <i32 2, i32 7>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030404384, ptr @12, i32 1, ptr @8)
  %349 = fptrunc <2 x double> %348 to <2 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030487856, ptr @8, i32 0)
  store <2 x float> %349, ptr %289, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030764912, ptr @8, i32 0)
  store float %345, ptr %290, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030765136, ptr @13, i32 1, ptr @3)
  %350 = add nuw i64 %195, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030765280, ptr @3, i32 1, ptr @5)
  %351 = icmp eq i64 %350, 508
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030765456, ptr @5, i32 0)
  br i1 %351, label %189, label %194, !llvm.loop !34

352:                                              ; preds = %423
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030028544, ptr @7, i32 2, ptr @17, ptr @0)
  %353 = load float, ptr %0, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030029184, ptr @7, i32 1, ptr @9)
  %354 = load float, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030048400, ptr @9, i32 1, ptr @0)
  %355 = fneg float %354
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030029408, ptr @0, i32 1, ptr @10)
  %356 = tail call float @llvm.fmuladd.f32(float %353, float 2.000000e+00, float %355)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029995488, ptr @2, i32 1, ptr @7)
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030030624, ptr @7, i32 1, ptr @11)
  %358 = load float, ptr %357, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030031264, ptr @7, i32 1, ptr @11)
  %359 = load float, ptr %52, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030048976, ptr @11, i32 1, ptr @0)
  %360 = fadd float %358, %359
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697028850736, ptr @17, i32 1, ptr @0)
  %361 = fmul float %353, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030032528, ptr @0, i32 1, ptr @10)
  %362 = tail call float @llvm.fmuladd.f32(float %51, float %360, float %361)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030032944, ptr @10, i32 1, ptr @0)
  %363 = fpext float %356 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030033184, ptr @10, i32 1, ptr @0)
  %364 = fpext float %362 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030033392, ptr @0, i32 1, ptr @12)
  %365 = tail call double @llvm.fmuladd.f64(double %364, double 1.000000e-01, double %363)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030033520, ptr @12, i32 1, ptr @8)
  %366 = fptrunc double %365 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030034176, ptr @8, i32 0)
  store float %366, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030035424, ptr @7, i32 2, ptr @17, ptr @0)
  %367 = load float, ptr %53, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030036064, ptr @7, i32 1, ptr @9)
  %368 = load float, ptr %54, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030036192, ptr @9, i32 1, ptr @0)
  %369 = fneg float %368
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030036400, ptr @0, i32 1, ptr @10)
  %370 = tail call float @llvm.fmuladd.f32(float %367, float 2.000000e+00, float %369)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029927904, ptr @2, i32 1, ptr @7)
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030037616, ptr @7, i32 1, ptr @11)
  %372 = load float, ptr %371, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030038256, ptr @7, i32 1, ptr @11)
  %373 = load float, ptr %55, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030031424, ptr @11, i32 1, ptr @0)
  %374 = fadd float %372, %373
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030032208, ptr @17, i32 1, ptr @0)
  %375 = fmul float %367, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030091312, ptr @0, i32 1, ptr @10)
  %376 = tail call float @llvm.fmuladd.f32(float %51, float %374, float %375)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030091728, ptr @10, i32 1, ptr @0)
  %377 = fpext float %370 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030091968, ptr @10, i32 1, ptr @0)
  %378 = fpext float %376 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030092176, ptr @0, i32 1, ptr @12)
  %379 = tail call double @llvm.fmuladd.f64(double %378, double 1.000000e-01, double %377)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030092304, ptr @12, i32 1, ptr @8)
  %380 = fptrunc double %379 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030092960, ptr @8, i32 0)
  store float %380, ptr %54, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029939296, ptr @2, i32 1, ptr @7)
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030094208, ptr @7, i32 2, ptr @17, ptr @0)
  %382 = load float, ptr %381, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029930432, ptr @2, i32 2, ptr @7, ptr @8)
  %383 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030094848, ptr @7, i32 1, ptr @9)
  %384 = load float, ptr %383, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030094976, ptr @9, i32 1, ptr @0)
  %385 = fneg float %384
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030095184, ptr @0, i32 1, ptr @10)
  %386 = tail call float @llvm.fmuladd.f32(float %382, float 2.000000e+00, float %385)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029938512, ptr @2, i32 1, ptr @7)
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030096400, ptr @7, i32 1, ptr @11)
  %388 = load float, ptr %387, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030295088, ptr @2, i32 1, ptr @7)
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030097040, ptr @7, i32 1, ptr @11)
  %390 = load float, ptr %389, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030090208, ptr @11, i32 1, ptr @0)
  %391 = fadd float %388, %390
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030090992, ptr @17, i32 1, ptr @0)
  %392 = fmul float %382, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030098304, ptr @0, i32 1, ptr @10)
  %393 = tail call float @llvm.fmuladd.f32(float %51, float %391, float %392)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030098720, ptr @10, i32 1, ptr @0)
  %394 = fpext float %386 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030098960, ptr @10, i32 1, ptr @0)
  %395 = fpext float %393 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030099168, ptr @0, i32 1, ptr @12)
  %396 = tail call double @llvm.fmuladd.f64(double %395, double 1.000000e-01, double %394)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030099296, ptr @12, i32 1, ptr @8)
  %397 = fptrunc double %396 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030099952, ptr @8, i32 0)
  store float %397, ptr %383, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029913296, ptr @2, i32 1, ptr @7)
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030101200, ptr @7, i32 2, ptr @17, ptr @0)
  %399 = load float, ptr %398, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029924800, ptr @2, i32 2, ptr @8, ptr @7)
  %400 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030101840, ptr @7, i32 1, ptr @9)
  %401 = load float, ptr %400, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030101968, ptr @9, i32 1, ptr @0)
  %402 = fneg float %401
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030102176, ptr @0, i32 1, ptr @10)
  %403 = tail call float @llvm.fmuladd.f32(float %399, float 2.000000e+00, float %402)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029939456, ptr @2, i32 1, ptr @7)
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030103392, ptr @7, i32 1, ptr @11)
  %405 = load float, ptr %404, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029939968, ptr @2, i32 1, ptr @7)
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030104032, ptr @7, i32 1, ptr @11)
  %407 = load float, ptr %406, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030097200, ptr @11, i32 1, ptr @0)
  %408 = fadd float %405, %407
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030097984, ptr @17, i32 1, ptr @0)
  %409 = fmul float %399, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030105296, ptr @0, i32 1, ptr @10)
  %410 = tail call float @llvm.fmuladd.f32(float %51, float %408, float %409)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030105712, ptr @10, i32 1, ptr @0)
  %411 = fpext float %403 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030105952, ptr @10, i32 1, ptr @0)
  %412 = fpext float %410 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030106160, ptr @0, i32 1, ptr @12)
  %413 = tail call double @llvm.fmuladd.f64(double %412, double 1.000000e-01, double %411)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030106288, ptr @12, i32 1, ptr @8)
  %414 = fptrunc double %413 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030106944, ptr @8, i32 0)
  store float %414, ptr %400, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030108176, ptr @0, i32 1, ptr @17)
  %415 = tail call float @simCalcSinus(float noundef %3) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030104976, ptr @17, i32 1, ptr @11)
  %416 = fmul float %415, 3.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030109072, ptr @18, i32 1, ptr @2)
  %417 = sext i32 %4 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030294608, ptr @2, i32 1, ptr @2)
  %418 = getelementptr inbounds [512 x float], ptr %1, i64 %417
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030109504, ptr @18, i32 1, ptr @2)
  %419 = sext i32 %5 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030152048, ptr @2, i32 2, ptr @7, ptr @8)
  %420 = getelementptr inbounds float, ptr %418, i64 %419
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030109808, ptr @7, i32 1, ptr @11)
  %421 = load float, ptr %420, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030109968, ptr @11, i32 1, ptr @8)
  %422 = fadd float %421, %416
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030110112, ptr @8, i32 0)
  store float %422, ptr %420, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029928008, ptr @1, i32 0)
  ret void

423:                                              ; preds = %189, %423
  %424 = phi i64 [ %431, %423 ], [ %190, %189 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030149280, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %425 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %424
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030050128, ptr @7, i32 2, ptr @0, ptr @0)
  %426 = load float, ptr %425, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030167776, ptr @2, i32 3, ptr @2, ptr @7, ptr @8)
  %427 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %424
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030051152, ptr @7, i32 1, ptr @9)
  %428 = load float, ptr %427, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030051280, ptr @9, i32 1, ptr @0)
  %429 = fneg float %428
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030051536, ptr @0, i32 1, ptr @10)
  %430 = tail call float @llvm.fmuladd.f32(float %426, float 2.000000e+00, float %429)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030104192, ptr @13, i32 2, ptr @3, ptr @2)
  %431 = add nuw nsw i64 %424, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030135104, ptr @2, i32 2, ptr @2, ptr @7)
  %432 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %431
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030052864, ptr @7, i32 1, ptr @11)
  %433 = load float, ptr %432, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030143312, ptr @2, i32 1, ptr @7)
  %434 = getelementptr i8, ptr %425, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030053888, ptr @7, i32 1, ptr @11)
  %435 = load float, ptr %434, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030054048, ptr @11, i32 1, ptr @0)
  %436 = fadd float %433, %435
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029930592, ptr @2, i32 1, ptr @7)
  %437 = getelementptr inbounds nuw i8, ptr %425, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030055040, ptr @7, i32 1, ptr @0)
  %438 = load float, ptr %437, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030055408, ptr @0, i32 1, ptr @0)
  %439 = tail call float @llvm.fmuladd.f32(float %51, float %438, float %436)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030056512, ptr @0, i32 1, ptr @10)
  %440 = tail call float @llvm.fmuladd.f32(float %426, float -4.000000e+00, float %439)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030056928, ptr @10, i32 1, ptr @0)
  %441 = fpext float %430 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030057168, ptr @10, i32 1, ptr @0)
  %442 = fpext float %440 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030057376, ptr @0, i32 1, ptr @12)
  %443 = tail call double @llvm.fmuladd.f64(double %442, double 1.000000e-01, double %441)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030057504, ptr @12, i32 1, ptr @8)
  %444 = fptrunc double %443 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030058400, ptr @8, i32 0)
  store float %444, ptr %427, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030048720, ptr @2, i32 1, ptr @7)
  %445 = getelementptr inbounds nuw i8, ptr %425, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030059888, ptr @7, i32 2, ptr @0, ptr @0)
  %446 = load float, ptr %445, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030167984, ptr @2, i32 2, ptr @7, ptr @8)
  %447 = getelementptr inbounds nuw i8, ptr %427, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030060768, ptr @7, i32 1, ptr @9)
  %448 = load float, ptr %447, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030060896, ptr @9, i32 1, ptr @0)
  %449 = fneg float %448
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030061104, ptr @0, i32 1, ptr @10)
  %450 = tail call float @llvm.fmuladd.f32(float %446, float 2.000000e+00, float %449)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030166256, ptr @2, i32 1, ptr @7)
  %451 = getelementptr inbounds nuw i8, ptr %432, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030062432, ptr @7, i32 1, ptr @11)
  %452 = load float, ptr %451, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030062688, ptr @2, i32 1, ptr @7)
  %453 = getelementptr i8, ptr %425, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030063456, ptr @7, i32 1, ptr @11)
  %454 = load float, ptr %453, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030063616, ptr @11, i32 1, ptr @0)
  %455 = fadd float %452, %454
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030156048, ptr @2, i32 1, ptr @7)
  %456 = getelementptr inbounds nuw i8, ptr %425, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030064608, ptr @7, i32 1, ptr @0)
  %457 = load float, ptr %456, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030064976, ptr @0, i32 1, ptr @0)
  %458 = tail call float @llvm.fmuladd.f32(float %51, float %457, float %455)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030066080, ptr @0, i32 1, ptr @10)
  %459 = tail call float @llvm.fmuladd.f32(float %446, float -4.000000e+00, float %458)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030066496, ptr @10, i32 1, ptr @0)
  %460 = fpext float %450 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030066736, ptr @10, i32 1, ptr @0)
  %461 = fpext float %459 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030066944, ptr @0, i32 1, ptr @12)
  %462 = tail call double @llvm.fmuladd.f64(double %461, double 1.000000e-01, double %460)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030067072, ptr @12, i32 1, ptr @8)
  %463 = fptrunc double %462 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030067968, ptr @8, i32 0)
  store float %463, ptr %447, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030026512, ptr @3, i32 1, ptr @5)
  %464 = icmp eq i64 %431, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030048576, ptr @5, i32 0)
  br i1 %464, label %352, label %423, !llvm.loop !35
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare float @simCalcSinus(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef float @saturate(float noundef %0) local_unnamed_addr #5 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030157088, ptr @19, i32 1, ptr @5)
  %2 = fcmp ogt float %0, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029925264, ptr @5, i32 0)
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029974096, ptr @19, i32 1, ptr @5)
  %4 = fcmp olt float %0, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029995280, ptr @5, i32 0)
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029995104, ptr @5, i32 0)
  br label %6

6:                                                ; preds = %1, %3, %5
  %7 = phi float [ %0, %3 ], [ -1.000000e+01, %5 ], [ 1.000000e+01, %1 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030121856, ptr @1, i32 0)
  ret float %7
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @app() local_unnamed_addr #6 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029972736, ptr @20, i32 3, ptr @0, ptr @2, ptr @0)
  %1 = alloca [2 x [512 x [512 x float]]], align 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030119376, ptr @0, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030013264, ptr @2, i32 0)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030069520, ptr @0, i32 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2097152) %1, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030135232, ptr @5, i32 0)
  br label %3

3:                                                ; preds = %72, %0
  %4 = phi float [ 5.000000e-01, %0 ], [ %73, %72 ]
  %5 = phi float [ 0.000000e+00, %0 ], [ %76, %72 ]
  %6 = phi i32 [ 256, %0 ], [ %52, %72 ]
  %7 = phi i32 [ 256, %0 ], [ %53, %72 ]
  %8 = phi ptr [ %2, %0 ], [ %9, %72 ]
  %9 = phi ptr [ %1, %0 ], [ %8, %72 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030136832, ptr @0, i32 0)
  call void @emulationStep(ptr noundef %9, ptr noundef %8, float noundef %4, float noundef %5, i32 noundef %7, i32 noundef %6)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030151440, ptr @5, i32 0)
  br label %10

10:                                               ; preds = %3, %17
  %11 = phi i64 [ 0, %3 ], [ %18, %17 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030004320, ptr @2, i32 1, ptr @2)
  %12 = getelementptr inbounds nuw [512 x float], ptr %9, i64 %11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029939824, ptr @21, i32 1, ptr @0)
  %13 = trunc nuw nsw i64 %11 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030415424, ptr @5, i32 0)
  br label %20

14:                                               ; preds = %17
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030152288, ptr @0, i32 0)
  tail call void (...) @simFlush() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030153680, ptr @0, i32 1, ptr @3)
  %15 = tail call i32 (...) @simHasClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030153840, ptr @3, i32 1, ptr @5)
  %16 = icmp eq i32 %15, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030139840, ptr @5, i32 0)
  br i1 %16, label %51, label %42

17:                                               ; preds = %28
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030151168, ptr @13, i32 1, ptr @3)
  %18 = add nuw nsw i64 %11, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030121456, ptr @3, i32 1, ptr @5)
  %19 = icmp eq i64 %18, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030140752, ptr @5, i32 0)
  br i1 %19, label %14, label %10, !llvm.loop !36

20:                                               ; preds = %10, %28
  %21 = phi i64 [ 0, %10 ], [ %40, %28 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030144368, ptr @2, i32 1, ptr @7)
  %22 = getelementptr inbounds nuw float, ptr %12, i64 %21
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030144960, ptr @7, i32 2, ptr @19, ptr @19)
  %23 = load float, ptr %22, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697028845600, ptr @19, i32 1, ptr @5)
  %24 = fcmp ogt float %23, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030023744, ptr @5, i32 0)
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697028845024, ptr @19, i32 1, ptr @5)
  %26 = fcmp olt float %23, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030158960, ptr @5, i32 0)
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029929584, ptr @5, i32 0)
  br label %28

28:                                               ; preds = %20, %25, %27
  %29 = phi float [ %23, %25 ], [ -1.000000e+01, %27 ], [ 1.000000e+01, %20 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030145824, ptr @10, i32 1, ptr @11)
  %30 = fpext float %29 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030145968, ptr @11, i32 1, ptr @22)
  %31 = fadd double %30, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030146240, ptr @22, i32 1, ptr @12)
  %32 = fdiv double %31, 2.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030146352, ptr @12, i32 1, ptr @17)
  %33 = fptrunc double %32 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030147184, ptr @17, i32 1, ptr @23)
  %34 = fmul float %33, 2.550000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030147296, ptr @23, i32 1, ptr @4)
  %35 = fptosi float %34 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030147440, ptr @4, i32 1, ptr @24)
  %36 = and i32 %35, 255
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030148288, ptr @24, i32 1, ptr @6)
  %37 = mul nuw nsw i32 %36, 65793
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030149136, ptr @6, i32 1, ptr @0)
  %38 = or disjoint i32 %37, -16777216
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030310208, ptr @21, i32 1, ptr @0)
  %39 = trunc nuw nsw i64 %21 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029267728, ptr @0, i32 0)
  tail call void @simPutPixel(i32 noundef %13, i32 noundef %39, i32 noundef %38) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030184608, ptr @13, i32 1, ptr @3)
  %40 = add nuw nsw i64 %21, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030140464, ptr @3, i32 1, ptr @5)
  %41 = icmp eq i64 %40, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030143120, ptr @5, i32 0)
  br i1 %41, label %17, label %20, !llvm.loop !37

42:                                               ; preds = %14
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030154448, ptr @0, i32 2, ptr @25, ptr @4)
  %43 = tail call i32 (...) @simGetClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030155184, ptr @25, i32 2, ptr @26, ptr @3)
  %44 = ashr i32 %43, 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030155904, ptr @4, i32 2, ptr @26, ptr @3)
  %45 = and i32 %43, 65535
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030157984, ptr @3, i32 1, ptr @26)
  %46 = icmp ult i32 %44, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030157536, ptr @3, i32 1, ptr @26)
  %47 = icmp samesign ult i32 %45, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030157712, ptr @26, i32 2, ptr @26, ptr @26)
  %48 = select i1 %46, i1 %47, i1 false
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030303728, ptr @26, i32 0)
  %49 = select i1 %48, i32 %45, i32 %6
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030158160, ptr @26, i32 0)
  %50 = select i1 %48, i32 %44, i32 %7
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030159376, ptr @5, i32 0)
  br label %51

51:                                               ; preds = %42, %14
  %52 = phi i32 [ %49, %42 ], [ %6, %14 ]
  %53 = phi i32 [ %50, %42 ], [ %7, %14 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030137088, ptr @0, i32 1, ptr @3)
  %54 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030164928, ptr @3, i32 1, ptr @5)
  %55 = icmp eq i32 %54, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030304256, ptr @5, i32 0)
  br i1 %55, label %72, label %56

56:                                               ; preds = %51, %68
  %57 = phi float [ %69, %68 ], [ %4, %51 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030161216, ptr @0, i32 1, ptr @24)
  %58 = tail call i32 (...) @simGetScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030161376, ptr @24, i32 1, ptr @27)
  %59 = mul nsw i32 %58, 5
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030162064, ptr @27, i32 1, ptr @22)
  %60 = sitofp i32 %59 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030162272, ptr @22, i32 1, ptr @12)
  %61 = fdiv double %60, 1.000000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030162384, ptr @12, i32 1, ptr @11)
  %62 = fptrunc double %61 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030162944, ptr @11, i32 2, ptr @19, ptr @19)
  %63 = fadd float %57, %62
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697029994992, ptr @19, i32 1, ptr @5)
  %64 = fcmp ogt float %63, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030164064, ptr @5, i32 0)
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030163776, ptr @19, i32 1, ptr @5)
  %66 = fcmp olt float %63, 0.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030165216, ptr @5, i32 0)
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030165040, ptr @5, i32 0)
  br label %68

68:                                               ; preds = %56, %65, %67
  %69 = phi float [ %63, %65 ], [ 0.000000e+00, %67 ], [ 1.000000e+00, %56 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030160000, ptr @0, i32 1, ptr @3)
  %70 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030160160, ptr @3, i32 1, ptr @5)
  %71 = icmp eq i32 %70, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030160608, ptr @5, i32 0)
  br i1 %71, label %72, label %56, !llvm.loop !38

72:                                               ; preds = %68, %51
  %73 = phi float [ %4, %51 ], [ %69, %68 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030167376, ptr @10, i32 1, ptr @11)
  %74 = fpext float %5 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030167520, ptr @11, i32 1, ptr @12)
  %75 = fadd double %74, 5.000000e-02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030167632, ptr @12, i32 0)
  %76 = fptrunc double %75 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94697030168112, ptr @5, i32 0)
  br label %3
}

declare void @simPutPixel(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @simFlush(...) local_unnamed_addr #4

declare i32 @simHasClick(...) local_unnamed_addr #4

declare i32 @simGetClick(...) local_unnamed_addr #4

declare i32 @simHasScroll(...) local_unnamed_addr #4

declare i32 @simGetScroll(...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

declare void @logUserOperand(i64, ptr, i32, ...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !17, !18, !19}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17, !18}
!28 = distinct !{!28, !17, !18}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !17, !18, !19}
!35 = distinct !{!35, !17, !18}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
