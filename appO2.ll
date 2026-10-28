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
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642829056, ptr @0, i32 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642611240, ptr @1, i32 0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emulationStep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642728208, ptr @2, i32 1, ptr @3)
  %7 = getelementptr nuw i8, ptr %1, i64 2052
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642644496, ptr @2, i32 1, ptr @3)
  %8 = getelementptr i8, ptr %1, i64 1046524
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642645392, ptr @2, i32 1, ptr @3)
  %9 = getelementptr nuw i8, ptr %0, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642868208, ptr @2, i32 1, ptr @3)
  %10 = getelementptr i8, ptr %0, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643208480, ptr @3, i32 1, ptr @4)
  %11 = icmp ult ptr %7, %10
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643208272, ptr @3, i32 1, ptr @4)
  %12 = icmp ult ptr %9, %8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643054880, ptr @4, i32 1, ptr @5)
  %13 = and i1 %11, %12
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642703520, ptr @5, i32 0)
  br label %14

14:                                               ; preds = %6, %111
  %15 = phi i64 [ 1, %6 ], [ %112, %111 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642833680, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2)
  %16 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %15
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642861776, ptr @2, i32 2, ptr @2, ptr @2)
  %17 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %15
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642695632, ptr @2, i32 2, ptr @2, ptr @2)
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642797008, ptr @2, i32 2, ptr @2, ptr @2)
  %19 = getelementptr i8, ptr %16, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642630320, ptr @5, i32 0)
  br i1 %13, label %20, label %22

20:                                               ; preds = %22, %14
  %21 = phi i64 [ 1, %14 ], [ 509, %22 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643495616, ptr @5, i32 0)
  br label %114

22:                                               ; preds = %14, %22
  %23 = phi i64 [ %48, %22 ], [ 0, %14 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643400096, ptr @6, i32 4, ptr @2, ptr @2, ptr @2, ptr @2)
  %24 = or disjoint i64 %23, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642841424, ptr @2, i32 2, ptr @2, ptr @7)
  %25 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642745360, ptr @7, i32 2, ptr @0, ptr @0)
  %26 = load <4 x float>, ptr %25, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642723424, ptr @2, i32 2, ptr @8, ptr @7)
  %27 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643117104, ptr @7, i32 1, ptr @9)
  %28 = load <4 x float>, ptr %27, align 4, !tbaa !9, !alias.scope !14, !noalias !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643140864, ptr @9, i32 1, ptr @0)
  %29 = fneg <4 x float> %28
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643379888, ptr @0, i32 1, ptr @10)
  %30 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float 2.000000e+00), <4 x float> %29)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642865888, ptr @2, i32 1, ptr @7)
  %31 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642862192, ptr @7, i32 1, ptr @11)
  %32 = load <4 x float>, ptr %31, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642707088, ptr @2, i32 1, ptr @7)
  %33 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %24
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642725568, ptr @7, i32 1, ptr @11)
  %34 = load <4 x float>, ptr %33, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642845200, ptr @11, i32 1, ptr @11)
  %35 = fadd <4 x float> %32, %34
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643448576, ptr @2, i32 1, ptr @2)
  %36 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %23
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642742480, ptr @2, i32 1, ptr @7)
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642868048, ptr @7, i32 1, ptr @11)
  %38 = load <4 x float>, ptr %37, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642715792, ptr @11, i32 1, ptr @11)
  %39 = fadd <4 x float> %35, %38
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642749952, ptr @2, i32 1, ptr @7)
  %40 = getelementptr i8, ptr %25, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642784304, ptr @7, i32 1, ptr @11)
  %41 = load <4 x float>, ptr %40, align 4, !tbaa !9, !alias.scope !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642778688, ptr @11, i32 1, ptr @0)
  %42 = fadd <4 x float> %39, %41
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642790544, ptr @0, i32 1, ptr @10)
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float -4.000000e+00), <4 x float> %42)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642795856, ptr @10, i32 1, ptr @0)
  %44 = fpext <4 x float> %30 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642799696, ptr @10, i32 1, ptr @0)
  %45 = fpext <4 x float> %43 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642849472, ptr @0, i32 1, ptr @12)
  %46 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %45, <4 x double> splat (double 1.000000e-01), <4 x double> %44)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642866208, ptr @12, i32 1, ptr @8)
  %47 = fptrunc <4 x double> %46 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643339968, ptr @8, i32 0)
  store <4 x float> %47, ptr %27, align 4, !tbaa !9, !alias.scope !14, !noalias !11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642723696, ptr @13, i32 1, ptr @3)
  %48 = add nuw i64 %23, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642675104, ptr @3, i32 1, ptr @5)
  %49 = icmp eq i64 %48, 508
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643063232, ptr @5, i32 0)
  br i1 %49, label %20, label %22, !llvm.loop !16

50:                                               ; preds = %111
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642698000, ptr @11, i32 10, ptr @14, ptr @14, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0, ptr @0)
  %51 = fadd float %2, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642799568, ptr @2, i32 3, ptr @2, ptr @7, ptr @2)
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642844128, ptr @2, i32 7, ptr @2, ptr @2, ptr @2, ptr @7, ptr @2, ptr @2, ptr @2)
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642699056, ptr @2, i32 5, ptr @3, ptr @2, ptr @8, ptr @7, ptr @2)
  %54 = getelementptr i8, ptr %1, i64 1046528
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642806144, ptr @2, i32 3, ptr @2, ptr @7, ptr @2)
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 1044480
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643380192, ptr @2, i32 1, ptr @3)
  %56 = getelementptr i8, ptr %1, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643157984, ptr @2, i32 1, ptr @3)
  %57 = getelementptr i8, ptr %1, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642753376, ptr @2, i32 1, ptr @3)
  %58 = getelementptr i8, ptr %0, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643397136, ptr @3, i32 1, ptr @4)
  %59 = icmp ult ptr %56, %58
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643398096, ptr @3, i32 1, ptr @4)
  %60 = icmp ult ptr %0, %57
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643054736, ptr @4, i32 1, ptr @5)
  %61 = and i1 %59, %60
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643409792, ptr @5, i32 0)
  br i1 %61, label %62, label %64

62:                                               ; preds = %67, %50
  %63 = phi i64 [ 1, %50 ], [ 509, %67 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643496064, ptr @5, i32 0)
  br label %145

