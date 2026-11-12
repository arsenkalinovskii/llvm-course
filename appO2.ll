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
define dso_local void @initGrids(ptr nofree noundef writeonly captures(none) initializes((0, 2097152)) %0) local_unnamed_addr #0 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307581696, ptr @0, i32 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307363880, ptr @1, i32 0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emulationStep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307457872, ptr @2, i32 1, ptr @3)
  %7 = getelementptr nuw i8, ptr %1, i64 2052
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307495120, ptr @2, i32 1, ptr @3)
  %8 = getelementptr i8, ptr %1, i64 1046524
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307476064, ptr @2, i32 1, ptr @3)
  %9 = getelementptr nuw i8, ptr %0, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307398032, ptr @2, i32 1, ptr @3)
  %10 = getelementptr i8, ptr %0, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307496176, ptr @3, i32 1, ptr @4)
  %11 = icmp ult ptr %7, %10
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307500416, ptr @3, i32 1, ptr @4)
  %12 = icmp ult ptr %9, %8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307605264, ptr @4, i32 1, ptr @5)
  %13 = and i1 %11, %12
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307456160, ptr @5, i32 0)
  br label %14

14:                                               ; preds = %6, %111
  %15 = phi i64 [ 1, %6 ], [ %112, %111 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307586320, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2)
  %16 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %15
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307614416, ptr @2, i32 2, ptr @2, ptr @2)
  %17 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %15
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307448272, ptr @2, i32 2, ptr @2, ptr @2)
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307549648, ptr @2, i32 2, ptr @2, ptr @2)
  %19 = getelementptr i8, ptr %16, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307398272, ptr @5, i32 0)
  br i1 %13, label %20, label %22

20:                                               ; preds = %22, %14
  %21 = phi i64 [ 1, %14 ], [ 509, %22 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308248736, ptr @5, i32 0)
  br label %114

22:                                               ; preds = %14, %22
  %23 = phi i64 [ %48, %22 ], [ 0, %14 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308190880, ptr @6, i32 4, ptr @2, ptr @2, ptr @2, ptr @2)
  %24 = or disjoint i64 %23, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307557968, ptr @2, i32 2, ptr @2, ptr @7)
  %25 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308131184, ptr @7, i32 2, ptr @0, ptr @0)
  %26 = load <4 x float>, ptr %25, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307618528, ptr @2, i32 2, ptr @8, ptr @7)
  %27 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308128608, ptr @7, i32 1, ptr @9)
  %28 = load <4 x float>, ptr %27, align 4, !tbaa !9, !alias.scope !14, !noalias !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307478208, ptr @9, i32 1, ptr @0)
  %29 = fneg <4 x float> %28
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308134432, ptr @0, i32 1, ptr @10)
  %30 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float 2.000000e+00), <4 x float> %29)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307551760, ptr @2, i32 1, ptr @7)
  %31 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307479504, ptr @7, i32 1, ptr @11)
  %32 = load <4 x float>, ptr %31, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307620848, ptr @2, i32 1, ptr @7)
  %33 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307604688, ptr @7, i32 1, ptr @11)
  %34 = load <4 x float>, ptr %33, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307491120, ptr @11, i32 1, ptr @11)
  %35 = fadd <4 x float> %32, %34
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307969712, ptr @2, i32 1, ptr @2)
  %36 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307620688, ptr @2, i32 1, ptr @7)
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307618848, ptr @7, i32 1, ptr @11)
  %38 = load <4 x float>, ptr %37, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307555264, ptr @11, i32 1, ptr @11)
  %39 = fadd <4 x float> %35, %38
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307478656, ptr @2, i32 1, ptr @7)
  %40 = getelementptr i8, ptr %25, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307387104, ptr @7, i32 1, ptr @11)
  %41 = load <4 x float>, ptr %40, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307931328, ptr @11, i32 1, ptr @0)
  %42 = fadd <4 x float> %39, %41
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307959648, ptr @0, i32 1, ptr @10)
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float -4.000000e+00), <4 x float> %42)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307478880, ptr @10, i32 1, ptr @0)
  %44 = fpext <4 x float> %30 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307480544, ptr @10, i32 1, ptr @0)
  %45 = fpext <4 x float> %43 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307957072, ptr @0, i32 1, ptr @12)
  %46 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %45, <4 x double> splat (double 1.000000e-01), <4 x double> %44)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307532112, ptr @12, i32 1, ptr @8)
  %47 = fptrunc <4 x double> %46 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307960528, ptr @8, i32 0)
  store <4 x float> %47, ptr %27, align 4, !tbaa !9, !alias.scope !14, !noalias !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307494864, ptr @13, i32 1, ptr @3)
  %48 = add nuw i64 %23, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308133024, ptr @3, i32 1, ptr @5)
  %49 = icmp eq i64 %48, 508
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307558992, ptr @5, i32 0)
  br i1 %49, label %20, label %22, !llvm.loop !16

50:                                               ; preds = %111
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307450640, ptr @11, i32 10, ptr @14, ptr @14, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0)
  %51 = fadd float %2, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307552208, ptr @2, i32 3, ptr @2, ptr @7, ptr @2)
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307596768, ptr @2, i32 7, ptr @2, ptr @2, ptr @2, ptr @7, ptr @2, ptr @2, ptr @2)
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307451696, ptr @2, i32 5, ptr @3, ptr @2, ptr @8, ptr @7, ptr @2)
  %54 = getelementptr i8, ptr %1, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307558784, ptr @2, i32 3, ptr @2, ptr @7, ptr @2)
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 1044480
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308134736, ptr @2, i32 1, ptr @3)
  %56 = getelementptr i8, ptr %1, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307506816, ptr @2, i32 1, ptr @3)
  %57 = getelementptr i8, ptr %1, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308144608, ptr @2, i32 1, ptr @3)
  %58 = getelementptr i8, ptr %0, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307807472, ptr @3, i32 1, ptr @4)
  %59 = icmp ult ptr %56, %58
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307426048, ptr @3, i32 1, ptr @4)
  %60 = icmp ult ptr %0, %57
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307602368, ptr @4, i32 1, ptr @5)
  %61 = and i1 %59, %60
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307515824, ptr @5, i32 0)
  br i1 %61, label %62, label %64

62:                                               ; preds = %67, %50
  %63 = phi i64 [ 1, %50 ], [ 509, %67 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308249184, ptr @5, i32 0)
  br label %145

