; ModuleID = 'app.c'
source_filename = "app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @initGrids(ptr nofree noundef writeonly captures(none) initializes((0, 2097152)) %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emulationStep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = getelementptr nuw i8, ptr %1, i64 2052
  %8 = getelementptr i8, ptr %1, i64 1046524
  %9 = getelementptr nuw i8, ptr %0, i64 4
  %10 = getelementptr i8, ptr %0, i64 1048572
  %11 = icmp ult ptr %7, %10
  %12 = icmp ult ptr %9, %8
  %13 = and i1 %11, %12
  br label %14

14:                                               ; preds = %6, %111
  %15 = phi i64 [ 1, %6 ], [ %112, %111 ]
  %16 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %15
  %17 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %15
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 2048
  %19 = getelementptr i8, ptr %16, i64 -2048
  br i1 %13, label %20, label %22

20:                                               ; preds = %22, %14
  %21 = phi i64 [ 1, %14 ], [ 509, %22 ]
  br label %114

22:                                               ; preds = %14, %22
  %23 = phi i64 [ %48, %22 ], [ 0, %14 ]
  %24 = or disjoint i64 %23, 1
  %25 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %24
  %26 = load <4 x float>, ptr %25, align 4, !tbaa !9, !alias.scope !11
  %27 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %24
  %28 = load <4 x float>, ptr %27, align 4, !tbaa !9, !alias.scope !14, !noalias !11
  %29 = fneg <4 x float> %28
  %30 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float 2.000000e+00), <4 x float> %29)
  %31 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %24
  %32 = load <4 x float>, ptr %31, align 4, !tbaa !9, !alias.scope !11
  %33 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %24
  %34 = load <4 x float>, ptr %33, align 4, !tbaa !9, !alias.scope !11
  %35 = fadd <4 x float> %32, %34
  %36 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %23
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %38 = load <4 x float>, ptr %37, align 4, !tbaa !9, !alias.scope !11
  %39 = fadd <4 x float> %35, %38
  %40 = getelementptr i8, ptr %25, i64 -4
  %41 = load <4 x float>, ptr %40, align 4, !tbaa !9, !alias.scope !11
  %42 = fadd <4 x float> %39, %41
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float -4.000000e+00), <4 x float> %42)
  %44 = fpext <4 x float> %30 to <4 x double>
  %45 = fpext <4 x float> %43 to <4 x double>
  %46 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %45, <4 x double> splat (double 1.000000e-01), <4 x double> %44)
  %47 = fptrunc <4 x double> %46 to <4 x float>
  store <4 x float> %47, ptr %27, align 4, !tbaa !9, !alias.scope !14, !noalias !11
  %48 = add nuw i64 %23, 4
  %49 = icmp eq i64 %48, 508
  br i1 %49, label %20, label %22, !llvm.loop !16

50:                                               ; preds = %111
  %51 = fadd float %2, 1.000000e+00
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1046528
  %54 = getelementptr i8, ptr %1, i64 1046528
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 1044480
  %56 = getelementptr i8, ptr %1, i64 4
  %57 = getelementptr i8, ptr %1, i64 1048572
  %58 = getelementptr i8, ptr %0, i64 1048576
  %59 = icmp ult ptr %56, %58
  %60 = icmp ult ptr %0, %57
  %61 = and i1 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %67, %50
  %63 = phi i64 [ 1, %50 ], [ 509, %67 ]
  br label %145