64:                                               ; preds = %50
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643188432, ptr @14, i32 1, ptr @15)
  %65 = insertelement <4 x float> poison, float %51, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642726704, ptr @15, i32 2, ptr @0, ptr @0)
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642710992, ptr @5, i32 0)
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i64 [ 0, %64 ], [ %109, %67 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643378304, ptr @6, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2)
  %69 = or disjoint i64 %68, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642797968, ptr @2, i32 1, ptr @7)
  %70 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643454960, ptr @7, i32 2, ptr @0, ptr @0)
  %71 = load <4 x float>, ptr %70, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643456832, ptr @2, i32 2, ptr @8, ptr @7)
  %72 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643188640, ptr @7, i32 1, ptr @9)
  %73 = load <4 x float>, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643389968, ptr @9, i32 1, ptr @0)
  %74 = fneg <4 x float> %73
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643431120, ptr @0, i32 1, ptr @10)
  %75 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float 2.000000e+00), <4 x float> %74)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643449056, ptr @2, i32 1, ptr @7)
  %76 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642793280, ptr @7, i32 1, ptr @0)
  %77 = load <4 x float>, ptr %76, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643373088, ptr @6, i32 2, ptr @2, ptr @2)
  %78 = or disjoint i64 %68, 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643204416, ptr @2, i32 1, ptr @7)
  %79 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %78
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643120096, ptr @7, i32 1, ptr @0)
  %80 = load <4 x float>, ptr %79, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643389328, ptr @0, i32 1, ptr @11)
  %81 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %77, <4 x float> %80)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642714096, ptr @2, i32 1, ptr @7)
  %82 = getelementptr inbounds [4 x i8], ptr %0, i64 %68
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643400208, ptr @7, i32 1, ptr @11)
  %83 = load <4 x float>, ptr %82, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643374048, ptr @11, i32 1, ptr @0)
  %84 = fadd <4 x float> %81, %83
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643394064, ptr @0, i32 1, ptr @10)
  %85 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float -4.000000e+00), <4 x float> %84)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642726864, ptr @10, i32 1, ptr @0)
  %86 = fpext <4 x float> %75 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642735744, ptr @10, i32 1, ptr @0)
  %87 = fpext <4 x float> %85 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643219376, ptr @0, i32 1, ptr @12)
  %88 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %87, <4 x double> splat (double 1.000000e-01), <4 x double> %86)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643308896, ptr @12, i32 1, ptr @8)
  %89 = fptrunc <4 x double> %88 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643178736, ptr @8, i32 0)
  store <4 x float> %89, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643394944, ptr @2, i32 1, ptr @7)
  %90 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643376464, ptr @7, i32 2, ptr @0, ptr @0)
  %91 = load <4 x float>, ptr %90, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643372752, ptr @2, i32 2, ptr @8, ptr @7)
  %92 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642792480, ptr @7, i32 1, ptr @9)
  %93 = load <4 x float>, ptr %92, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642791520, ptr @9, i32 1, ptr @0)
  %94 = fneg <4 x float> %93
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643394464, ptr @0, i32 1, ptr @10)
  %95 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> splat (float 2.000000e+00), <4 x float> %94)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643399648, ptr @2, i32 1, ptr @7)
  %96 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %69
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642798736, ptr @7, i32 1, ptr @0)
  %97 = load <4 x float>, ptr %96, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643399808, ptr @2, i32 1, ptr @7)
  %98 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %78
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642790880, ptr @7, i32 1, ptr @0)
  %99 = load <4 x float>, ptr %98, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643396704, ptr @0, i32 1, ptr @11)
  %100 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %97, <4 x float> %99)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643382928, ptr @2, i32 1, ptr @7)
  %101 = getelementptr inbounds [4 x i8], ptr %53, i64 %68
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642788640, ptr @7, i32 1, ptr @11)
  %102 = load <4 x float>, ptr %101, align 4, !tbaa !9, !alias.scope !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643383088, ptr @11, i32 1, ptr @0)
  %103 = fadd <4 x float> %100, %102
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643393040, ptr @0, i32 1, ptr @10)
  %104 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> splat (float -4.000000e+00), <4 x float> %103)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642844800, ptr @10, i32 1, ptr @0)
  %105 = fpext <4 x float> %95 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643422688, ptr @10, i32 1, ptr @0)
  %106 = fpext <4 x float> %104 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643393280, ptr @0, i32 1, ptr @12)
  %107 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %106, <4 x double> splat (double 1.000000e-01), <4 x double> %105)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642745616, ptr @12, i32 1, ptr @8)
  %108 = fptrunc <4 x double> %107 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643383248, ptr @8, i32 0)
  store <4 x float> %108, ptr %92, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643450800, ptr @13, i32 1, ptr @3)
  %109 = add nuw i64 %68, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643398352, ptr @3, i32 1, ptr @5)
  %110 = icmp eq i64 %109, 508
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643415472, ptr @5, i32 0)
  br i1 %110, label %62, label %67, !llvm.loop !25

111:                                              ; preds = %114
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642715536, ptr @13, i32 1, ptr @3)
  %112 = add nuw nsw i64 %15, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642802784, ptr @3, i32 1, ptr @5)
  %113 = icmp eq i64 %112, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642704304, ptr @5, i32 0)
  br i1 %113, label %50, label %14, !llvm.loop !26

114:                                              ; preds = %20, %114
  %115 = phi i64 [ %126, %114 ], [ %21, %20 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642869696, ptr @2, i32 2, ptr @2, ptr @7)
  %116 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642708416, ptr @7, i32 1, ptr @14)
  %117 = load float, ptr %116, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642852880, ptr @2, i32 2, ptr @7, ptr @8)
  %118 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642709696, ptr @7, i32 1, ptr @9)
  %119 = load float, ptr %118, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642709824, ptr @9, i32 1, ptr @14)
  %120 = fneg float %119
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642789792, ptr @2, i32 1, ptr @7)
  %121 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642711728, ptr @7, i32 1, ptr @11)
  %122 = load float, ptr %121, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642727136, ptr @2, i32 1, ptr @7)
  %123 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %115
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642714528, ptr @7, i32 1, ptr @11)
  %124 = load float, ptr %123, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642714688, ptr @11, i32 1, ptr @11)
  %125 = fadd float %122, %124
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642748192, ptr @13, i32 2, ptr @3, ptr @2)
  %126 = add nuw nsw i64 %115, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642731040, ptr @2, i32 1, ptr @7)
  %127 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %126
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642715952, ptr @7, i32 1, ptr @11)
  %128 = load float, ptr %127, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642716112, ptr @11, i32 1, ptr @11)
  %129 = fadd float %125, %128
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642712272, ptr @2, i32 1, ptr @7)
  %130 = getelementptr i8, ptr %116, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642717376, ptr @7, i32 1, ptr @11)
  %131 = load float, ptr %130, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642717536, ptr @11, i32 1, ptr @14)
  %132 = fadd float %129, %131
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643395136, ptr @14, i32 1, ptr @15)
  %133 = insertelement <2 x float> poison, float %117, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642721200, ptr @15, i32 1, ptr @0)
  %134 = shufflevector <2 x float> %133, <2 x float> poison, <2 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643372944, ptr @14, i32 1, ptr @14)
  %135 = insertelement <2 x float> poison, float %120, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642763184, ptr @14, i32 1, ptr @0)
  %136 = insertelement <2 x float> %135, float %132, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643490864, ptr @0, i32 2, ptr @16, ptr @16)
  %137 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %134, <2 x float> <float 2.000000e+00, float -4.000000e+00>, <2 x float> %136)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642643136, ptr @16, i32 1, ptr @10)
  %138 = extractelement <2 x float> %137, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642719488, ptr @10, i32 1, ptr @0)
  %139 = fpext float %138 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643494576, ptr @16, i32 1, ptr @10)
  %140 = extractelement <2 x float> %137, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642719936, ptr @10, i32 1, ptr @0)
  %141 = fpext float %140 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642720528, ptr @0, i32 1, ptr @12)
  %142 = tail call double @llvm.fmuladd.f64(double %141, double 1.000000e-01, double %139)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642720672, ptr @12, i32 1, ptr @8)
  %143 = fptrunc double %142 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642720096, ptr @8, i32 0)
  store float %143, ptr %118, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642712016, ptr @3, i32 1, ptr @5)
  %144 = icmp eq i64 %126, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642706544, ptr @5, i32 0)
  br i1 %144, label %111, label %114, !llvm.loop !27