64:                                               ; preds = %50
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308142144, ptr @14, i32 1, ptr @15)
  %65 = insertelement <4 x float> poison, float %51, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307479344, ptr @15, i32 2, ptr @0, ptr @0)
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308139920, ptr @5, i32 0)
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i64 [ 0, %64 ], [ %109, %67 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307475056, ptr @6, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2)
  %69 = or disjoint i64 %68, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308202624, ptr @2, i32 1, ptr @7)
  %70 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308208400, ptr @7, i32 2, ptr @0, ptr @0)
  %71 = load <4 x float>, ptr %70, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308209792, ptr @2, i32 2, ptr @8, ptr @7)
  %72 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307958224, ptr @7, i32 1, ptr @9)
  %73 = load <4 x float>, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307702064, ptr @9, i32 1, ptr @0)
  %74 = fneg <4 x float> %73
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308184800, ptr @0, i32 1, ptr @10)
  %75 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float 2.000000e+00), <4 x float> %74)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307597664, ptr @2, i32 1, ptr @7)
  %76 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307602160, ptr @7, i32 1, ptr @0)
  %77 = load <4 x float>, ptr %76, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308136688, ptr @6, i32 2, ptr @2, ptr @2)
  %78 = or disjoint i64 %68, 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308151408, ptr @2, i32 1, ptr @7)
  %79 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %78
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308117936, ptr @7, i32 1, ptr @0)
  %80 = load <4 x float>, ptr %79, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308132624, ptr @0, i32 1, ptr @11)
  %81 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %77, <4 x float> %80)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307961008, ptr @2, i32 1, ptr @7)
  %82 = getelementptr inbounds [4 x i8], ptr %0, i64 %68
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307919168, ptr @7, i32 1, ptr @11)
  %83 = load <4 x float>, ptr %82, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308167472, ptr @11, i32 1, ptr @0)
  %84 = fadd <4 x float> %81, %83
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307545808, ptr @0, i32 1, ptr @10)
  %85 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float -4.000000e+00), <4 x float> %84)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307488384, ptr @10, i32 1, ptr @0)
  %86 = fpext <4 x float> %75 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307498256, ptr @10, i32 1, ptr @0)
  %87 = fpext <4 x float> %85 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308156384, ptr @0, i32 1, ptr @12)
  %88 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %87, <4 x double> splat (double 1.000000e-01), <4 x double> %86)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307546544, ptr @12, i32 1, ptr @8)
  %89 = fptrunc <4 x double> %88 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308151888, ptr @8, i32 0)
  store <4 x float> %89, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308128768, ptr @2, i32 1, ptr @7)
  %90 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307498000, ptr @7, i32 2, ptr @0, ptr @0)
  %91 = load <4 x float>, ptr %90, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308148608, ptr @2, i32 2, ptr @8, ptr @7)
  %92 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307504784, ptr @7, i32 1, ptr @9)
  %93 = load <4 x float>, ptr %92, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307504656, ptr @9, i32 1, ptr @0)
  %94 = fneg <4 x float> %93
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307828688, ptr @0, i32 1, ptr @10)
  %95 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> splat (float 2.000000e+00), <4 x float> %94)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308092560, ptr @2, i32 1, ptr @7)
  %96 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307479136, ptr @7, i32 1, ptr @0)
  %97 = load <4 x float>, ptr %96, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308154256, ptr @2, i32 1, ptr @7)
  %98 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %78
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307504528, ptr @7, i32 1, ptr @0)
  %99 = load <4 x float>, ptr %98, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308154768, ptr @0, i32 1, ptr @11)
  %100 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %97, <4 x float> %99)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308154416, ptr @2, i32 1, ptr @7)
  %101 = getelementptr inbounds [4 x i8], ptr %53, i64 %68
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307503744, ptr @7, i32 1, ptr @11)
  %102 = load <4 x float>, ptr %101, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307970128, ptr @11, i32 1, ptr @0)
  %103 = fadd <4 x float> %100, %102
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307970352, ptr @0, i32 1, ptr @10)
  %104 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> splat (float -4.000000e+00), <4 x float> %103)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307503616, ptr @10, i32 1, ptr @0)
  %105 = fpext <4 x float> %95 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308140288, ptr @10, i32 1, ptr @0)
  %106 = fpext <4 x float> %104 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308149072, ptr @0, i32 1, ptr @12)
  %107 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %106, <4 x double> splat (double 1.000000e-01), <4 x double> %105)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307471040, ptr @12, i32 1, ptr @8)
  %108 = fptrunc <4 x double> %107 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308149248, ptr @8, i32 0)
  store <4 x float> %108, ptr %92, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308204304, ptr @13, i32 1, ptr @3)
  %109 = add nuw i64 %68, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307427744, ptr @3, i32 1, ptr @5)
  %110 = icmp eq i64 %109, 508
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308057440, ptr @5, i32 0)
  br i1 %110, label %62, label %67, !llvm.loop !25

111:                                              ; preds = %114
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307468176, ptr @13, i32 1, ptr @3)
  %112 = add nuw nsw i64 %15, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307555424, ptr @3, i32 1, ptr @5)
  %113 = icmp eq i64 %112, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307456944, ptr @5, i32 0)
  br i1 %113, label %50, label %14, !llvm.loop !26

114:                                              ; preds = %20, %114
  %115 = phi i64 [ %126, %114 ], [ %21, %20 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307622336, ptr @2, i32 2, ptr @2, ptr @7)
  %116 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307461056, ptr @7, i32 1, ptr @14)
  %117 = load float, ptr %116, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307605520, ptr @2, i32 2, ptr @7, ptr @8)
  %118 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307462336, ptr @7, i32 1, ptr @9)
  %119 = load float, ptr %118, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307462464, ptr @9, i32 1, ptr @14)
  %120 = fneg float %119
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307542432, ptr @2, i32 1, ptr @7)
  %121 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307464368, ptr @7, i32 1, ptr @11)
  %122 = load float, ptr %121, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307479776, ptr @2, i32 1, ptr @7)
  %123 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307467168, ptr @7, i32 1, ptr @11)
  %124 = load float, ptr %123, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307467328, ptr @11, i32 1, ptr @11)
  %125 = fadd float %122, %124
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307500832, ptr @13, i32 2, ptr @3, ptr @2)
  %126 = add nuw nsw i64 %115, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307483680, ptr @2, i32 1, ptr @7)
  %127 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %126
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307468592, ptr @7, i32 1, ptr @11)
  %128 = load float, ptr %127, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307468752, ptr @11, i32 1, ptr @11)
  %129 = fadd float %125, %128
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307464912, ptr @2, i32 1, ptr @7)
  %130 = getelementptr i8, ptr %116, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307470016, ptr @7, i32 1, ptr @11)
  %131 = load float, ptr %130, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307470176, ptr @11, i32 1, ptr @14)
  %132 = fadd float %129, %131
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308132416, ptr @14, i32 1, ptr @15)
  %133 = insertelement <2 x float> poison, float %117, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307473840, ptr @15, i32 1, ptr @0)
  %134 = shufflevector <2 x float> %133, <2 x float> poison, <2 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307931632, ptr @14, i32 1, ptr @14)
  %135 = insertelement <2 x float> poison, float %120, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307477904, ptr @14, i32 1, ptr @0)
  %136 = insertelement <2 x float> %135, float %132, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308243984, ptr @0, i32 2, ptr @16, ptr @16)
  %137 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %134, <2 x float> <float 2.000000e+00, float -4.000000e+00>, <2 x float> %136)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308148176, ptr @16, i32 1, ptr @10)
  %138 = extractelement <2 x float> %137, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307472128, ptr @10, i32 1, ptr @0)
  %139 = fpext float %138 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308247696, ptr @16, i32 1, ptr @10)
  %140 = extractelement <2 x float> %137, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307472576, ptr @10, i32 1, ptr @0)
  %141 = fpext float %140 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307473168, ptr @0, i32 1, ptr @12)
  %142 = tail call double @llvm.fmuladd.f64(double %141, double 1.000000e-01, double %139)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307473312, ptr @12, i32 1, ptr @8)
  %143 = fptrunc double %142 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307472736, ptr @8, i32 0)
  store float %143, ptr %118, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307464656, ptr @3, i32 1, ptr @5)
  %144 = icmp eq i64 %126, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307459184, ptr @5, i32 0)
  br i1 %144, label %111, label %114, !llvm.loop !27