64:                                               ; preds = %50
  %65 = insertelement <4 x float> poison, float %51, i64 0
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> zeroinitializer
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i64 [ 0, %64 ], [ %109, %67 ]
  %69 = or disjoint i64 %68, 1
  %70 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %69
  %71 = load <4 x float>, ptr %70, align 4, !tbaa !9, !alias.scope !20
  %72 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %69
  %73 = load <4 x float>, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  %74 = fneg <4 x float> %73
  %75 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float 2.000000e+00), <4 x float> %74)
  %76 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %69
  %77 = load <4 x float>, ptr %76, align 4, !tbaa !9, !alias.scope !20
  %78 = or disjoint i64 %68, 2
  %79 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %78
  %80 = load <4 x float>, ptr %79, align 4, !tbaa !9, !alias.scope !20
  %81 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %77, <4 x float> %80)
  %82 = getelementptr inbounds [4 x i8], ptr %0, i64 %68
  %83 = load <4 x float>, ptr %82, align 4, !tbaa !9, !alias.scope !20
  %84 = fadd <4 x float> %81, %83
  %85 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float -4.000000e+00), <4 x float> %84)
  %86 = fpext <4 x float> %75 to <4 x double>
  %87 = fpext <4 x float> %85 to <4 x double>
  %88 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %87, <4 x double> splat (double 1.000000e-01), <4 x double> %86)
  %89 = fptrunc <4 x double> %88 to <4 x float>
  store <4 x float> %89, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  %90 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %69
  %91 = load <4 x float>, ptr %90, align 4, !tbaa !9, !alias.scope !20
  %92 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %69
  %93 = load <4 x float>, ptr %92, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  %94 = fneg <4 x float> %93
  %95 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> splat (float 2.000000e+00), <4 x float> %94)
  %96 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %69
  %97 = load <4 x float>, ptr %96, align 4, !tbaa !9, !alias.scope !20
  %98 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %78
  %99 = load <4 x float>, ptr %98, align 4, !tbaa !9, !alias.scope !20
  %100 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %97, <4 x float> %99)
  %101 = getelementptr inbounds [4 x i8], ptr %53, i64 %68
  %102 = load <4 x float>, ptr %101, align 4, !tbaa !9, !alias.scope !20
  %103 = fadd <4 x float> %100, %102
  %104 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> splat (float -4.000000e+00), <4 x float> %103)
  %105 = fpext <4 x float> %95 to <4 x double>
  %106 = fpext <4 x float> %104 to <4 x double>
  %107 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %106, <4 x double> splat (double 1.000000e-01), <4 x double> %105)
  %108 = fptrunc <4 x double> %107 to <4 x float>
  store <4 x float> %108, ptr %92, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  %109 = add nuw i64 %68, 4
  %110 = icmp eq i64 %109, 508
  br i1 %110, label %62, label %67, !llvm.loop !25

111:                                              ; preds = %114
  %112 = add nuw nsw i64 %15, 1
  %113 = icmp eq i64 %112, 511
  br i1 %113, label %50, label %14, !llvm.loop !26

114:                                              ; preds = %20, %114
  %115 = phi i64 [ %126, %114 ], [ %21, %20 ]
  %116 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %115
  %117 = load float, ptr %116, align 4, !tbaa !9
  %118 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %115
  %119 = load float, ptr %118, align 4, !tbaa !9
  %120 = fneg float %119
  %121 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %115
  %122 = load float, ptr %121, align 4, !tbaa !9
  %123 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %115
  %124 = load float, ptr %123, align 4, !tbaa !9
  %125 = fadd float %122, %124
  %126 = add nuw nsw i64 %115, 1
  %127 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !9
  %129 = fadd float %125, %128
  %130 = getelementptr i8, ptr %116, i64 -4
  %131 = load float, ptr %130, align 4, !tbaa !9
  %132 = fadd float %129, %131
  %133 = insertelement <2 x float> poison, float %117, i64 0
  %134 = shufflevector <2 x float> %133, <2 x float> poison, <2 x i32> zeroinitializer
  %135 = insertelement <2 x float> poison, float %120, i64 0
  %136 = insertelement <2 x float> %135, float %132, i64 1
  %137 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %134, <2 x float> <float 2.000000e+00, float -4.000000e+00>, <2 x float> %136)
  %138 = extractelement <2 x float> %137, i64 0
  %139 = fpext float %138 to double
  %140 = extractelement <2 x float> %137, i64 1
  %141 = fpext float %140 to double
  %142 = tail call double @llvm.fmuladd.f64(double %141, double 1.000000e-01, double %139)
  %143 = fptrunc double %142 to float
  store float %143, ptr %118, align 4, !tbaa !9
  %144 = icmp eq i64 %126, 511
  br i1 %144, label %111, label %114, !llvm.loop !27