145:                                              ; preds = %62, %145
  %146 = phi i64 [ %155, %145 ], [ %63, %62 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642735120, ptr @2, i32 1, ptr @7)
  %147 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642727296, ptr @7, i32 2, ptr @0, ptr @0)
  %148 = load float, ptr %147, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642792352, ptr @2, i32 2, ptr @7, ptr @8)
  %149 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642728336, ptr @7, i32 1, ptr @9)
  %150 = load float, ptr %149, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642728464, ptr @9, i32 1, ptr @0)
  %151 = fneg float %150
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642728688, ptr @0, i32 1, ptr @10)
  %152 = tail call float @llvm.fmuladd.f32(float %148, float 2.000000e+00, float %151)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642836208, ptr @2, i32 1, ptr @7)
  %153 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642730016, ptr @7, i32 1, ptr @0)
  %154 = load float, ptr %153, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642722832, ptr @13, i32 3, ptr @3, ptr @2, ptr @2)
  %155 = add nuw nsw i64 %146, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642864672, ptr @2, i32 1, ptr @7)
  %156 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %155
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642731200, ptr @7, i32 1, ptr @0)
  %157 = load float, ptr %156, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642731424, ptr @0, i32 1, ptr @11)
  %158 = tail call float @llvm.fmuladd.f32(float %51, float %154, float %157)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642706256, ptr @13, i32 2, ptr @2, ptr @2)
  %159 = add nsw i64 %146, -1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642869488, ptr @2, i32 1, ptr @7)
  %160 = getelementptr inbounds [4 x i8], ptr %0, i64 %159
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642712432, ptr @7, i32 1, ptr @11)
  %161 = load float, ptr %160, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642730176, ptr @11, i32 1, ptr @0)
  %162 = fadd float %158, %161
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642735344, ptr @0, i32 1, ptr @10)
  %163 = tail call float @llvm.fmuladd.f32(float %148, float -4.000000e+00, float %162)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642735616, ptr @10, i32 1, ptr @0)
  %164 = fpext float %152 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642735872, ptr @10, i32 1, ptr @0)
  %165 = fpext float %163 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642736256, ptr @0, i32 1, ptr @12)
  %166 = tail call double @llvm.fmuladd.f64(double %165, double 1.000000e-01, double %164)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642736400, ptr @12, i32 1, ptr @8)
  %167 = fptrunc double %166 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642736032, ptr @8, i32 0)
  store float %167, ptr %149, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642852352, ptr @2, i32 1, ptr @7)
  %168 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642738688, ptr @7, i32 2, ptr @0, ptr @0)
  %169 = load float, ptr %168, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642840528, ptr @2, i32 2, ptr @7, ptr @8)
  %170 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642739728, ptr @7, i32 1, ptr @9)
  %171 = load float, ptr %170, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642739856, ptr @9, i32 1, ptr @0)
  %172 = fneg float %171
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642740080, ptr @0, i32 1, ptr @10)
  %173 = tail call float @llvm.fmuladd.f32(float %169, float 2.000000e+00, float %172)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642703664, ptr @2, i32 1, ptr @7)
  %174 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %146
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642741456, ptr @7, i32 1, ptr @0)
  %175 = load float, ptr %174, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642748448, ptr @2, i32 1, ptr @7)
  %176 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %155
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642742640, ptr @7, i32 1, ptr @0)
  %177 = load float, ptr %176, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642742912, ptr @0, i32 1, ptr @11)
  %178 = tail call float @llvm.fmuladd.f32(float %51, float %175, float %177)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642749072, ptr @2, i32 1, ptr @7)
  %179 = getelementptr inbounds [4 x i8], ptr %53, i64 %159
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642743952, ptr @7, i32 1, ptr @11)
  %180 = load float, ptr %179, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642741616, ptr @11, i32 1, ptr @0)
  %181 = fadd float %178, %180
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642745216, ptr @0, i32 1, ptr @10)
  %182 = tail call float @llvm.fmuladd.f32(float %169, float -4.000000e+00, float %181)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642745488, ptr @10, i32 1, ptr @0)
  %183 = fpext float %173 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642745744, ptr @10, i32 1, ptr @0)
  %184 = fpext float %182 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642746128, ptr @0, i32 1, ptr @12)
  %185 = tail call double @llvm.fmuladd.f64(double %184, double 1.000000e-01, double %183)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642746272, ptr @12, i32 1, ptr @8)
  %186 = fptrunc double %185 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642745904, ptr @8, i32 0)
  store float %186, ptr %170, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555641646624, ptr @3, i32 1, ptr @5)
  %187 = icmp eq i64 %155, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642725872, ptr @5, i32 0)
  br i1 %187, label %188, label %145, !llvm.loop !28

188:                                              ; preds = %145
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643384800, ptr @2, i32 1, ptr @3)
  %189 = getelementptr nuw i8, ptr %1, i64 2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643178896, ptr @2, i32 1, ptr @3)
  %190 = getelementptr i8, ptr %0, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643431488, ptr @3, i32 1, ptr @4)
  %191 = icmp ult ptr %189, %190
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643436976, ptr @3, i32 1, ptr @4)
  %192 = icmp ult ptr %0, %54
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643437232, ptr @4, i32 1, ptr @5)
  %193 = and i1 %191, %192
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642643600, ptr @5, i32 0)
  br i1 %193, label %194, label %196

194:                                              ; preds = %199, %188
  %195 = phi i64 [ 1, %188 ], [ 509, %199 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643374176, ptr @5, i32 0)
  br label %428

196:                                              ; preds = %188
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643157744, ptr @14, i32 1, ptr @15)
  %197 = insertelement <4 x float> poison, float %51, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642730464, ptr @15, i32 2, ptr @0, ptr @0)
  %198 = shufflevector <4 x float> %197, <4 x float> poison, <4 x i32> zeroinitializer
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643495840, ptr @5, i32 0)
  br label %199