145:                                              ; preds = %62, %145
  %146 = phi i64 [ %155, %145 ], [ %63, %62 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307487760, ptr @2, i32 1, ptr @7)
  %147 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307479936, ptr @7, i32 2, ptr @0, ptr @0)
  %148 = load float, ptr %147, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307544992, ptr @2, i32 2, ptr @7, ptr @8)
  %149 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307480976, ptr @7, i32 1, ptr @9)
  %150 = load float, ptr %149, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307481104, ptr @9, i32 1, ptr @0)
  %151 = fneg float %150
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307481328, ptr @0, i32 1, ptr @10)
  %152 = tail call float @llvm.fmuladd.f32(float %148, float 2.000000e+00, float %151)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307588848, ptr @2, i32 1, ptr @7)
  %153 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307482656, ptr @7, i32 1, ptr @0)
  %154 = load float, ptr %153, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307475472, ptr @13, i32 3, ptr @3, ptr @2, ptr @2)
  %155 = add nuw nsw i64 %146, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307617312, ptr @2, i32 1, ptr @7)
  %156 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %155
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307483840, ptr @7, i32 1, ptr @0)
  %157 = load float, ptr %156, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307484064, ptr @0, i32 1, ptr @11)
  %158 = tail call float @llvm.fmuladd.f32(float %51, float %154, float %157)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307458896, ptr @13, i32 2, ptr @2, ptr @2)
  %159 = add nsw i64 %146, -1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307622128, ptr @2, i32 1, ptr @7)
  %160 = getelementptr inbounds [4 x i8], ptr %0, i64 %159
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307465072, ptr @7, i32 1, ptr @11)
  %161 = load float, ptr %160, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307482816, ptr @11, i32 1, ptr @0)
  %162 = fadd float %158, %161
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307487984, ptr @0, i32 1, ptr @10)
  %163 = tail call float @llvm.fmuladd.f32(float %148, float -4.000000e+00, float %162)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307488256, ptr @10, i32 1, ptr @0)
  %164 = fpext float %152 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307488512, ptr @10, i32 1, ptr @0)
  %165 = fpext float %163 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307488896, ptr @0, i32 1, ptr @12)
  %166 = tail call double @llvm.fmuladd.f64(double %165, double 1.000000e-01, double %164)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307489040, ptr @12, i32 1, ptr @8)
  %167 = fptrunc double %166 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307488672, ptr @8, i32 0)
  store float %167, ptr %149, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307604992, ptr @2, i32 1, ptr @7)
  %168 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307491328, ptr @7, i32 2, ptr @0, ptr @0)
  %169 = load float, ptr %168, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307593168, ptr @2, i32 2, ptr @7, ptr @8)
  %170 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307492368, ptr @7, i32 1, ptr @9)
  %171 = load float, ptr %170, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307492496, ptr @9, i32 1, ptr @0)
  %172 = fneg float %171
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307492720, ptr @0, i32 1, ptr @10)
  %173 = tail call float @llvm.fmuladd.f32(float %169, float 2.000000e+00, float %172)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307456304, ptr @2, i32 1, ptr @7)
  %174 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307494096, ptr @7, i32 1, ptr @0)
  %175 = load float, ptr %174, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307501088, ptr @2, i32 1, ptr @7)
  %176 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %155
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307495280, ptr @7, i32 1, ptr @0)
  %177 = load float, ptr %176, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307495552, ptr @0, i32 1, ptr @11)
  %178 = tail call float @llvm.fmuladd.f32(float %51, float %175, float %177)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307501712, ptr @2, i32 1, ptr @7)
  %179 = getelementptr inbounds [4 x i8], ptr %53, i64 %159
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307496592, ptr @7, i32 1, ptr @11)
  %180 = load float, ptr %179, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307494256, ptr @11, i32 1, ptr @0)
  %181 = fadd float %178, %180
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307497856, ptr @0, i32 1, ptr @10)
  %182 = tail call float @llvm.fmuladd.f32(float %169, float -4.000000e+00, float %181)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307498128, ptr @10, i32 1, ptr @0)
  %183 = fpext float %173 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307498384, ptr @10, i32 1, ptr @0)
  %184 = fpext float %182 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307498768, ptr @0, i32 1, ptr @12)
  %185 = tail call double @llvm.fmuladd.f64(double %184, double 1.000000e-01, double %183)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307498912, ptr @12, i32 1, ptr @8)
  %186 = fptrunc double %185 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307498544, ptr @8, i32 0)
  store float %186, ptr %170, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895306399264, ptr @3, i32 1, ptr @5)
  %187 = icmp eq i64 %155, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307478512, ptr @5, i32 0)
  br i1 %187, label %188, label %145, !llvm.loop !28

188:                                              ; preds = %145
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307960304, ptr @2, i32 1, ptr @3)
  %189 = getelementptr nuw i8, ptr %1, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308137472, ptr @2, i32 1, ptr @3)
  %190 = getelementptr i8, ptr %0, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308195984, ptr @3, i32 1, ptr @4)
  %191 = icmp ult ptr %189, %190
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308204016, ptr @3, i32 1, ptr @4)
  %192 = icmp ult ptr %0, %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308204160, ptr @4, i32 1, ptr @5)
  %193 = and i1 %191, %192
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307382960, ptr @5, i32 0)
  br i1 %193, label %194, label %196

194:                                              ; preds = %199, %188
  %195 = phi i64 [ 1, %188 ], [ 509, %199 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307500944, ptr @5, i32 0)
  br label %428

196:                                              ; preds = %188
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307815824, ptr @14, i32 1, ptr @15)
  %197 = insertelement <4 x float> poison, float %51, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307483104, ptr @15, i32 2, ptr @0, ptr @0)
  %198 = shufflevector <4 x float> %197, <4 x float> poison, <4 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308248960, ptr @5, i32 0)
  br label %199