145:                                              ; preds = %62, %145
  %146 = phi i64 [ %155, %145 ], [ %63, %62 ]
  %147 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %146
  %148 = load float, ptr %147, align 4, !tbaa !9
  %149 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %146
  %150 = load float, ptr %149, align 4, !tbaa !9
  %151 = fneg float %150
  %152 = tail call float @llvm.fmuladd.f32(float %148, float 2.000000e+00, float %151)
  %153 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %146
  %154 = load float, ptr %153, align 4, !tbaa !9
  %155 = add nuw nsw i64 %146, 1
  %156 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %155
  %157 = load float, ptr %156, align 4, !tbaa !9
  %158 = tail call float @llvm.fmuladd.f32(float %51, float %154, float %157)
  %159 = add nsw i64 %146, -1
  %160 = getelementptr inbounds [4 x i8], ptr %0, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !9
  %162 = fadd float %158, %161
  %163 = tail call float @llvm.fmuladd.f32(float %148, float -4.000000e+00, float %162)
  %164 = fpext float %152 to double
  %165 = fpext float %163 to double
  %166 = tail call double @llvm.fmuladd.f64(double %165, double 1.000000e-01, double %164)
  %167 = fptrunc double %166 to float
  store float %167, ptr %149, align 4, !tbaa !9
  %168 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %146
  %169 = load float, ptr %168, align 4, !tbaa !9
  %170 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %146
  %171 = load float, ptr %170, align 4, !tbaa !9
  %172 = fneg float %171
  %173 = tail call float @llvm.fmuladd.f32(float %169, float 2.000000e+00, float %172)
  %174 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %146
  %175 = load float, ptr %174, align 4, !tbaa !9
  %176 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %155
  %177 = load float, ptr %176, align 4, !tbaa !9
  %178 = tail call float @llvm.fmuladd.f32(float %51, float %175, float %177)
  %179 = getelementptr inbounds [4 x i8], ptr %53, i64 %159
  %180 = load float, ptr %179, align 4, !tbaa !9
  %181 = fadd float %178, %180
  %182 = tail call float @llvm.fmuladd.f32(float %169, float -4.000000e+00, float %181)
  %183 = fpext float %173 to double
  %184 = fpext float %182 to double
  %185 = tail call double @llvm.fmuladd.f64(double %184, double 1.000000e-01, double %183)
  %186 = fptrunc double %185 to float
  store float %186, ptr %170, align 4, !tbaa !9
  %187 = icmp eq i64 %155, 511
  br i1 %187, label %188, label %145, !llvm.loop !28

188:                                              ; preds = %145
  %189 = getelementptr nuw i8, ptr %1, i64 2048
  %190 = getelementptr i8, ptr %0, i64 1048576
  %191 = icmp ult ptr %189, %190
  %192 = icmp ult ptr %0, %54
  %193 = and i1 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %199, %188
  %195 = phi i64 [ 1, %188 ], [ 509, %199 ]
  br label %428

196:                                              ; preds = %188
  %197 = insertelement <4 x float> poison, float %51, i64 0
  %198 = shufflevector <4 x float> %197, <4 x float> poison, <4 x i32> zeroinitializer
  br label %199