199:                                              ; preds = %199, %196
  %200 = phi i64 [ 0, %196 ], [ %355, %199 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643219584, ptr @6, i32 2, ptr @2, ptr @2)
  %201 = or disjoint i64 %200, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643450416, ptr @6, i32 2, ptr @2, ptr @2)
  %202 = or disjoint i64 %200, 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643451616, ptr @6, i32 2, ptr @2, ptr @2)
  %203 = or disjoint i64 %200, 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643442336, ptr @13, i32 2, ptr @2, ptr @2)
  %204 = add i64 %200, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643422560, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %205 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %201
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643161568, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %206 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %202
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642725152, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %207 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %203
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642788960, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %208 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %204
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643204768, ptr @7, i32 1, ptr @14)
  %209 = load float, ptr %205, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643432048, ptr @7, i32 1, ptr @14)
  %210 = load float, ptr %206, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643434256, ptr @7, i32 1, ptr @14)
  %211 = load float, ptr %207, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643454576, ptr @7, i32 1, ptr @14)
  %212 = load float, ptr %208, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642797728, ptr @14, i32 1, ptr @14)
  %213 = insertelement <4 x float> poison, float %209, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642727968, ptr @14, i32 1, ptr @14)
  %214 = insertelement <4 x float> %213, float %210, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642632208, ptr @14, i32 1, ptr @14)
  %215 = insertelement <4 x float> %214, float %211, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642806352, ptr @14, i32 2, ptr @0, ptr @0)
  %216 = insertelement <4 x float> %215, float %212, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643454736, ptr @2, i32 3, ptr @2, ptr @8, ptr @7)
  %217 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %201
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643402352, ptr @2, i32 3, ptr @2, ptr @8, ptr @7)
  %218 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %202
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643460640, ptr @2, i32 2, ptr @2, ptr @7)
  %219 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %203
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643442000, ptr @2, i32 2, ptr @2, ptr @7)
  %220 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %204
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643432448, ptr @7, i32 1, ptr @14)
  %221 = load float, ptr %217, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643206912, ptr @7, i32 1, ptr @14)
  %222 = load float, ptr %218, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642718400, ptr @7, i32 1, ptr @14)
  %223 = load float, ptr %219, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642676928, ptr @7, i32 1, ptr @14)
  %224 = load float, ptr %220, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642645632, ptr @14, i32 1, ptr @14)
  %225 = insertelement <4 x float> poison, float %221, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643039376, ptr @14, i32 1, ptr @14)
  %226 = insertelement <4 x float> %225, float %222, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642635856, ptr @14, i32 1, ptr @14)
  %227 = insertelement <4 x float> %226, float %223, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643457040, ptr @14, i32 1, ptr @9)
  %228 = insertelement <4 x float> %227, float %224, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642949552, ptr @9, i32 1, ptr @0)
  %229 = fneg <4 x float> %228
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643505552, ptr @0, i32 1, ptr @10)
  %230 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %216, <4 x float> splat (float 2.000000e+00), <4 x float> %229)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643304592, ptr @2, i32 2, ptr @2, ptr @2)
  %231 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %200
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643304432, ptr @2, i32 1, ptr @7)
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 4096
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642636720, ptr @2, i32 2, ptr @2, ptr @2)
  %233 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %200
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643431872, ptr @2, i32 1, ptr @7)
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 6144
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643430528, ptr @2, i32 2, ptr @2, ptr @2)
  %235 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %200
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643387920, ptr @2, i32 1, ptr @7)
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 8192
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643252080, ptr @2, i32 2, ptr @2, ptr @2)
  %237 = getelementptr [2048 x i8], ptr %0, i64 %200
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643505184, ptr @2, i32 1, ptr @7)
  %238 = getelementptr i8, ptr %237, i64 10240
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642711408, ptr @7, i32 1, ptr @14)
  %239 = load float, ptr %232, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643382592, ptr @7, i32 1, ptr @14)
  %240 = load float, ptr %234, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643452800, ptr @7, i32 1, ptr @14)
  %241 = load float, ptr %236, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643385680, ptr @7, i32 1, ptr @14)
  %242 = load float, ptr %238, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643243776, ptr @14, i32 1, ptr @14)
  %243 = insertelement <4 x float> poison, float %239, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643187840, ptr @14, i32 1, ptr @14)
  %244 = insertelement <4 x float> %243, float %240, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643239664, ptr @14, i32 1, ptr @14)
  %245 = insertelement <4 x float> %244, float %241, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643239840, ptr @14, i32 1, ptr @11)
  %246 = insertelement <4 x float> %245, float %242, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643239984, ptr @2, i32 1, ptr @7)
  %247 = getelementptr i8, ptr %205, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643240144, ptr @2, i32 1, ptr @7)
  %248 = getelementptr i8, ptr %206, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643496208, ptr @2, i32 1, ptr @7)
  %249 = getelementptr i8, ptr %207, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643496368, ptr @2, i32 1, ptr @7)
  %250 = getelementptr i8, ptr %208, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643436352, ptr @7, i32 1, ptr @14)
  %251 = load float, ptr %247, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643457152, ptr @7, i32 1, ptr @14)
  %252 = load float, ptr %248, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643409520, ptr @7, i32 1, ptr @14)
  %253 = load float, ptr %249, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643430368, ptr @7, i32 1, ptr @14)
  %254 = load float, ptr %250, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643496560, ptr @14, i32 1, ptr @14)
  %255 = insertelement <4 x float> poison, float %251, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643496736, ptr @14, i32 1, ptr @14)
  %256 = insertelement <4 x float> %255, float %252, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643496912, ptr @14, i32 1, ptr @14)
  %257 = insertelement <4 x float> %256, float %253, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643497088, ptr @14, i32 1, ptr @11)
  %258 = insertelement <4 x float> %257, float %254, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643497232, ptr @11, i32 1, ptr @0)
  %259 = fadd <4 x float> %246, %258
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643497392, ptr @2, i32 1, ptr @7)
  %260 = getelementptr inbounds nuw i8, ptr %205, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643497552, ptr @2, i32 1, ptr @7)
  %261 = getelementptr inbounds nuw i8, ptr %206, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643497712, ptr @2, i32 1, ptr @7)
  %262 = getelementptr inbounds nuw i8, ptr %207, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643497872, ptr @2, i32 1, ptr @7)
  %263 = getelementptr inbounds nuw i8, ptr %208, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643510192, ptr @7, i32 1, ptr @14)
  %264 = load float, ptr %260, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643504912, ptr @7, i32 1, ptr @14)
  %265 = load float, ptr %261, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643498000, ptr @7, i32 1, ptr @14)
  %266 = load float, ptr %262, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643236000, ptr @7, i32 1, ptr @14)
  %267 = load float, ptr %263, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643236192, ptr @14, i32 1, ptr @14)
  %268 = insertelement <4 x float> poison, float %264, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643236368, ptr @14, i32 1, ptr @14)
  %269 = insertelement <4 x float> %268, float %265, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643236544, ptr @14, i32 1, ptr @14)
  %270 = insertelement <4 x float> %269, float %266, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643236720, ptr @14, i32 1, ptr @0)
  %271 = insertelement <4 x float> %270, float %267, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643428336, ptr @0, i32 1, ptr @0)
  %272 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %198, <4 x float> %271, <4 x float> %259)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643505792, ptr @0, i32 1, ptr @10)
  %273 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %216, <4 x float> splat (float -4.000000e+00), <4 x float> %272)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643236832, ptr @10, i32 1, ptr @0)
  %274 = fpext <4 x float> %230 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643236960, ptr @10, i32 1, ptr @0)
  %275 = fpext <4 x float> %273 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643467328, ptr @0, i32 3, ptr @15, ptr @15, ptr @12)
  %276 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %275, <4 x double> splat (double 1.000000e-01), <4 x double> %274)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643237088, ptr @12, i32 2, ptr @16, ptr @16)
  %277 = fptrunc <4 x double> %276 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643392832, ptr @16, i32 1, ptr @8)
  %278 = extractelement <4 x float> %277, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643237248, ptr @8, i32 0)
  store float %278, ptr %217, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643237408, ptr @16, i32 1, ptr @8)
  %279 = extractelement <4 x float> %277, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643237552, ptr @8, i32 0)
  store float %279, ptr %218, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643238320, ptr @2, i32 1, ptr @7)
  %280 = getelementptr inbounds nuw i8, ptr %205, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643238480, ptr @2, i32 1, ptr @7)
  %281 = getelementptr inbounds nuw i8, ptr %206, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643238640, ptr @2, i32 1, ptr @7)
  %282 = getelementptr inbounds nuw i8, ptr %207, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643238800, ptr @2, i32 1, ptr @7)
  %283 = getelementptr inbounds nuw i8, ptr %208, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643238928, ptr @7, i32 1, ptr @14)
  %284 = load float, ptr %280, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643239056, ptr @7, i32 1, ptr @14)
  %285 = load float, ptr %281, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643239184, ptr @7, i32 1, ptr @14)
  %286 = load float, ptr %282, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643239312, ptr @7, i32 1, ptr @14)
  %287 = load float, ptr %283, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643498192, ptr @14, i32 1, ptr @14)
  %288 = insertelement <4 x float> poison, float %284, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643498368, ptr @14, i32 1, ptr @14)
  %289 = insertelement <4 x float> %288, float %285, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643498544, ptr @14, i32 1, ptr @14)
  %290 = insertelement <4 x float> %289, float %286, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643498720, ptr @14, i32 2, ptr @0, ptr @0)
  %291 = insertelement <4 x float> %290, float %287, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643239472, ptr @2, i32 2, ptr @8, ptr @7)
  %292 = getelementptr inbounds nuw i8, ptr %217, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643498864, ptr @2, i32 2, ptr @8, ptr @7)
  %293 = getelementptr inbounds nuw i8, ptr %218, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643499024, ptr @2, i32 2, ptr @8, ptr @7)
  %294 = getelementptr inbounds nuw i8, ptr %219, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643499184, ptr @2, i32 2, ptr @8, ptr @7)
  %295 = getelementptr inbounds nuw i8, ptr %220, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643499312, ptr @7, i32 1, ptr @14)
  %296 = load float, ptr %292, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643499440, ptr @7, i32 1, ptr @14)
  %297 = load float, ptr %293, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643499568, ptr @7, i32 1, ptr @14)
  %298 = load float, ptr %294, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643499696, ptr @7, i32 1, ptr @14)
  %299 = load float, ptr %295, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643499888, ptr @14, i32 1, ptr @14)
  %300 = insertelement <4 x float> poison, float %296, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643500064, ptr @14, i32 1, ptr @14)
  %301 = insertelement <4 x float> %300, float %297, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643500240, ptr @14, i32 1, ptr @14)
  %302 = insertelement <4 x float> %301, float %298, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643500416, ptr @14, i32 1, ptr @9)
  %303 = insertelement <4 x float> %302, float %299, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643500528, ptr @9, i32 1, ptr @0)
  %304 = fneg <4 x float> %303
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643506032, ptr @0, i32 1, ptr @10)
  %305 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %291, <4 x float> splat (float 2.000000e+00), <4 x float> %304)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643542016, ptr @2, i32 1, ptr @7)
  %306 = getelementptr inbounds nuw i8, ptr %231, i64 6140
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643500688, ptr @2, i32 1, ptr @7)
  %307 = getelementptr inbounds nuw i8, ptr %233, i64 8188
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643500848, ptr @2, i32 1, ptr @7)
  %308 = getelementptr inbounds nuw i8, ptr %235, i64 10236
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643501008, ptr @2, i32 1, ptr @7)
  %309 = getelementptr i8, ptr %237, i64 12284
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643501296, ptr @7, i32 1, ptr @14)
  %310 = load float, ptr %306, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643501424, ptr @7, i32 1, ptr @14)
  %311 = load float, ptr %307, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643501552, ptr @7, i32 1, ptr @14)
  %312 = load float, ptr %308, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643501680, ptr @7, i32 1, ptr @14)
  %313 = load float, ptr %309, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643501872, ptr @14, i32 1, ptr @14)
  %314 = insertelement <4 x float> poison, float %310, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643502048, ptr @14, i32 1, ptr @14)
  %315 = insertelement <4 x float> %314, float %311, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643502224, ptr @14, i32 1, ptr @14)
  %316 = insertelement <4 x float> %315, float %312, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643502400, ptr @14, i32 1, ptr @11)
  %317 = insertelement <4 x float> %316, float %313, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643502544, ptr @2, i32 1, ptr @7)
  %318 = getelementptr i8, ptr %205, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643502704, ptr @2, i32 1, ptr @7)
  %319 = getelementptr i8, ptr %206, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643502864, ptr @2, i32 1, ptr @7)
  %320 = getelementptr i8, ptr %207, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643503024, ptr @2, i32 1, ptr @7)
  %321 = getelementptr i8, ptr %208, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643503152, ptr @7, i32 1, ptr @14)
  %322 = load float, ptr %318, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643503280, ptr @7, i32 1, ptr @14)
  %323 = load float, ptr %319, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643503408, ptr @7, i32 1, ptr @14)
  %324 = load float, ptr %320, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643503536, ptr @7, i32 1, ptr @14)
  %325 = load float, ptr %321, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643544512, ptr @14, i32 1, ptr @14)
  %326 = insertelement <4 x float> poison, float %322, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643544688, ptr @14, i32 1, ptr @14)
  %327 = insertelement <4 x float> %326, float %323, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643544864, ptr @14, i32 1, ptr @14)
  %328 = insertelement <4 x float> %327, float %324, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643545040, ptr @14, i32 1, ptr @11)
  %329 = insertelement <4 x float> %328, float %325, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643545184, ptr @11, i32 1, ptr @0)
  %330 = fadd <4 x float> %317, %329
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643545344, ptr @2, i32 1, ptr @7)
  %331 = getelementptr inbounds nuw i8, ptr %205, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643545504, ptr @2, i32 1, ptr @7)
  %332 = getelementptr inbounds nuw i8, ptr %206, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643545664, ptr @2, i32 1, ptr @7)
  %333 = getelementptr inbounds nuw i8, ptr %207, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643545824, ptr @2, i32 1, ptr @7)
  %334 = getelementptr inbounds nuw i8, ptr %208, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643503664, ptr @7, i32 1, ptr @14)
  %335 = load float, ptr %331, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643545952, ptr @7, i32 1, ptr @14)
  %336 = load float, ptr %332, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643546080, ptr @7, i32 1, ptr @14)
  %337 = load float, ptr %333, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643537248, ptr @7, i32 1, ptr @14)
  %338 = load float, ptr %334, align 4, !tbaa !9, !alias.scope !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643537440, ptr @14, i32 1, ptr @14)
  %339 = insertelement <4 x float> poison, float %335, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643537616, ptr @14, i32 1, ptr @14)
  %340 = insertelement <4 x float> %339, float %336, i64 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643537792, ptr @14, i32 1, ptr @14)
  %341 = insertelement <4 x float> %340, float %337, i64 2
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643537968, ptr @14, i32 1, ptr @0)
  %342 = insertelement <4 x float> %341, float %338, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643487360, ptr @0, i32 1, ptr @0)
  %343 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %198, <4 x float> %342, <4 x float> %330)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643506512, ptr @0, i32 1, ptr @10)
  %344 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %291, <4 x float> splat (float -4.000000e+00), <4 x float> %343)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643538080, ptr @10, i32 1, ptr @0)
  %345 = fpext <4 x float> %305 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643538208, ptr @10, i32 1, ptr @0)
  %346 = fpext <4 x float> %344 to <4 x double>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643487904, ptr @0, i32 3, ptr @15, ptr @15, ptr @12)
  %347 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %346, <4 x double> splat (double 1.000000e-01), <4 x double> %345)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643538336, ptr @12, i32 2, ptr @16, ptr @16)
  %348 = fptrunc <4 x double> %347 to <4 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643538496, ptr @16, i32 1, ptr @8)
  %349 = extractelement <4 x float> %348, i64 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643538640, ptr @8, i32 0)
  store float %349, ptr %292, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642712720, ptr @15, i32 1, ptr @12)
  %350 = shufflevector <4 x double> %347, <4 x double> %276, <2 x i32> <i32 1, i32 6>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643507360, ptr @12, i32 1, ptr @8)
  %351 = fptrunc <2 x double> %350 to <2 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642726016, ptr @8, i32 0)
  store <2 x float> %351, ptr %293, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642721632, ptr @15, i32 1, ptr @12)
  %352 = shufflevector <4 x double> %347, <4 x double> %276, <2 x i32> <i32 2, i32 7>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643506848, ptr @12, i32 1, ptr @8)
  %353 = fptrunc <2 x double> %352 to <2 x float>
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643501168, ptr @8, i32 0)
  store <2 x float> %353, ptr %294, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643539408, ptr @16, i32 1, ptr @8)
  %354 = extractelement <4 x float> %348, i64 3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643539552, ptr @8, i32 0)
  store float %354, ptr %295, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643539712, ptr @13, i32 1, ptr @3)
  %355 = add nuw i64 %200, 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643539856, ptr @3, i32 1, ptr @5)
  %356 = icmp eq i64 %355, 508
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643540032, ptr @5, i32 0)
  br i1 %356, label %194, label %199, !llvm.loop !34