199:                                              ; preds = %199, %196
  %200 = phi i64 [ 0, %196 ], [ %355, %199 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307893376, ptr @6, i32 2, ptr @2, ptr @2)
  %201 = or disjoint i64 %200, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308127808, ptr @6, i32 2, ptr @2, ptr @2)
  %202 = or disjoint i64 %200, 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308152704, ptr @6, i32 2, ptr @2, ptr @2)
  %203 = or disjoint i64 %200, 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307869616, ptr @13, i32 2, ptr @2, ptr @2)
  %204 = add i64 %200, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308058736, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %205 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %201
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307506016, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %206 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %202
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308195648, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %207 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %203
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307933056, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %208 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %204
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308143536, ptr @7, i32 1, ptr @14)
  %209 = load float, ptr %205, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308196480, ptr @7, i32 1, ptr @14)
  %210 = load float, ptr %206, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308150048, ptr @7, i32 1, ptr @14)
  %211 = load float, ptr %207, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308156912, ptr @7, i32 1, ptr @14)
  %212 = load float, ptr %208, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307970608, ptr @14, i32 1, ptr @14)
  %213 = insertelement <4 x float> poison, float %209, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307388496, ptr @14, i32 1, ptr @14)
  %214 = insertelement <4 x float> %213, float %210, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307458272, ptr @14, i32 1, ptr @14)
  %215 = insertelement <4 x float> %214, float %211, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307390656, ptr @14, i32 2, ptr @0, ptr @0)
  %216 = insertelement <4 x float> %215, float %212, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307954352, ptr @2, i32 3, ptr @2, ptr @8, ptr @7)
  %217 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %201
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307953136, ptr @2, i32 3, ptr @2, ptr @8, ptr @7)
  %218 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %202
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308129552, ptr @2, i32 2, ptr @2, ptr @7)
  %219 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %203
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308213584, ptr @2, i32 2, ptr @2, ptr @7)
  %220 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %204
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308188000, ptr @7, i32 1, ptr @14)
  %221 = load float, ptr %217, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308206240, ptr @7, i32 1, ptr @14)
  %222 = load float, ptr %218, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308167712, ptr @7, i32 1, ptr @14)
  %223 = load float, ptr %219, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307464048, ptr @7, i32 1, ptr @14)
  %224 = load float, ptr %220, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307390112, ptr @14, i32 1, ptr @14)
  %225 = insertelement <4 x float> poison, float %221, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307384848, ptr @14, i32 1, ptr @14)
  %226 = insertelement <4 x float> %225, float %222, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307792112, ptr @14, i32 1, ptr @14)
  %227 = insertelement <4 x float> %226, float %223, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308210000, ptr @14, i32 1, ptr @9)
  %228 = insertelement <4 x float> %227, float %224, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308137136, ptr @9, i32 1, ptr @0)
  %229 = fneg <4 x float> %228
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308258672, ptr @0, i32 1, ptr @10)
  %230 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %216, <4 x float> splat (float 2.000000e+00), <4 x float> %229)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308190224, ptr @2, i32 2, ptr @2, ptr @2)
  %231 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %200
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307909504, ptr @2, i32 1, ptr @7)
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 4096
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308295552, ptr @2, i32 2, ptr @2, ptr @2)
  %233 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %200
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308189536, ptr @2, i32 1, ptr @7)
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 6144
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308312096, ptr @2, i32 2, ptr @2, ptr @2)
  %235 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %200
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308258304, ptr @2, i32 1, ptr @7)
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 8192
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307932816, ptr @2, i32 2, ptr @2, ptr @2)
  %237 = getelementptr [2048 x i8], ptr %0, i64 %200
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307993488, ptr @2, i32 1, ptr @7)
  %238 = getelementptr i8, ptr %237, i64 10240
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307961360, ptr @7, i32 1, ptr @14)
  %239 = load float, ptr %232, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307466848, ptr @7, i32 1, ptr @14)
  %240 = load float, ptr %234, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308190064, ptr @7, i32 1, ptr @14)
  %241 = load float, ptr %236, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307429568, ptr @7, i32 1, ptr @14)
  %242 = load float, ptr %238, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307993680, ptr @14, i32 1, ptr @14)
  %243 = insertelement <4 x float> poison, float %239, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307993856, ptr @14, i32 1, ptr @14)
  %244 = insertelement <4 x float> %243, float %240, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307994032, ptr @14, i32 1, ptr @14)
  %245 = insertelement <4 x float> %244, float %241, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307994208, ptr @14, i32 1, ptr @11)
  %246 = insertelement <4 x float> %245, float %242, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307994352, ptr @2, i32 1, ptr @7)
  %247 = getelementptr i8, ptr %205, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308249328, ptr @2, i32 1, ptr @7)
  %248 = getelementptr i8, ptr %206, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308249488, ptr @2, i32 1, ptr @7)
  %249 = getelementptr i8, ptr %207, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308249648, ptr @2, i32 1, ptr @7)
  %250 = getelementptr i8, ptr %208, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308210112, ptr @7, i32 1, ptr @14)
  %251 = load float, ptr %247, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307953952, ptr @7, i32 1, ptr @14)
  %252 = load float, ptr %248, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307954896, ptr @7, i32 1, ptr @14)
  %253 = load float, ptr %249, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307955776, ptr @7, i32 1, ptr @14)
  %254 = load float, ptr %250, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308249840, ptr @14, i32 1, ptr @14)
  %255 = insertelement <4 x float> poison, float %251, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308250016, ptr @14, i32 1, ptr @14)
  %256 = insertelement <4 x float> %255, float %252, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308250192, ptr @14, i32 1, ptr @14)
  %257 = insertelement <4 x float> %256, float %253, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308250368, ptr @14, i32 1, ptr @11)
  %258 = insertelement <4 x float> %257, float %254, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308250512, ptr @11, i32 1, ptr @0)
  %259 = fadd <4 x float> %246, %258
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308250672, ptr @2, i32 1, ptr @7)
  %260 = getelementptr inbounds nuw i8, ptr %205, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308250832, ptr @2, i32 1, ptr @7)
  %261 = getelementptr inbounds nuw i8, ptr %206, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308250992, ptr @2, i32 1, ptr @7)
  %262 = getelementptr inbounds nuw i8, ptr %207, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308251152, ptr @2, i32 1, ptr @7)
  %263 = getelementptr inbounds nuw i8, ptr %208, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307936848, ptr @7, i32 1, ptr @14)
  %264 = load float, ptr %260, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308258032, ptr @7, i32 1, ptr @14)
  %265 = load float, ptr %261, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308134096, ptr @7, i32 1, ptr @14)
  %266 = load float, ptr %262, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308263952, ptr @7, i32 1, ptr @14)
  %267 = load float, ptr %263, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307989920, ptr @14, i32 1, ptr @14)
  %268 = insertelement <4 x float> poison, float %264, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307990096, ptr @14, i32 1, ptr @14)
  %269 = insertelement <4 x float> %268, float %265, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307990272, ptr @14, i32 1, ptr @14)
  %270 = insertelement <4 x float> %269, float %266, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307990448, ptr @14, i32 1, ptr @0)
  %271 = insertelement <4 x float> %270, float %267, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308188784, ptr @0, i32 1, ptr @0)
  %272 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %198, <4 x float> %271, <4 x float> %259)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308258912, ptr @0, i32 1, ptr @10)
  %273 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %216, <4 x float> splat (float -4.000000e+00), <4 x float> %272)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308185488, ptr @10, i32 1, ptr @0)
  %274 = fpext <4 x float> %230 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307990560, ptr @10, i32 1, ptr @0)
  %275 = fpext <4 x float> %273 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307934880, ptr @0, i32 3, ptr @15, ptr @15, ptr @12)
  %276 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %275, <4 x double> splat (double 1.000000e-01), <4 x double> %274)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307990688, ptr @12, i32 2, ptr @16, ptr @16)
  %277 = fptrunc <4 x double> %276 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307990848, ptr @16, i32 1, ptr @8)
  %278 = extractelement <4 x float> %277, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307990992, ptr @8, i32 0)
  store float %278, ptr %217, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307991152, ptr @16, i32 1, ptr @8)
  %279 = extractelement <4 x float> %277, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307991296, ptr @8, i32 0)
  store float %279, ptr %218, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307992064, ptr @2, i32 1, ptr @7)
  %280 = getelementptr inbounds nuw i8, ptr %205, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307992224, ptr @2, i32 1, ptr @7)
  %281 = getelementptr inbounds nuw i8, ptr %206, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307992384, ptr @2, i32 1, ptr @7)
  %282 = getelementptr inbounds nuw i8, ptr %207, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307992544, ptr @2, i32 1, ptr @7)
  %283 = getelementptr inbounds nuw i8, ptr %208, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307992672, ptr @7, i32 1, ptr @14)
  %284 = load float, ptr %280, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307992800, ptr @7, i32 1, ptr @14)
  %285 = load float, ptr %281, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307992928, ptr @7, i32 1, ptr @14)
  %286 = load float, ptr %282, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307993056, ptr @7, i32 1, ptr @14)
  %287 = load float, ptr %283, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307993248, ptr @14, i32 1, ptr @14)
  %288 = insertelement <4 x float> poison, float %284, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308251344, ptr @14, i32 1, ptr @14)
  %289 = insertelement <4 x float> %288, float %285, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308251520, ptr @14, i32 1, ptr @14)
  %290 = insertelement <4 x float> %289, float %286, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308251696, ptr @14, i32 2, ptr @0, ptr @0)
  %291 = insertelement <4 x float> %290, float %287, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308251840, ptr @2, i32 2, ptr @8, ptr @7)
  %292 = getelementptr inbounds nuw i8, ptr %217, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308252000, ptr @2, i32 2, ptr @8, ptr @7)
  %293 = getelementptr inbounds nuw i8, ptr %218, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308252160, ptr @2, i32 2, ptr @8, ptr @7)
  %294 = getelementptr inbounds nuw i8, ptr %219, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308252320, ptr @2, i32 2, ptr @8, ptr @7)
  %295 = getelementptr inbounds nuw i8, ptr %220, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308252448, ptr @7, i32 1, ptr @14)
  %296 = load float, ptr %292, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308252576, ptr @7, i32 1, ptr @14)
  %297 = load float, ptr %293, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308252704, ptr @7, i32 1, ptr @14)
  %298 = load float, ptr %294, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308252832, ptr @7, i32 1, ptr @14)
  %299 = load float, ptr %295, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308253024, ptr @14, i32 1, ptr @14)
  %300 = insertelement <4 x float> poison, float %296, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308253200, ptr @14, i32 1, ptr @14)
  %301 = insertelement <4 x float> %300, float %297, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308253376, ptr @14, i32 1, ptr @14)
  %302 = insertelement <4 x float> %301, float %298, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308253552, ptr @14, i32 1, ptr @9)
  %303 = insertelement <4 x float> %302, float %299, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308253664, ptr @9, i32 1, ptr @0)
  %304 = fneg <4 x float> %303
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308259152, ptr @0, i32 1, ptr @10)
  %305 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %291, <4 x float> splat (float 2.000000e+00), <4 x float> %304)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308209040, ptr @2, i32 1, ptr @7)
  %306 = getelementptr inbounds nuw i8, ptr %231, i64 6140
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308253824, ptr @2, i32 1, ptr @7)
  %307 = getelementptr inbounds nuw i8, ptr %233, i64 8188
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308253984, ptr @2, i32 1, ptr @7)
  %308 = getelementptr inbounds nuw i8, ptr %235, i64 10236
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308254144, ptr @2, i32 1, ptr @7)
  %309 = getelementptr i8, ptr %237, i64 12284
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308254432, ptr @7, i32 1, ptr @14)
  %310 = load float, ptr %306, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308254560, ptr @7, i32 1, ptr @14)
  %311 = load float, ptr %307, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308254688, ptr @7, i32 1, ptr @14)
  %312 = load float, ptr %308, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308254816, ptr @7, i32 1, ptr @14)
  %313 = load float, ptr %309, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308255008, ptr @14, i32 1, ptr @14)
  %314 = insertelement <4 x float> poison, float %310, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308255184, ptr @14, i32 1, ptr @14)
  %315 = insertelement <4 x float> %314, float %311, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308255360, ptr @14, i32 1, ptr @14)
  %316 = insertelement <4 x float> %315, float %312, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308255536, ptr @14, i32 1, ptr @11)
  %317 = insertelement <4 x float> %316, float %313, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308255680, ptr @2, i32 1, ptr @7)
  %318 = getelementptr i8, ptr %205, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308255840, ptr @2, i32 1, ptr @7)
  %319 = getelementptr i8, ptr %206, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308256000, ptr @2, i32 1, ptr @7)
  %320 = getelementptr i8, ptr %207, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308256160, ptr @2, i32 1, ptr @7)
  %321 = getelementptr i8, ptr %208, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308256288, ptr @7, i32 1, ptr @14)
  %322 = load float, ptr %318, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308256416, ptr @7, i32 1, ptr @14)
  %323 = load float, ptr %319, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308256544, ptr @7, i32 1, ptr @14)
  %324 = load float, ptr %320, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308256672, ptr @7, i32 1, ptr @14)
  %325 = load float, ptr %321, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308298144, ptr @14, i32 1, ptr @14)
  %326 = insertelement <4 x float> poison, float %322, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308298320, ptr @14, i32 1, ptr @14)
  %327 = insertelement <4 x float> %326, float %323, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308298496, ptr @14, i32 1, ptr @14)
  %328 = insertelement <4 x float> %327, float %324, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308298672, ptr @14, i32 1, ptr @11)
  %329 = insertelement <4 x float> %328, float %325, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308298816, ptr @11, i32 1, ptr @0)
  %330 = fadd <4 x float> %317, %329
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308298976, ptr @2, i32 1, ptr @7)
  %331 = getelementptr inbounds nuw i8, ptr %205, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308299136, ptr @2, i32 1, ptr @7)
  %332 = getelementptr inbounds nuw i8, ptr %206, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308299296, ptr @2, i32 1, ptr @7)
  %333 = getelementptr inbounds nuw i8, ptr %207, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308299456, ptr @2, i32 1, ptr @7)
  %334 = getelementptr inbounds nuw i8, ptr %208, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308299584, ptr @7, i32 1, ptr @14)
  %335 = load float, ptr %331, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308299712, ptr @7, i32 1, ptr @14)
  %336 = load float, ptr %332, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308299840, ptr @7, i32 1, ptr @14)
  %337 = load float, ptr %333, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308290880, ptr @7, i32 1, ptr @14)
  %338 = load float, ptr %334, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308291072, ptr @14, i32 1, ptr @14)
  %339 = insertelement <4 x float> poison, float %335, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308291248, ptr @14, i32 1, ptr @14)
  %340 = insertelement <4 x float> %339, float %336, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308291424, ptr @14, i32 1, ptr @14)
  %341 = insertelement <4 x float> %340, float %337, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308291600, ptr @14, i32 1, ptr @0)
  %342 = insertelement <4 x float> %341, float %338, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308240480, ptr @0, i32 1, ptr @0)
  %343 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %198, <4 x float> %342, <4 x float> %330)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308259632, ptr @0, i32 1, ptr @10)
  %344 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %291, <4 x float> splat (float -4.000000e+00), <4 x float> %343)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308291712, ptr @10, i32 1, ptr @0)
  %345 = fpext <4 x float> %305 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308291840, ptr @10, i32 1, ptr @0)
  %346 = fpext <4 x float> %344 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308241024, ptr @0, i32 3, ptr @15, ptr @15, ptr @12)
  %347 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %346, <4 x double> splat (double 1.000000e-01), <4 x double> %345)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308291968, ptr @12, i32 2, ptr @16, ptr @16)
  %348 = fptrunc <4 x double> %347 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308292128, ptr @16, i32 1, ptr @8)
  %349 = extractelement <4 x float> %348, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308292272, ptr @8, i32 0)
  store float %349, ptr %292, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307465360, ptr @15, i32 1, ptr @12)
  %350 = shufflevector <4 x double> %347, <4 x double> %276, <2 x i32> <i32 1, i32 6>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308260480, ptr @12, i32 1, ptr @8)
  %351 = fptrunc <2 x double> %350 to <2 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308140112, ptr @8, i32 0)
  store <2 x float> %351, ptr %293, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307474272, ptr @15, i32 1, ptr @12)
  %352 = shufflevector <4 x double> %347, <4 x double> %276, <2 x i32> <i32 2, i32 7>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308259968, ptr @12, i32 1, ptr @8)
  %353 = fptrunc <2 x double> %352 to <2 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308254304, ptr @8, i32 0)
  store <2 x float> %353, ptr %294, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308293040, ptr @16, i32 1, ptr @8)
  %354 = extractelement <4 x float> %348, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308293184, ptr @8, i32 0)
  store float %354, ptr %295, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308293344, ptr @13, i32 1, ptr @3)
  %355 = add nuw i64 %200, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308293488, ptr @3, i32 1, ptr @5)
  %356 = icmp eq i64 %355, 508
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895308293664, ptr @5, i32 0)
  br i1 %356, label %194, label %199, !llvm.loop !34