199:                                              ; preds = %199, %196
  %200 = phi i64 [ 0, %196 ], [ %355, %199 ]
  %201 = or disjoint i64 %200, 1
  %202 = or disjoint i64 %200, 2
  %203 = or disjoint i64 %200, 3
  %204 = add i64 %200, 4
  %205 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %201
  %206 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %202
  %207 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %203
  %208 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %204
  %209 = load float, ptr %205, align 4, !tbaa !9, !alias.scope !29
  %210 = load float, ptr %206, align 4, !tbaa !9, !alias.scope !29
  %211 = load float, ptr %207, align 4, !tbaa !9, !alias.scope !29
  %212 = load float, ptr %208, align 4, !tbaa !9, !alias.scope !29
  %213 = insertelement <4 x float> poison, float %209, i64 0
  %214 = insertelement <4 x float> %213, float %210, i64 1
  %215 = insertelement <4 x float> %214, float %211, i64 2
  %216 = insertelement <4 x float> %215, float %212, i64 3
  %217 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %201
  %218 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %202
  %219 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %203
  %220 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %204
  %221 = load float, ptr %217, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %222 = load float, ptr %218, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %223 = load float, ptr %219, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %224 = load float, ptr %220, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %225 = insertelement <4 x float> poison, float %221, i64 0
  %226 = insertelement <4 x float> %225, float %222, i64 1
  %227 = insertelement <4 x float> %226, float %223, i64 2
  %228 = insertelement <4 x float> %227, float %224, i64 3
  %229 = fneg <4 x float> %228
  %230 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %216, <4 x float> splat (float 2.000000e+00), <4 x float> %229)
  %231 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %200
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 4096
  %233 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %200
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 6144
  %235 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %200
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 8192
  %237 = getelementptr [2048 x i8], ptr %0, i64 %200
  %238 = getelementptr i8, ptr %237, i64 10240
  %239 = load float, ptr %232, align 4, !tbaa !9, !alias.scope !29
  %240 = load float, ptr %234, align 4, !tbaa !9, !alias.scope !29
  %241 = load float, ptr %236, align 4, !tbaa !9, !alias.scope !29
  %242 = load float, ptr %238, align 4, !tbaa !9, !alias.scope !29
  %243 = insertelement <4 x float> poison, float %239, i64 0
  %244 = insertelement <4 x float> %243, float %240, i64 1
  %245 = insertelement <4 x float> %244, float %241, i64 2
  %246 = insertelement <4 x float> %245, float %242, i64 3
  %247 = getelementptr i8, ptr %205, i64 -2048
  %248 = getelementptr i8, ptr %206, i64 -2048
  %249 = getelementptr i8, ptr %207, i64 -2048
  %250 = getelementptr i8, ptr %208, i64 -2048
  %251 = load float, ptr %247, align 4, !tbaa !9, !alias.scope !29
  %252 = load float, ptr %248, align 4, !tbaa !9, !alias.scope !29
  %253 = load float, ptr %249, align 4, !tbaa !9, !alias.scope !29
  %254 = load float, ptr %250, align 4, !tbaa !9, !alias.scope !29
  %255 = insertelement <4 x float> poison, float %251, i64 0
  %256 = insertelement <4 x float> %255, float %252, i64 1
  %257 = insertelement <4 x float> %256, float %253, i64 2
  %258 = insertelement <4 x float> %257, float %254, i64 3
  %259 = fadd <4 x float> %246, %258
  %260 = getelementptr inbounds nuw i8, ptr %205, i64 4
  %261 = getelementptr inbounds nuw i8, ptr %206, i64 4
  %262 = getelementptr inbounds nuw i8, ptr %207, i64 4
  %263 = getelementptr inbounds nuw i8, ptr %208, i64 4
  %264 = load float, ptr %260, align 4, !tbaa !9, !alias.scope !29
  %265 = load float, ptr %261, align 4, !tbaa !9, !alias.scope !29
  %266 = load float, ptr %262, align 4, !tbaa !9, !alias.scope !29
  %267 = load float, ptr %263, align 4, !tbaa !9, !alias.scope !29
  %268 = insertelement <4 x float> poison, float %264, i64 0
  %269 = insertelement <4 x float> %268, float %265, i64 1
  %270 = insertelement <4 x float> %269, float %266, i64 2
  %271 = insertelement <4 x float> %270, float %267, i64 3
  %272 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %198, <4 x float> %271, <4 x float> %259)
  %273 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %216, <4 x float> splat (float -4.000000e+00), <4 x float> %272)
  %274 = fpext <4 x float> %230 to <4 x double>
  %275 = fpext <4 x float> %273 to <4 x double>
  %276 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %275, <4 x double> splat (double 1.000000e-01), <4 x double> %274)
  %277 = fptrunc <4 x double> %276 to <4 x float>
  %278 = extractelement <4 x float> %277, i64 0
  store float %278, ptr %217, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %279 = extractelement <4 x float> %277, i64 1
  store float %279, ptr %218, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %280 = getelementptr inbounds nuw i8, ptr %205, i64 2044
  %281 = getelementptr inbounds nuw i8, ptr %206, i64 2044
  %282 = getelementptr inbounds nuw i8, ptr %207, i64 2044
  %283 = getelementptr inbounds nuw i8, ptr %208, i64 2044
  %284 = load float, ptr %280, align 4, !tbaa !9, !alias.scope !29
  %285 = load float, ptr %281, align 4, !tbaa !9, !alias.scope !29
  %286 = load float, ptr %282, align 4, !tbaa !9, !alias.scope !29
  %287 = load float, ptr %283, align 4, !tbaa !9, !alias.scope !29
  %288 = insertelement <4 x float> poison, float %284, i64 0
  %289 = insertelement <4 x float> %288, float %285, i64 1
  %290 = insertelement <4 x float> %289, float %286, i64 2
  %291 = insertelement <4 x float> %290, float %287, i64 3
  %292 = getelementptr inbounds nuw i8, ptr %217, i64 2044
  %293 = getelementptr inbounds nuw i8, ptr %218, i64 2044
  %294 = getelementptr inbounds nuw i8, ptr %219, i64 2044
  %295 = getelementptr inbounds nuw i8, ptr %220, i64 2044
  %296 = load float, ptr %292, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %297 = load float, ptr %293, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %298 = load float, ptr %294, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %299 = load float, ptr %295, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %300 = insertelement <4 x float> poison, float %296, i64 0
  %301 = insertelement <4 x float> %300, float %297, i64 1
  %302 = insertelement <4 x float> %301, float %298, i64 2
  %303 = insertelement <4 x float> %302, float %299, i64 3
  %304 = fneg <4 x float> %303
  %305 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %291, <4 x float> splat (float 2.000000e+00), <4 x float> %304)
  %306 = getelementptr inbounds nuw i8, ptr %231, i64 6140
  %307 = getelementptr inbounds nuw i8, ptr %233, i64 8188
  %308 = getelementptr inbounds nuw i8, ptr %235, i64 10236
  %309 = getelementptr i8, ptr %237, i64 12284
  %310 = load float, ptr %306, align 4, !tbaa !9, !alias.scope !29
  %311 = load float, ptr %307, align 4, !tbaa !9, !alias.scope !29
  %312 = load float, ptr %308, align 4, !tbaa !9, !alias.scope !29
  %313 = load float, ptr %309, align 4, !tbaa !9, !alias.scope !29
  %314 = insertelement <4 x float> poison, float %310, i64 0
  %315 = insertelement <4 x float> %314, float %311, i64 1
  %316 = insertelement <4 x float> %315, float %312, i64 2
  %317 = insertelement <4 x float> %316, float %313, i64 3
  %318 = getelementptr i8, ptr %205, i64 -4
  %319 = getelementptr i8, ptr %206, i64 -4
  %320 = getelementptr i8, ptr %207, i64 -4
  %321 = getelementptr i8, ptr %208, i64 -4
  %322 = load float, ptr %318, align 4, !tbaa !9, !alias.scope !29
  %323 = load float, ptr %319, align 4, !tbaa !9, !alias.scope !29
  %324 = load float, ptr %320, align 4, !tbaa !9, !alias.scope !29
  %325 = load float, ptr %321, align 4, !tbaa !9, !alias.scope !29
  %326 = insertelement <4 x float> poison, float %322, i64 0
  %327 = insertelement <4 x float> %326, float %323, i64 1
  %328 = insertelement <4 x float> %327, float %324, i64 2
  %329 = insertelement <4 x float> %328, float %325, i64 3
  %330 = fadd <4 x float> %317, %329
  %331 = getelementptr inbounds nuw i8, ptr %205, i64 2040
  %332 = getelementptr inbounds nuw i8, ptr %206, i64 2040
  %333 = getelementptr inbounds nuw i8, ptr %207, i64 2040
  %334 = getelementptr inbounds nuw i8, ptr %208, i64 2040
  %335 = load float, ptr %331, align 4, !tbaa !9, !alias.scope !29
  %336 = load float, ptr %332, align 4, !tbaa !9, !alias.scope !29
  %337 = load float, ptr %333, align 4, !tbaa !9, !alias.scope !29
  %338 = load float, ptr %334, align 4, !tbaa !9, !alias.scope !29
  %339 = insertelement <4 x float> poison, float %335, i64 0
  %340 = insertelement <4 x float> %339, float %336, i64 1
  %341 = insertelement <4 x float> %340, float %337, i64 2
  %342 = insertelement <4 x float> %341, float %338, i64 3
  %343 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %198, <4 x float> %342, <4 x float> %330)
  %344 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %291, <4 x float> splat (float -4.000000e+00), <4 x float> %343)
  %345 = fpext <4 x float> %305 to <4 x double>
  %346 = fpext <4 x float> %344 to <4 x double>
  %347 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %346, <4 x double> splat (double 1.000000e-01), <4 x double> %345)
  %348 = fptrunc <4 x double> %347 to <4 x float>
  %349 = extractelement <4 x float> %348, i64 0
  store float %349, ptr %292, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %350 = shufflevector <4 x double> %347, <4 x double> %276, <2 x i32> <i32 1, i32 6>
  %351 = fptrunc <2 x double> %350 to <2 x float>
  store <2 x float> %351, ptr %293, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %352 = shufflevector <4 x double> %347, <4 x double> %276, <2 x i32> <i32 2, i32 7>
  %353 = fptrunc <2 x double> %352 to <2 x float>
  store <2 x float> %353, ptr %294, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %354 = extractelement <4 x float> %348, i64 3
  store float %354, ptr %295, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %355 = add nuw i64 %200, 4
  %356 = icmp eq i64 %355, 508
  br i1 %356, label %194, label %199, !llvm.loop !34