357:                                              ; preds = %428
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642733152, ptr @7, i32 2, ptr @17, ptr @0)
  %358 = load float, ptr %0, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642733952, ptr @7, i32 1, ptr @9)
  %359 = load float, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642734080, ptr @9, i32 1, ptr @0)
  %360 = fneg float %359
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642734304, ptr @0, i32 1, ptr @10)
  %361 = tail call float @llvm.fmuladd.f32(float %358, float 2.000000e+00, float %360)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642724224, ptr @2, i32 1, ptr @7)
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642776960, ptr @7, i32 1, ptr @11)
  %363 = load float, ptr %362, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642777600, ptr @7, i32 1, ptr @11)
  %364 = load float, ptr %52, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642777760, ptr @11, i32 1, ptr @0)
  %365 = fadd float %363, %364
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642867008, ptr @17, i32 1, ptr @0)
  %366 = fmul float %358, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642779072, ptr @0, i32 1, ptr @10)
  %367 = tail call float @llvm.fmuladd.f32(float %51, float %365, float %366)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642779344, ptr @10, i32 1, ptr @0)
  %368 = fpext float %361 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642779600, ptr @10, i32 1, ptr @0)
  %369 = fpext float %367 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642779984, ptr @0, i32 1, ptr @12)
  %370 = tail call double @llvm.fmuladd.f64(double %369, double 1.000000e-01, double %368)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642780128, ptr @12, i32 1, ptr @8)
  %371 = fptrunc double %370 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642779760, ptr @8, i32 0)
  store float %371, ptr %1, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642781936, ptr @7, i32 2, ptr @17, ptr @0)
  %372 = load float, ptr %53, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642782736, ptr @7, i32 1, ptr @9)
  %373 = load float, ptr %54, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642782864, ptr @9, i32 1, ptr @0)
  %374 = fneg float %373
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642783088, ptr @0, i32 1, ptr @10)
  %375 = tail call float @llvm.fmuladd.f32(float %372, float 2.000000e+00, float %374)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643064416, ptr @2, i32 1, ptr @7)
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642784176, ptr @7, i32 1, ptr @11)
  %377 = load float, ptr %376, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642784816, ptr @7, i32 1, ptr @11)
  %378 = load float, ptr %55, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642784976, ptr @11, i32 1, ptr @0)
  %379 = fadd float %377, %378
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643063040, ptr @17, i32 1, ptr @0)
  %380 = fmul float %372, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642786288, ptr @0, i32 1, ptr @10)
  %381 = tail call float @llvm.fmuladd.f32(float %51, float %379, float %380)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642786560, ptr @10, i32 1, ptr @0)
  %382 = fpext float %375 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642786816, ptr @10, i32 1, ptr @0)
  %383 = fpext float %381 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642787200, ptr @0, i32 1, ptr @12)
  %384 = tail call double @llvm.fmuladd.f64(double %383, double 1.000000e-01, double %382)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642787344, ptr @12, i32 1, ptr @8)
  %385 = fptrunc double %384 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642786976, ptr @8, i32 0)
  store float %385, ptr %54, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642785936, ptr @2, i32 1, ptr @7)
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642789152, ptr @7, i32 2, ptr @17, ptr @0)
  %387 = load float, ptr %386, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643062880, ptr @2, i32 2, ptr @7, ptr @8)
  %388 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642789952, ptr @7, i32 1, ptr @9)
  %389 = load float, ptr %388, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642790080, ptr @9, i32 1, ptr @0)
  %390 = fneg float %389
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642790304, ptr @0, i32 1, ptr @10)
  %391 = tail call float @llvm.fmuladd.f32(float %387, float 2.000000e+00, float %390)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642637616, ptr @2, i32 1, ptr @7)
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642791392, ptr @7, i32 1, ptr @11)
  %393 = load float, ptr %392, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642631648, ptr @2, i32 1, ptr @7)
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642792032, ptr @7, i32 1, ptr @11)
  %395 = load float, ptr %394, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642792192, ptr @11, i32 1, ptr @0)
  %396 = fadd float %393, %395
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642634800, ptr @17, i32 1, ptr @0)
  %397 = fmul float %387, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642793504, ptr @0, i32 1, ptr @10)
  %398 = tail call float @llvm.fmuladd.f32(float %51, float %396, float %397)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642793776, ptr @10, i32 1, ptr @0)
  %399 = fpext float %391 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642794032, ptr @10, i32 1, ptr @0)
  %400 = fpext float %398 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642794416, ptr @0, i32 1, ptr @12)
  %401 = tail call double @llvm.fmuladd.f64(double %400, double 1.000000e-01, double %399)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642794560, ptr @12, i32 1, ptr @8)
  %402 = fptrunc double %401 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642794192, ptr @8, i32 0)
  store float %402, ptr %388, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642622656, ptr @2, i32 1, ptr @7)
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642796368, ptr @7, i32 2, ptr @17, ptr @0)
  %404 = load float, ptr %403, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642646528, ptr @2, i32 2, ptr @8, ptr @7)
  %405 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642797168, ptr @7, i32 1, ptr @9)
  %406 = load float, ptr %405, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642797296, ptr @9, i32 1, ptr @0)
  %407 = fneg float %406
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642797520, ptr @0, i32 1, ptr @10)
  %408 = tail call float @llvm.fmuladd.f32(float %404, float 2.000000e+00, float %407)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642638976, ptr @2, i32 1, ptr @7)
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642798608, ptr @7, i32 1, ptr @11)
  %410 = load float, ptr %409, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642703392, ptr @2, i32 1, ptr @7)
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642799248, ptr @7, i32 1, ptr @11)
  %412 = load float, ptr %411, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642799408, ptr @11, i32 1, ptr @0)
  %413 = fadd float %410, %412
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642834048, ptr @17, i32 1, ptr @0)
  %414 = fmul float %404, -4.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642800720, ptr @0, i32 1, ptr @10)
  %415 = tail call float @llvm.fmuladd.f32(float %51, float %413, float %414)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642800992, ptr @10, i32 1, ptr @0)
  %416 = fpext float %408 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642801248, ptr @10, i32 1, ptr @0)
  %417 = fpext float %415 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642801632, ptr @0, i32 1, ptr @12)
  %418 = tail call double @llvm.fmuladd.f64(double %417, double 1.000000e-01, double %416)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642801776, ptr @12, i32 1, ptr @8)
  %419 = fptrunc double %418 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642801408, ptr @8, i32 0)
  store float %419, ptr %405, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642803760, ptr @0, i32 1, ptr @17)
  %420 = tail call float @simCalcSinus(float noundef %3) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642800368, ptr @17, i32 1, ptr @11)
  %421 = fmul float %420, 3.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642749632, ptr @18, i32 1, ptr @2)
  %422 = sext i32 %4 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642804064, ptr @2, i32 1, ptr @2)
  %423 = getelementptr inbounds [2048 x i8], ptr %1, i64 %422
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642805184, ptr @18, i32 1, ptr @2)
  %424 = sext i32 %5 to i64
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642850256, ptr @2, i32 2, ptr @7, ptr @8)
  %425 = getelementptr inbounds [4 x i8], ptr %423, i64 %424
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642805488, ptr @7, i32 1, ptr @11)
  %426 = load float, ptr %425, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642805648, ptr @11, i32 1, ptr @8)
  %427 = fadd float %426, %421
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642805808, ptr @8, i32 0)
  store float %427, ptr %425, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642634904, ptr @1, i32 0)
  ret void