357:                                              ; preds = %428
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307485792, ptr @7, i32 2, ptr @17, ptr @0)
  %358 = load float, ptr %0, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307486592, ptr @7, i32 1, ptr @9)
  %359 = load float, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307486720, ptr @9, i32 1, ptr @0)
  %360 = fneg float %359
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307486944, ptr @0, i32 1, ptr @10)
  %361 = tail call float @llvm.fmuladd.f32(float %358, float 2.000000e+00, float %360)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307476864, ptr @2, i32 1, ptr @7)
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307529600, ptr @7, i32 1, ptr @11)
  %363 = load float, ptr %362, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307530240, ptr @7, i32 1, ptr @11)
  %364 = load float, ptr %52, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307530400, ptr @11, i32 1, ptr @0)
  %365 = fadd float %363, %364
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307619648, ptr @17, i32 1, ptr @0)
  %366 = fmul float %358, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307531712, ptr @0, i32 1, ptr @10)
  %367 = tail call float @llvm.fmuladd.f32(float %51, float %365, float %366)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307531984, ptr @10, i32 1, ptr @0)
  %368 = fpext float %361 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307532240, ptr @10, i32 1, ptr @0)
  %369 = fpext float %367 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307532624, ptr @0, i32 1, ptr @12)
  %370 = tail call double @llvm.fmuladd.f64(double %369, double 1.000000e-01, double %368)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307532768, ptr @12, i32 1, ptr @8)
  %371 = fptrunc double %370 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307532400, ptr @8, i32 0)
  store float %371, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307534576, ptr @7, i32 2, ptr @17, ptr @0)
  %372 = load float, ptr %53, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307535376, ptr @7, i32 1, ptr @9)
  %373 = load float, ptr %54, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307535504, ptr @9, i32 1, ptr @0)
  %374 = fneg float %373
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307535728, ptr @0, i32 1, ptr @10)
  %375 = tail call float @llvm.fmuladd.f32(float %372, float 2.000000e+00, float %374)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307817008, ptr @2, i32 1, ptr @7)
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307536816, ptr @7, i32 1, ptr @11)
  %377 = load float, ptr %376, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307537456, ptr @7, i32 1, ptr @11)
  %378 = load float, ptr %55, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307537616, ptr @11, i32 1, ptr @0)
  %379 = fadd float %377, %378
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307815632, ptr @17, i32 1, ptr @0)
  %380 = fmul float %372, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307538928, ptr @0, i32 1, ptr @10)
  %381 = tail call float @llvm.fmuladd.f32(float %51, float %379, float %380)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307539200, ptr @10, i32 1, ptr @0)
  %382 = fpext float %375 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307539456, ptr @10, i32 1, ptr @0)
  %383 = fpext float %381 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307539840, ptr @0, i32 1, ptr @12)
  %384 = tail call double @llvm.fmuladd.f64(double %383, double 1.000000e-01, double %382)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307539984, ptr @12, i32 1, ptr @8)
  %385 = fptrunc double %384 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307539616, ptr @8, i32 0)
  store float %385, ptr %54, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307538576, ptr @2, i32 1, ptr @7)
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307541792, ptr @7, i32 2, ptr @17, ptr @0)
  %387 = load float, ptr %386, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307815472, ptr @2, i32 2, ptr @7, ptr @8)
  %388 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307542592, ptr @7, i32 1, ptr @9)
  %389 = load float, ptr %388, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307542720, ptr @9, i32 1, ptr @0)
  %390 = fneg float %389
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307542944, ptr @0, i32 1, ptr @10)
  %391 = tail call float @llvm.fmuladd.f32(float %387, float 2.000000e+00, float %390)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307390256, ptr @2, i32 1, ptr @7)
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307544032, ptr @7, i32 1, ptr @11)
  %393 = load float, ptr %392, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307384288, ptr @2, i32 1, ptr @7)
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307544672, ptr @7, i32 1, ptr @11)
  %395 = load float, ptr %394, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307544832, ptr @11, i32 1, ptr @0)
  %396 = fadd float %393, %395
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307387440, ptr @17, i32 1, ptr @0)
  %397 = fmul float %387, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307546144, ptr @0, i32 1, ptr @10)
  %398 = tail call float @llvm.fmuladd.f32(float %51, float %396, float %397)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307546416, ptr @10, i32 1, ptr @0)
  %399 = fpext float %391 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307546672, ptr @10, i32 1, ptr @0)
  %400 = fpext float %398 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307547056, ptr @0, i32 1, ptr @12)
  %401 = tail call double @llvm.fmuladd.f64(double %400, double 1.000000e-01, double %399)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307547200, ptr @12, i32 1, ptr @8)
  %402 = fptrunc double %401 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307546832, ptr @8, i32 0)
  store float %402, ptr %388, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307375296, ptr @2, i32 1, ptr @7)
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307549008, ptr @7, i32 2, ptr @17, ptr @0)
  %404 = load float, ptr %403, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307399168, ptr @2, i32 2, ptr @8, ptr @7)
  %405 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307549808, ptr @7, i32 1, ptr @9)
  %406 = load float, ptr %405, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307549936, ptr @9, i32 1, ptr @0)
  %407 = fneg float %406
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307550160, ptr @0, i32 1, ptr @10)
  %408 = tail call float @llvm.fmuladd.f32(float %404, float 2.000000e+00, float %407)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307391616, ptr @2, i32 1, ptr @7)
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307551248, ptr @7, i32 1, ptr @11)
  %410 = load float, ptr %409, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307456032, ptr @2, i32 1, ptr @7)
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307551888, ptr @7, i32 1, ptr @11)
  %412 = load float, ptr %411, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307552048, ptr @11, i32 1, ptr @0)
  %413 = fadd float %410, %412
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307586688, ptr @17, i32 1, ptr @0)
  %414 = fmul float %404, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307553360, ptr @0, i32 1, ptr @10)
  %415 = tail call float @llvm.fmuladd.f32(float %51, float %413, float %414)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307553632, ptr @10, i32 1, ptr @0)
  %416 = fpext float %408 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307553888, ptr @10, i32 1, ptr @0)
  %417 = fpext float %415 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307554272, ptr @0, i32 1, ptr @12)
  %418 = tail call double @llvm.fmuladd.f64(double %417, double 1.000000e-01, double %416)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307554416, ptr @12, i32 1, ptr @8)
  %419 = fptrunc double %418 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307554048, ptr @8, i32 0)
  store float %419, ptr %405, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307556400, ptr @0, i32 1, ptr @17)
  %420 = tail call float @simCalcSinus(float noundef %3) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307553008, ptr @17, i32 1, ptr @11)
  %421 = fmul float %420, 3.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307502272, ptr @18, i32 1, ptr @2)
  %422 = sext i32 %4 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307556704, ptr @2, i32 1, ptr @2)
  %423 = getelementptr inbounds [2048 x i8], ptr %1, i64 %422
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307557824, ptr @18, i32 1, ptr @2)
  %424 = sext i32 %5 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307602896, ptr @2, i32 2, ptr @7, ptr @8)
  %425 = getelementptr inbounds [4 x i8], ptr %423, i64 %424
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307558128, ptr @7, i32 1, ptr @11)
  %426 = load float, ptr %425, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307558288, ptr @11, i32 1, ptr @8)
  %427 = fadd float %426, %421
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307558448, ptr @8, i32 0)
  store float %427, ptr %425, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307387544, ptr @1, i32 0)
  ret void