357:                                              ; preds = %428
  %358 = load float, ptr %0, align 4, !tbaa !9
  %359 = load float, ptr %1, align 4, !tbaa !9
  %360 = fneg float %359
  %361 = tail call float @llvm.fmuladd.f32(float %358, float 2.000000e+00, float %360)
  %362 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %363 = load float, ptr %362, align 4, !tbaa !9
  %364 = load float, ptr %52, align 4, !tbaa !9
  %365 = fadd float %363, %364
  %366 = fmul float %358, -4.000000e+00
  %367 = tail call float @llvm.fmuladd.f32(float %51, float %365, float %366)
  %368 = fpext float %361 to double
  %369 = fpext float %367 to double
  %370 = tail call double @llvm.fmuladd.f64(double %369, double 1.000000e-01, double %368)
  %371 = fptrunc double %370 to float
  store float %371, ptr %1, align 4, !tbaa !9
  %372 = load float, ptr %53, align 4, !tbaa !9
  %373 = load float, ptr %54, align 4, !tbaa !9
  %374 = fneg float %373
  %375 = tail call float @llvm.fmuladd.f32(float %372, float 2.000000e+00, float %374)
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  %377 = load float, ptr %376, align 4, !tbaa !9
  %378 = load float, ptr %55, align 4, !tbaa !9
  %379 = fadd float %377, %378
  %380 = fmul float %372, -4.000000e+00
  %381 = tail call float @llvm.fmuladd.f32(float %51, float %379, float %380)
  %382 = fpext float %375 to double
  %383 = fpext float %381 to double
  %384 = tail call double @llvm.fmuladd.f64(double %383, double 1.000000e-01, double %382)
  %385 = fptrunc double %384 to float
  store float %385, ptr %54, align 4, !tbaa !9
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  %387 = load float, ptr %386, align 4, !tbaa !9
  %388 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  %389 = load float, ptr %388, align 4, !tbaa !9
  %390 = fneg float %389
  %391 = tail call float @llvm.fmuladd.f32(float %387, float 2.000000e+00, float %390)
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %393 = load float, ptr %392, align 4, !tbaa !9
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  %395 = load float, ptr %394, align 4, !tbaa !9
  %396 = fadd float %393, %395
  %397 = fmul float %387, -4.000000e+00
  %398 = tail call float @llvm.fmuladd.f32(float %51, float %396, float %397)
  %399 = fpext float %391 to double
  %400 = fpext float %398 to double
  %401 = tail call double @llvm.fmuladd.f64(double %400, double 1.000000e-01, double %399)
  %402 = fptrunc double %401 to float
  store float %402, ptr %388, align 4, !tbaa !9
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  %404 = load float, ptr %403, align 4, !tbaa !9
  %405 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  %406 = load float, ptr %405, align 4, !tbaa !9
  %407 = fneg float %406
  %408 = tail call float @llvm.fmuladd.f32(float %404, float 2.000000e+00, float %407)
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  %410 = load float, ptr %409, align 4, !tbaa !9
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  %412 = load float, ptr %411, align 4, !tbaa !9
  %413 = fadd float %410, %412
  %414 = fmul float %404, -4.000000e+00
  %415 = tail call float @llvm.fmuladd.f32(float %51, float %413, float %414)
  %416 = fpext float %408 to double
  %417 = fpext float %415 to double
  %418 = tail call double @llvm.fmuladd.f64(double %417, double 1.000000e-01, double %416)
  %419 = fptrunc double %418 to float
  store float %419, ptr %405, align 4, !tbaa !9
  %420 = tail call float @simCalcSinus(float noundef %3) #9
  %421 = fmul float %420, 3.000000e+00
  %422 = sext i32 %4 to i64
  %423 = getelementptr inbounds [2048 x i8], ptr %1, i64 %422
  %424 = sext i32 %5 to i64
  %425 = getelementptr inbounds [4 x i8], ptr %423, i64 %424
  %426 = load float, ptr %425, align 4, !tbaa !9
  %427 = fadd float %426, %421
  store float %427, ptr %425, align 4, !tbaa !9
  ret void