428:                                              ; preds = %194, %428
  %429 = phi i64 [ %436, %428 ], [ %195, %194 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642857280, ptr @2, i32 6, ptr @2, ptr @2, ptr @2, ptr @2, ptr @2, ptr @7)
  %430 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %429
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642751232, ptr @7, i32 2, ptr @0, ptr @0)
  %431 = load float, ptr %430, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642635456, ptr @2, i32 3, ptr @2, ptr @7, ptr @8)
  %432 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %429
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642752272, ptr @7, i32 1, ptr @9)
  %433 = load float, ptr %432, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642752400, ptr @9, i32 1, ptr @0)
  %434 = fneg float %433
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642752672, ptr @0, i32 1, ptr @10)
  %435 = tail call float @llvm.fmuladd.f32(float %431, float 2.000000e+00, float %434)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642859392, ptr @13, i32 2, ptr @3, ptr @2)
  %436 = add nuw nsw i64 %429, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642637056, ptr @2, i32 2, ptr @2, ptr @7)
  %437 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %436
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642754016, ptr @7, i32 1, ptr @11)
  %438 = load float, ptr %437, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642770192, ptr @2, i32 1, ptr @7)
  %439 = getelementptr i8, ptr %430, i64 -2048
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642755040, ptr @7, i32 1, ptr @11)
  %440 = load float, ptr %439, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642755200, ptr @11, i32 1, ptr @0)
  %441 = fadd float %438, %440
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642706688, ptr @2, i32 1, ptr @7)
  %442 = getelementptr inbounds nuw i8, ptr %430, i64 4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642756208, ptr @7, i32 1, ptr @0)
  %443 = load float, ptr %442, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642756592, ptr @0, i32 1, ptr @0)
  %444 = tail call float @llvm.fmuladd.f32(float %51, float %443, float %441)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642757712, ptr @0, i32 1, ptr @10)
  %445 = tail call float @llvm.fmuladd.f32(float %431, float -4.000000e+00, float %444)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642757984, ptr @10, i32 1, ptr @0)
  %446 = fpext float %435 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642758240, ptr @10, i32 1, ptr @0)
  %447 = fpext float %445 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642758624, ptr @0, i32 1, ptr @12)
  %448 = tail call double @llvm.fmuladd.f64(double %447, double 1.000000e-01, double %446)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642758768, ptr @12, i32 1, ptr @8)
  %449 = fptrunc double %448 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642758400, ptr @8, i32 0)
  store float %449, ptr %432, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642722560, ptr @2, i32 1, ptr @7)
  %450 = getelementptr inbounds nuw i8, ptr %430, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642761056, ptr @7, i32 2, ptr @0, ptr @0)
  %451 = load float, ptr %450, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642747920, ptr @2, i32 2, ptr @7, ptr @8)
  %452 = getelementptr inbounds nuw i8, ptr %432, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642762096, ptr @7, i32 1, ptr @9)
  %453 = load float, ptr %452, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642762224, ptr @9, i32 1, ptr @0)
  %454 = fneg float %453
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642762448, ptr @0, i32 1, ptr @10)
  %455 = tail call float @llvm.fmuladd.f32(float %451, float 2.000000e+00, float %454)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642785136, ptr @2, i32 1, ptr @7)
  %456 = getelementptr inbounds nuw i8, ptr %437, i64 2044
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642763792, ptr @7, i32 1, ptr @11)
  %457 = load float, ptr %456, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642756368, ptr @2, i32 1, ptr @7)
  %458 = getelementptr i8, ptr %430, i64 -4
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642764816, ptr @7, i32 1, ptr @11)
  %459 = load float, ptr %458, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642764976, ptr @11, i32 1, ptr @0)
  %460 = fadd float %457, %459
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642766144, ptr @2, i32 1, ptr @7)
  %461 = getelementptr inbounds nuw i8, ptr %430, i64 2040
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642765984, ptr @7, i32 1, ptr @0)
  %462 = load float, ptr %461, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642766368, ptr @0, i32 1, ptr @0)
  %463 = tail call float @llvm.fmuladd.f32(float %51, float %462, float %460)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642767488, ptr @0, i32 1, ptr @10)
  %464 = tail call float @llvm.fmuladd.f32(float %451, float -4.000000e+00, float %463)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642767760, ptr @10, i32 1, ptr @0)
  %465 = fpext float %455 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642768016, ptr @10, i32 1, ptr @0)
  %466 = fpext float %464 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642768400, ptr @0, i32 1, ptr @12)
  %467 = tail call double @llvm.fmuladd.f64(double %466, double 1.000000e-01, double %465)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642768544, ptr @12, i32 1, ptr @8)
  %468 = fptrunc double %467 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642768176, ptr @8, i32 0)
  store float %468, ptr %452, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642730784, ptr @3, i32 1, ptr @5)
  %469 = icmp eq i64 %436, 511
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642749808, ptr @5, i32 0)
  br i1 %469, label %357, label %428, !llvm.loop !35
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare float @simCalcSinus(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef float @saturate(float noundef %0) local_unnamed_addr #5 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642708256, ptr @19, i32 1, ptr @5)
  %2 = fcmp ogt float %0, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642697792, ptr @5, i32 0)
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642676688, ptr @19, i32 1, ptr @5)
  %4 = fcmp olt float %0, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642698848, ptr @5, i32 0)
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642698672, ptr @5, i32 0)
  br label %6