428:                                              ; preds = %194, %428
  %429 = phi i64 [ %436, %428 ], [ %195, %194 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307609920, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %430 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %429
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307503872, ptr @7, i32 2, ptr @0, ptr @0)
  %431 = load float, ptr %430, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307388096, ptr @2, i32 3, ptr @2, ptr @7, ptr @8)
  %432 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %429
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307504912, ptr @7, i32 1, ptr @9)
  %433 = load float, ptr %432, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307505040, ptr @9, i32 1, ptr @0)
  %434 = fneg float %433
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307505312, ptr @0, i32 1, ptr @10)
  %435 = tail call float @llvm.fmuladd.f32(float %431, float 2.000000e+00, float %434)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307612032, ptr @13, i32 2, ptr @3, ptr @2)
  %436 = add nuw nsw i64 %429, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307389696, ptr @2, i32 2, ptr @2, ptr @7)
  %437 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %436
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307506656, ptr @7, i32 1, ptr @11)
  %438 = load float, ptr %437, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307522832, ptr @2, i32 1, ptr @7)
  %439 = getelementptr i8, ptr %430, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307507680, ptr @7, i32 1, ptr @11)
  %440 = load float, ptr %439, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307507840, ptr @11, i32 1, ptr @0)
  %441 = fadd float %438, %440
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307459328, ptr @2, i32 1, ptr @7)
  %442 = getelementptr inbounds nuw i8, ptr %430, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307508848, ptr @7, i32 1, ptr @0)
  %443 = load float, ptr %442, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307509232, ptr @0, i32 1, ptr @0)
  %444 = tail call float @llvm.fmuladd.f32(float %51, float %443, float %441)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307510352, ptr @0, i32 1, ptr @10)
  %445 = tail call float @llvm.fmuladd.f32(float %431, float -4.000000e+00, float %444)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307510624, ptr @10, i32 1, ptr @0)
  %446 = fpext float %435 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307510880, ptr @10, i32 1, ptr @0)
  %447 = fpext float %445 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307511264, ptr @0, i32 1, ptr @12)
  %448 = tail call double @llvm.fmuladd.f64(double %447, double 1.000000e-01, double %446)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307511408, ptr @12, i32 1, ptr @8)
  %449 = fptrunc double %448 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307511040, ptr @8, i32 0)
  store float %449, ptr %432, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307475200, ptr @2, i32 1, ptr @7)
  %450 = getelementptr inbounds nuw i8, ptr %430, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307513696, ptr @7, i32 2, ptr @0, ptr @0)
  %451 = load float, ptr %450, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307500560, ptr @2, i32 2, ptr @7, ptr @8)
  %452 = getelementptr inbounds nuw i8, ptr %432, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307514736, ptr @7, i32 1, ptr @9)
  %453 = load float, ptr %452, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307514864, ptr @9, i32 1, ptr @0)
  %454 = fneg float %453
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307515088, ptr @0, i32 1, ptr @10)
  %455 = tail call float @llvm.fmuladd.f32(float %451, float 2.000000e+00, float %454)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307537776, ptr @2, i32 1, ptr @7)
  %456 = getelementptr inbounds nuw i8, ptr %437, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307516432, ptr @7, i32 1, ptr @11)
  %457 = load float, ptr %456, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307509008, ptr @2, i32 1, ptr @7)
  %458 = getelementptr i8, ptr %430, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307517456, ptr @7, i32 1, ptr @11)
  %459 = load float, ptr %458, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307517616, ptr @11, i32 1, ptr @0)
  %460 = fadd float %457, %459
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307518784, ptr @2, i32 1, ptr @7)
  %461 = getelementptr inbounds nuw i8, ptr %430, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307518624, ptr @7, i32 1, ptr @0)
  %462 = load float, ptr %461, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307519008, ptr @0, i32 1, ptr @0)
  %463 = tail call float @llvm.fmuladd.f32(float %51, float %462, float %460)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307520128, ptr @0, i32 1, ptr @10)
  %464 = tail call float @llvm.fmuladd.f32(float %451, float -4.000000e+00, float %463)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307520400, ptr @10, i32 1, ptr @0)
  %465 = fpext float %455 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307520656, ptr @10, i32 1, ptr @0)
  %466 = fpext float %464 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307521040, ptr @0, i32 1, ptr @12)
  %467 = tail call double @llvm.fmuladd.f64(double %466, double 1.000000e-01, double %465)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307521184, ptr @12, i32 1, ptr @8)
  %468 = fptrunc double %467 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307520816, ptr @8, i32 0)
  store float %468, ptr %452, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307483424, ptr @3, i32 1, ptr @5)
  %469 = icmp eq i64 %436, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307502448, ptr @5, i32 0)
  br i1 %469, label %357, label %428, !llvm.loop !35
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare float @simCalcSinus(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef float @saturate(float noundef %0) local_unnamed_addr #5 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307460896, ptr @19, i32 1, ptr @5)
  %2 = fcmp ogt float %0, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307450432, ptr @5, i32 0)
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307429328, ptr @19, i32 1, ptr @5)
  %4 = fcmp olt float %0, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307451488, ptr @5, i32 0)
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307451312, ptr @5, i32 0)
  br label %6