428:                                              ; preds = %194, %428
  %429 = phi i64 [ %436, %428 ], [ %195, %194 ]
  %430 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %429
  %431 = load float, ptr %430, align 4, !tbaa !9
  %432 = getelementptr inbounds nuw [2048 x i8], ptr %1, i64 %429
  %433 = load float, ptr %432, align 4, !tbaa !9
  %434 = fneg float %433
  %435 = tail call float @llvm.fmuladd.f32(float %431, float 2.000000e+00, float %434)
  %436 = add nuw nsw i64 %429, 1
  %437 = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %436
  %438 = load float, ptr %437, align 4, !tbaa !9
  %439 = getelementptr i8, ptr %430, i64 -2048
  %440 = load float, ptr %439, align 4, !tbaa !9
  %441 = fadd float %438, %440
  %442 = getelementptr inbounds nuw i8, ptr %430, i64 4
  %443 = load float, ptr %442, align 4, !tbaa !9
  %444 = tail call float @llvm.fmuladd.f32(float %51, float %443, float %441)
  %445 = tail call float @llvm.fmuladd.f32(float %431, float -4.000000e+00, float %444)
  %446 = fpext float %435 to double
  %447 = fpext float %445 to double
  %448 = tail call double @llvm.fmuladd.f64(double %447, double 1.000000e-01, double %446)
  %449 = fptrunc double %448 to float
  store float %449, ptr %432, align 4, !tbaa !9
  %450 = getelementptr inbounds nuw i8, ptr %430, i64 2044
  %451 = load float, ptr %450, align 4, !tbaa !9
  %452 = getelementptr inbounds nuw i8, ptr %432, i64 2044
  %453 = load float, ptr %452, align 4, !tbaa !9
  %454 = fneg float %453
  %455 = tail call float @llvm.fmuladd.f32(float %451, float 2.000000e+00, float %454)
  %456 = getelementptr inbounds nuw i8, ptr %437, i64 2044
  %457 = load float, ptr %456, align 4, !tbaa !9
  %458 = getelementptr i8, ptr %430, i64 -4
  %459 = load float, ptr %458, align 4, !tbaa !9
  %460 = fadd float %457, %459
  %461 = getelementptr inbounds nuw i8, ptr %430, i64 2040
  %462 = load float, ptr %461, align 4, !tbaa !9
  %463 = tail call float @llvm.fmuladd.f32(float %51, float %462, float %460)
  %464 = tail call float @llvm.fmuladd.f32(float %451, float -4.000000e+00, float %463)
  %465 = fpext float %455 to double
  %466 = fpext float %464 to double
  %467 = tail call double @llvm.fmuladd.f64(double %466, double 1.000000e-01, double %465)
  %468 = fptrunc double %467 to float
  store float %468, ptr %452, align 4, !tbaa !9
  %469 = icmp eq i64 %436, 511
  br i1 %469, label %357, label %428, !llvm.loop !35
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare float @simCalcSinus(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
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

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @app() local_unnamed_addr #6 {
  %1 = alloca [2 x [512 x [512 x float]]], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
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
  call void @emulationStep(ptr noundef %9, ptr noundef %8, float noundef %4, float noundef %5, i32 noundef %7, i32 noundef %6)
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
  br i1 %19, label %14, label %10, !llvm.loop !36

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
  br i1 %41, label %17, label %20, !llvm.loop !37

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
  br i1 %71, label %72, label %56, !llvm.loop !38

72:                                               ; preds = %68, %51
  %73 = phi float [ %4, %51 ], [ %69, %68 ]
  %74 = fpext float %5 to double
  %75 = fadd double %74, 5.000000e-02
  %76 = fptrunc double %75 to float
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