6:                                                ; preds = %1, %3, %5
  %7 = phi float [ %0, %3 ], [ -1.000000e+01, %5 ], [ 1.000000e+01, %1 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642817600, ptr @1, i32 0)
  ret float %7
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @app() local_unnamed_addr #6 {
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642675536, ptr @20, i32 3, ptr @0, ptr @2, ptr @0)
  %1 = alloca [2 x [512 x [512 x float]]], align 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642816240, ptr @0, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642698544, ptr @2, i32 0)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1048576
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555643075072, ptr @0, i32 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2097152) %1, i8 0, i64 2097152, i1 false), !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642836336, ptr @5, i32 0)
  br label %3

3:                                                ; preds = %72, %0
  %4 = phi float [ 5.000000e-01, %0 ], [ %73, %72 ]
  %5 = phi float [ 0.000000e+00, %0 ], [ %76, %72 ]
  %6 = phi i32 [ 256, %0 ], [ %52, %72 ]
  %7 = phi i32 [ 256, %0 ], [ %53, %72 ]
  %8 = phi ptr [ %2, %0 ], [ %9, %72 ]
  %9 = phi ptr [ %1, %0 ], [ %8, %72 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642837888, ptr @0, i32 0)
  call void @emulationStep(ptr noundef %9, ptr noundef %8, float noundef %4, float noundef %5, i32 noundef %7, i32 noundef %6)
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642840752, ptr @5, i32 0)
  br label %10