6:                                                ; preds = %1, %3, %5
  %7 = phi float [ %0, %3 ], [ -1.000000e+01, %5 ], [ 1.000000e+01, %1 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307570240, ptr @1, i32 0)
  ret float %7
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @app() local_unnamed_addr #6 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307428176, ptr @20, i32 3, ptr @0, ptr @2, ptr @0)
  %1 = alloca [2 x [512 x [512 x float]]], align 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307568880, ptr @0, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307451184, ptr @2, i32 0)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307827664, ptr @0, i32 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2097152) %1, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307588976, ptr @5, i32 0)
  br label %3

3:                                                ; preds = %72, %0
  %4 = phi float [ 5.000000e-01, %0 ], [ %73, %72 ]
  %5 = phi float [ 0.000000e+00, %0 ], [ %76, %72 ]
  %6 = phi i32 [ 256, %0 ], [ %52, %72 ]
  %7 = phi i32 [ 256, %0 ], [ %53, %72 ]
  %8 = phi ptr [ %2, %0 ], [ %9, %72 ]
  %9 = phi ptr [ %1, %0 ], [ %8, %72 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307590528, ptr @0, i32 0)
  call void @emulationStep(ptr noundef %9, ptr noundef %8, float noundef %4, float noundef %5, i32 noundef %7, i32 noundef %6)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307593392, ptr @5, i32 0)
  br label %10

10:                                               ; preds = %3, %17
  %11 = phi i64 [ 0, %3 ], [ %18, %17 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307619200, ptr @2, i32 1, ptr @2)
  %12 = getelementptr inbounds nuw [2048 x i8], ptr %9, i64 %11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307398848, ptr @21, i32 1, ptr @0)
  %13 = trunc nuw nsw i64 %11 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307386992, ptr @5, i32 0)
  br label %20

14:                                               ; preds = %17
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307596992, ptr @0, i32 0)
  tail call void (...) @simFlush() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307607472, ptr @0, i32 1, ptr @3)
  %15 = tail call i32 (...) @simHasClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307607648, ptr @3, i32 1, ptr @5)
  %16 = icmp eq i32 %15, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307593568, ptr @5, i32 0)
  br i1 %16, label %51, label %42

17:                                               ; preds = %28
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307604848, ptr @13, i32 1, ptr @3)
  %18 = add nuw nsw i64 %11, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895306298976, ptr @3, i32 1, ptr @5)
  %19 = icmp eq i64 %18, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307594336, ptr @5, i32 0)
  br i1 %19, label %14, label %10, !llvm.loop !36

20:                                               ; preds = %10, %28
  %21 = phi i64 [ 0, %10 ], [ %40, %28 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307464208, ptr @2, i32 1, ptr @7)
  %22 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %21
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307598432, ptr @7, i32 2, ptr @19, ptr @19)
  %23 = load float, ptr %22, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307397136, ptr @19, i32 1, ptr @5)
  %24 = fcmp ogt float %23, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307587072, ptr @5, i32 0)
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307467008, ptr @19, i32 1, ptr @5)
  %26 = fcmp olt float %23, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307457728, ptr @5, i32 0)
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307391248, ptr @5, i32 0)
  br label %28

28:                                               ; preds = %20, %25, %27
  %29 = phi float [ %23, %25 ], [ -1.000000e+01, %27 ], [ 1.000000e+01, %20 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307599328, ptr @10, i32 1, ptr @11)
  %30 = fpext float %29 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307599488, ptr @11, i32 1, ptr @22)
  %31 = fadd double %30, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307599776, ptr @22, i32 1, ptr @12)
  %32 = fdiv double %31, 2.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307599904, ptr @12, i32 1, ptr @17)
  %33 = fptrunc double %32 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307600768, ptr @17, i32 1, ptr @23)
  %34 = fmul float %33, 2.550000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307600896, ptr @23, i32 1, ptr @4)
  %35 = fptosi float %34 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307601040, ptr @4, i32 1, ptr @24)
  %36 = and i32 %35, 255
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307601904, ptr @24, i32 1, ptr @6)
  %37 = mul nuw nsw i32 %36, 65793
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307569840, ptr @6, i32 1, ptr @0)
  %38 = or disjoint i32 %37, -16777216
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307620240, ptr @21, i32 1, ptr @0)
  %39 = trunc nuw nsw i64 %21 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307556096, ptr @0, i32 0)
  tail call void @simPutPixel(i32 noundef %13, i32 noundef %39, i32 noundef %38) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307484688, ptr @13, i32 1, ptr @3)
  %40 = add nuw nsw i64 %21, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895306294128, ptr @3, i32 1, ptr @5)
  %41 = icmp eq i64 %40, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307596576, ptr @5, i32 0)
  br i1 %41, label %17, label %20, !llvm.loop !37

42:                                               ; preds = %14
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307608272, ptr @0, i32 2, ptr @25, ptr @4)
  %43 = tail call i32 (...) @simGetClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307609040, ptr @25, i32 2, ptr @26, ptr @3)
  %44 = ashr i32 %43, 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307609776, ptr @4, i32 2, ptr @26, ptr @3)
  %45 = and i32 %43, 65535
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307466320, ptr @3, i32 1, ptr @26)
  %46 = icmp ult i32 %44, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307611584, ptr @3, i32 1, ptr @26)
  %47 = icmp samesign ult i32 %45, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307489792, ptr @26, i32 2, ptr @26, ptr @26)
  %48 = select i1 %46, i1 %47, i1 false
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307494576, ptr @26, i32 0)
  %49 = select i1 %48, i32 %45, i32 %6
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307586880, ptr @26, i32 0)
  %50 = select i1 %48, i32 %44, i32 %7
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307613472, ptr @5, i32 0)
  br label %51

51:                                               ; preds = %42, %14
  %52 = phi i32 [ %49, %42 ], [ %6, %14 ]
  %53 = phi i32 [ %50, %42 ], [ %7, %14 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307469568, ptr @0, i32 1, ptr @3)
  %54 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307522688, ptr @3, i32 1, ptr @5)
  %55 = icmp eq i32 %54, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307455888, ptr @5, i32 0)
  br i1 %55, label %72, label %56

56:                                               ; preds = %51, %68
  %57 = phi float [ %69, %68 ], [ %4, %51 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307615344, ptr @0, i32 1, ptr @24)
  %58 = tail call i32 (...) @simGetScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307615520, ptr @24, i32 1, ptr @27)
  %59 = mul nsw i32 %58, 5
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307616224, ptr @27, i32 1, ptr @22)
  %60 = sitofp i32 %59 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307616448, ptr @22, i32 1, ptr @12)
  %61 = fdiv double %60, 1.000000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307616576, ptr @12, i32 1, ptr @11)
  %62 = fptrunc double %61 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307617152, ptr @11, i32 2, ptr @19, ptr @19)
  %63 = fadd float %57, %62
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307463776, ptr @19, i32 1, ptr @5)
  %64 = fcmp ogt float %63, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307618320, ptr @5, i32 0)
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307618016, ptr @19, i32 1, ptr @5)
  %66 = fcmp olt float %63, 0.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307619504, ptr @5, i32 0)
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307619328, ptr @5, i32 0)
  br label %68

68:                                               ; preds = %56, %65, %67
  %69 = phi float [ %63, %65 ], [ 0.000000e+00, %67 ], [ 1.000000e+00, %56 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307614096, ptr @0, i32 1, ptr @3)
  %70 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307614272, ptr @3, i32 1, ptr @5)
  %71 = icmp eq i32 %70, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307614720, ptr @5, i32 0)
  br i1 %71, label %72, label %56, !llvm.loop !38

72:                                               ; preds = %68, %51
  %73 = phi float [ %4, %51 ], [ %69, %68 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307621680, ptr @10, i32 1, ptr @11)
  %74 = fpext float %5 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307621840, ptr @11, i32 1, ptr @12)
  %75 = fadd double %74, 5.000000e-02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307621968, ptr @12, i32 0)
  %76 = fptrunc double %75 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 93895307622480, ptr @5, i32 0)
  br label %3
}

declare void @simPutPixel(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @simFlush(...) local_unnamed_addr #4

declare i32 @simHasClick(...) local_unnamed_addr #4

declare i32 @simGetClick(...) local_unnamed_addr #4

declare i32 @simHasScroll(...) local_unnamed_addr #4

declare i32 @simGetScroll(...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

declare void @logUserOperand(i64, ptr, i32, ...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