10:                                               ; preds = %3, %17
  %11 = phi i64 [ 0, %3 ], [ %18, %17 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642866560, ptr @2, i32 1, ptr @2)
  %12 = getelementptr inbounds nuw [2048 x i8], ptr %9, i64 %11
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642646208, ptr @21, i32 1, ptr @0)
  %13 = trunc nuw nsw i64 %11 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642634352, ptr @5, i32 0)
  br label %20

14:                                               ; preds = %17
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642844352, ptr @0, i32 0)
  tail call void (...) @simFlush() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642854832, ptr @0, i32 1, ptr @3)
  %15 = tail call i32 (...) @simHasClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642855008, ptr @3, i32 1, ptr @5)
  %16 = icmp eq i32 %15, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642840928, ptr @5, i32 0)
  br i1 %16, label %51, label %42

17:                                               ; preds = %28
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642852208, ptr @13, i32 1, ptr @3)
  %18 = add nuw nsw i64 %11, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555641546336, ptr @3, i32 1, ptr @5)
  %19 = icmp eq i64 %18, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642841696, ptr @5, i32 0)
  br i1 %19, label %14, label %10, !llvm.loop !36

20:                                               ; preds = %10, %28
  %21 = phi i64 [ 0, %10 ], [ %40, %28 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642711568, ptr @2, i32 1, ptr @7)
  %22 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %21
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642845792, ptr @7, i32 2, ptr @19, ptr @19)
  %23 = load float, ptr %22, align 4, !tbaa !9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642865120, ptr @19, i32 1, ptr @5)
  %24 = fcmp ogt float %23, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642834432, ptr @5, i32 0)
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642754176, ptr @19, i32 1, ptr @5)
  %26 = fcmp olt float %23, -1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642705088, ptr @5, i32 0)
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642638608, ptr @5, i32 0)
  br label %28

28:                                               ; preds = %20, %25, %27
  %29 = phi float [ %23, %25 ], [ -1.000000e+01, %27 ], [ 1.000000e+01, %20 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642846688, ptr @10, i32 1, ptr @11)
  %30 = fpext float %29 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642846848, ptr @11, i32 1, ptr @22)
  %31 = fadd double %30, 1.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642847136, ptr @22, i32 1, ptr @12)
  %32 = fdiv double %31, 2.000000e+01
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642847264, ptr @12, i32 1, ptr @17)
  %33 = fptrunc double %32 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642848128, ptr @17, i32 1, ptr @23)
  %34 = fmul float %33, 2.550000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642848256, ptr @23, i32 1, ptr @4)
  %35 = fptosi float %34 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642848400, ptr @4, i32 1, ptr @24)
  %36 = and i32 %35, 255
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642849264, ptr @24, i32 1, ptr @6)
  %37 = mul nuw nsw i32 %36, 65793
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642817200, ptr @6, i32 1, ptr @0)
  %38 = or disjoint i32 %37, -16777216
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642867600, ptr @21, i32 1, ptr @0)
  %39 = trunc nuw nsw i64 %21 to i32
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642803456, ptr @0, i32 0)
  tail call void @simPutPixel(i32 noundef %13, i32 noundef %39, i32 noundef %38) #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642732048, ptr @13, i32 1, ptr @3)
  %40 = add nuw nsw i64 %21, 1
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555641541488, ptr @3, i32 1, ptr @5)
  %41 = icmp eq i64 %40, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642843936, ptr @5, i32 0)
  br i1 %41, label %17, label %20, !llvm.loop !37

42:                                               ; preds = %14
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642855632, ptr @0, i32 2, ptr @25, ptr @4)
  %43 = tail call i32 (...) @simGetClick() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642856400, ptr @25, i32 2, ptr @26, ptr @3)
  %44 = ashr i32 %43, 16
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642857136, ptr @4, i32 2, ptr @26, ptr @3)
  %45 = and i32 %43, 65535
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642713680, ptr @3, i32 1, ptr @26)
  %46 = icmp ult i32 %44, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642858944, ptr @3, i32 1, ptr @26)
  %47 = icmp samesign ult i32 %45, 512
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642737152, ptr @26, i32 2, ptr @26, ptr @26)
  %48 = select i1 %46, i1 %47, i1 false
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642741936, ptr @26, i32 0)
  %49 = select i1 %48, i32 %45, i32 %6
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642834240, ptr @26, i32 0)
  %50 = select i1 %48, i32 %44, i32 %7
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642860832, ptr @5, i32 0)
  br label %51

51:                                               ; preds = %42, %14
  %52 = phi i32 [ %49, %42 ], [ %6, %14 ]
  %53 = phi i32 [ %50, %42 ], [ %7, %14 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642716928, ptr @0, i32 1, ptr @3)
  %54 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642770048, ptr @3, i32 1, ptr @5)
  %55 = icmp eq i32 %54, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642703248, ptr @5, i32 0)
  br i1 %55, label %72, label %56

56:                                               ; preds = %51, %68
  %57 = phi float [ %69, %68 ], [ %4, %51 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642862704, ptr @0, i32 1, ptr @24)
  %58 = tail call i32 (...) @simGetScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642862880, ptr @24, i32 1, ptr @27)
  %59 = mul nsw i32 %58, 5
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642863584, ptr @27, i32 1, ptr @22)
  %60 = sitofp i32 %59 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642863808, ptr @22, i32 1, ptr @12)
  %61 = fdiv double %60, 1.000000e+02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642863936, ptr @12, i32 1, ptr @11)
  %62 = fptrunc double %61 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642864512, ptr @11, i32 2, ptr @19, ptr @19)
  %63 = fadd float %57, %62
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642711136, ptr @19, i32 1, ptr @5)
  %64 = fcmp ogt float %63, 1.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642865680, ptr @5, i32 0)
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642865376, ptr @19, i32 1, ptr @5)
  %66 = fcmp olt float %63, 0.000000e+00
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642866864, ptr @5, i32 0)
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642866688, ptr @5, i32 0)
  br label %68

68:                                               ; preds = %56, %65, %67
  %69 = phi float [ %63, %65 ], [ 0.000000e+00, %67 ], [ 1.000000e+00, %56 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642861456, ptr @0, i32 1, ptr @3)
  %70 = tail call i32 (...) @simHasScroll() #9
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642861632, ptr @3, i32 1, ptr @5)
  %71 = icmp eq i32 %70, 0
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642862080, ptr @5, i32 0)
  br i1 %71, label %72, label %56, !llvm.loop !38

72:                                               ; preds = %68, %51
  %73 = phi float [ %4, %51 ], [ %69, %68 ]
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642869040, ptr @10, i32 1, ptr @11)
  %74 = fpext float %5 to double
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642869200, ptr @11, i32 1, ptr @12)
  %75 = fadd double %74, 5.000000e-02
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642869328, ptr @12, i32 0)
  %76 = fptrunc double %75 to float
  call void (i64, ptr, i32, ...) @logUserOperand(i64 94555642869840, ptr @5, i32 0)
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
