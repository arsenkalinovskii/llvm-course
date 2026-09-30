; ModuleID = 'app.c'
source_filename = "app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @initGrids(ptr noundef writeonly captures(none) initializes((0, 2097152)) %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %0, i8 0, i64 2097152, i1 false), !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @emulationStep(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
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
  %16 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %15
  %17 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %15
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 2048
  %19 = getelementptr i8, ptr %16, i64 -2048
  br i1 %13, label %20, label %22

20:                                               ; preds = %22, %14
  %21 = phi i64 [ 1, %14 ], [ 509, %22 ]
  br label %114

22:                                               ; preds = %14, %22
  %23 = phi i64 [ %48, %22 ], [ 0, %14 ]
  %24 = or disjoint i64 %23, 1
  %25 = getelementptr inbounds nuw float, ptr %16, i64 %24
  %26 = load <4 x float>, ptr %25, align 4, !tbaa !9, !alias.scope !11
  %27 = getelementptr inbounds nuw float, ptr %17, i64 %24
  %28 = load <4 x float>, ptr %27, align 4, !tbaa !9, !alias.scope !14, !noalias !11
  %29 = fneg <4 x float> %28
  %30 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float 2.000000e+00), <4 x float> %29)
  %31 = getelementptr inbounds nuw float, ptr %18, i64 %24
  %32 = load <4 x float>, ptr %31, align 4, !tbaa !9, !alias.scope !11
  %33 = getelementptr inbounds nuw float, ptr %19, i64 %24
  %34 = load <4 x float>, ptr %33, align 4, !tbaa !9, !alias.scope !11
  %35 = fadd <4 x float> %32, %34
  %36 = getelementptr inbounds nuw float, ptr %16, i64 %23
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
  br label %140

64:                                               ; preds = %50
  %65 = insertelement <4 x float> poison, float %51, i64 0
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> zeroinitializer
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i64 [ 0, %64 ], [ %109, %67 ]
  %69 = or disjoint i64 %68, 1
  %70 = getelementptr inbounds nuw float, ptr %0, i64 %69
  %71 = load <4 x float>, ptr %70, align 4, !tbaa !9, !alias.scope !20
  %72 = getelementptr inbounds nuw float, ptr %1, i64 %69
  %73 = load <4 x float>, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  %74 = fneg <4 x float> %73
  %75 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float 2.000000e+00), <4 x float> %74)
  %76 = getelementptr inbounds nuw float, ptr %52, i64 %69
  %77 = load <4 x float>, ptr %76, align 4, !tbaa !9, !alias.scope !20
  %78 = or disjoint i64 %68, 2
  %79 = getelementptr inbounds nuw float, ptr %0, i64 %78
  %80 = load <4 x float>, ptr %79, align 4, !tbaa !9, !alias.scope !20
  %81 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %77, <4 x float> %80)
  %82 = getelementptr inbounds float, ptr %0, i64 %68
  %83 = load <4 x float>, ptr %82, align 4, !tbaa !9, !alias.scope !20
  %84 = fadd <4 x float> %81, %83
  %85 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> splat (float -4.000000e+00), <4 x float> %84)
  %86 = fpext <4 x float> %75 to <4 x double>
  %87 = fpext <4 x float> %85 to <4 x double>
  %88 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %87, <4 x double> splat (double 1.000000e-01), <4 x double> %86)
  %89 = fptrunc <4 x double> %88 to <4 x float>
  store <4 x float> %89, ptr %72, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  %90 = getelementptr inbounds nuw float, ptr %53, i64 %69
  %91 = load <4 x float>, ptr %90, align 4, !tbaa !9, !alias.scope !20
  %92 = getelementptr inbounds nuw float, ptr %54, i64 %69
  %93 = load <4 x float>, ptr %92, align 4, !tbaa !9, !alias.scope !23, !noalias !20
  %94 = fneg <4 x float> %93
  %95 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> splat (float 2.000000e+00), <4 x float> %94)
  %96 = getelementptr inbounds nuw float, ptr %55, i64 %69
  %97 = load <4 x float>, ptr %96, align 4, !tbaa !9, !alias.scope !20
  %98 = getelementptr inbounds nuw float, ptr %53, i64 %78
  %99 = load <4 x float>, ptr %98, align 4, !tbaa !9, !alias.scope !20
  %100 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %97, <4 x float> %99)
  %101 = getelementptr inbounds float, ptr %53, i64 %68
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
  %115 = phi i64 [ %127, %114 ], [ %21, %20 ]
  %116 = getelementptr inbounds nuw float, ptr %16, i64 %115
  %117 = load float, ptr %116, align 4, !tbaa !9
  %118 = getelementptr inbounds nuw float, ptr %17, i64 %115
  %119 = load float, ptr %118, align 4, !tbaa !9
  %120 = fneg float %119
  %121 = tail call float @llvm.fmuladd.f32(float %117, float 2.000000e+00, float %120)
  %122 = getelementptr inbounds nuw float, ptr %18, i64 %115
  %123 = load float, ptr %122, align 4, !tbaa !9
  %124 = getelementptr inbounds nuw float, ptr %19, i64 %115
  %125 = load float, ptr %124, align 4, !tbaa !9
  %126 = fadd float %123, %125
  %127 = add nuw nsw i64 %115, 1
  %128 = getelementptr inbounds nuw float, ptr %16, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !9
  %130 = fadd float %126, %129
  %131 = getelementptr i8, ptr %116, i64 -4
  %132 = load float, ptr %131, align 4, !tbaa !9
  %133 = fadd float %130, %132
  %134 = tail call float @llvm.fmuladd.f32(float %117, float -4.000000e+00, float %133)
  %135 = fpext float %121 to double
  %136 = fpext float %134 to double
  %137 = tail call double @llvm.fmuladd.f64(double %136, double 1.000000e-01, double %135)
  %138 = fptrunc double %137 to float
  store float %138, ptr %118, align 4, !tbaa !9
  %139 = icmp eq i64 %127, 511
  br i1 %139, label %111, label %114, !llvm.loop !27

140:                                              ; preds = %62, %140
  %141 = phi i64 [ %150, %140 ], [ %63, %62 ]
  %142 = getelementptr inbounds nuw float, ptr %0, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !9
  %144 = getelementptr inbounds nuw float, ptr %1, i64 %141
  %145 = load float, ptr %144, align 4, !tbaa !9
  %146 = fneg float %145
  %147 = tail call float @llvm.fmuladd.f32(float %143, float 2.000000e+00, float %146)
  %148 = getelementptr inbounds nuw float, ptr %52, i64 %141
  %149 = load float, ptr %148, align 4, !tbaa !9
  %150 = add nuw nsw i64 %141, 1
  %151 = getelementptr inbounds nuw float, ptr %0, i64 %150
  %152 = load float, ptr %151, align 4, !tbaa !9
  %153 = tail call float @llvm.fmuladd.f32(float %51, float %149, float %152)
  %154 = add nsw i64 %141, -1
  %155 = getelementptr inbounds float, ptr %0, i64 %154
  %156 = load float, ptr %155, align 4, !tbaa !9
  %157 = fadd float %153, %156
  %158 = tail call float @llvm.fmuladd.f32(float %143, float -4.000000e+00, float %157)
  %159 = fpext float %147 to double
  %160 = fpext float %158 to double
  %161 = tail call double @llvm.fmuladd.f64(double %160, double 1.000000e-01, double %159)
  %162 = fptrunc double %161 to float
  store float %162, ptr %144, align 4, !tbaa !9
  %163 = getelementptr inbounds nuw float, ptr %53, i64 %141
  %164 = load float, ptr %163, align 4, !tbaa !9
  %165 = getelementptr inbounds nuw float, ptr %54, i64 %141
  %166 = load float, ptr %165, align 4, !tbaa !9
  %167 = fneg float %166
  %168 = tail call float @llvm.fmuladd.f32(float %164, float 2.000000e+00, float %167)
  %169 = getelementptr inbounds nuw float, ptr %55, i64 %141
  %170 = load float, ptr %169, align 4, !tbaa !9
  %171 = getelementptr inbounds nuw float, ptr %53, i64 %150
  %172 = load float, ptr %171, align 4, !tbaa !9
  %173 = tail call float @llvm.fmuladd.f32(float %51, float %170, float %172)
  %174 = getelementptr inbounds float, ptr %53, i64 %154
  %175 = load float, ptr %174, align 4, !tbaa !9
  %176 = fadd float %173, %175
  %177 = tail call float @llvm.fmuladd.f32(float %164, float -4.000000e+00, float %176)
  %178 = fpext float %168 to double
  %179 = fpext float %177 to double
  %180 = tail call double @llvm.fmuladd.f64(double %179, double 1.000000e-01, double %178)
  %181 = fptrunc double %180 to float
  store float %181, ptr %165, align 4, !tbaa !9
  %182 = icmp eq i64 %150, 511
  br i1 %182, label %183, label %140, !llvm.loop !28

183:                                              ; preds = %140
  %184 = getelementptr nuw i8, ptr %1, i64 2048
  %185 = getelementptr i8, ptr %0, i64 1048576
  %186 = icmp ult ptr %184, %185
  %187 = icmp ult ptr %0, %54
  %188 = and i1 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %194, %183
  %190 = phi i64 [ 1, %183 ], [ 509, %194 ]
  br label %425

191:                                              ; preds = %183
  %192 = insertelement <4 x float> poison, float %51, i64 0
  %193 = shufflevector <4 x float> %192, <4 x float> poison, <4 x i32> zeroinitializer
  br label %194

194:                                              ; preds = %194, %191
  %195 = phi i64 [ 0, %191 ], [ %350, %194 ]
  %196 = or disjoint i64 %195, 1
  %197 = or disjoint i64 %195, 2
  %198 = or disjoint i64 %195, 3
  %199 = add i64 %195, 4
  %200 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %196
  %201 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %197
  %202 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %198
  %203 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %199
  %204 = load float, ptr %200, align 4, !tbaa !9, !alias.scope !29
  %205 = load float, ptr %201, align 4, !tbaa !9, !alias.scope !29
  %206 = load float, ptr %202, align 4, !tbaa !9, !alias.scope !29
  %207 = load float, ptr %203, align 4, !tbaa !9, !alias.scope !29
  %208 = insertelement <4 x float> poison, float %204, i64 0
  %209 = insertelement <4 x float> %208, float %205, i64 1
  %210 = insertelement <4 x float> %209, float %206, i64 2
  %211 = insertelement <4 x float> %210, float %207, i64 3
  %212 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %196
  %213 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %197
  %214 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %198
  %215 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %199
  %216 = load float, ptr %212, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %217 = load float, ptr %213, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %218 = load float, ptr %214, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %219 = load float, ptr %215, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %220 = insertelement <4 x float> poison, float %216, i64 0
  %221 = insertelement <4 x float> %220, float %217, i64 1
  %222 = insertelement <4 x float> %221, float %218, i64 2
  %223 = insertelement <4 x float> %222, float %219, i64 3
  %224 = fneg <4 x float> %223
  %225 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %211, <4 x float> splat (float 2.000000e+00), <4 x float> %224)
  %226 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %195
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 4096
  %228 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %195
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 6144
  %230 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %195
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 8192
  %232 = getelementptr [512 x float], ptr %0, i64 %195
  %233 = getelementptr i8, ptr %232, i64 10240
  %234 = load float, ptr %227, align 4, !tbaa !9, !alias.scope !29
  %235 = load float, ptr %229, align 4, !tbaa !9, !alias.scope !29
  %236 = load float, ptr %231, align 4, !tbaa !9, !alias.scope !29
  %237 = load float, ptr %233, align 4, !tbaa !9, !alias.scope !29
  %238 = insertelement <4 x float> poison, float %234, i64 0
  %239 = insertelement <4 x float> %238, float %235, i64 1
  %240 = insertelement <4 x float> %239, float %236, i64 2
  %241 = insertelement <4 x float> %240, float %237, i64 3
  %242 = getelementptr i8, ptr %200, i64 -2048
  %243 = getelementptr i8, ptr %201, i64 -2048
  %244 = getelementptr i8, ptr %202, i64 -2048
  %245 = getelementptr i8, ptr %203, i64 -2048
  %246 = load float, ptr %242, align 4, !tbaa !9, !alias.scope !29
  %247 = load float, ptr %243, align 4, !tbaa !9, !alias.scope !29
  %248 = load float, ptr %244, align 4, !tbaa !9, !alias.scope !29
  %249 = load float, ptr %245, align 4, !tbaa !9, !alias.scope !29
  %250 = insertelement <4 x float> poison, float %246, i64 0
  %251 = insertelement <4 x float> %250, float %247, i64 1
  %252 = insertelement <4 x float> %251, float %248, i64 2
  %253 = insertelement <4 x float> %252, float %249, i64 3
  %254 = fadd <4 x float> %241, %253
  %255 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %256 = getelementptr inbounds nuw i8, ptr %201, i64 4
  %257 = getelementptr inbounds nuw i8, ptr %202, i64 4
  %258 = getelementptr inbounds nuw i8, ptr %203, i64 4
  %259 = load float, ptr %255, align 4, !tbaa !9, !alias.scope !29
  %260 = load float, ptr %256, align 4, !tbaa !9, !alias.scope !29
  %261 = load float, ptr %257, align 4, !tbaa !9, !alias.scope !29
  %262 = load float, ptr %258, align 4, !tbaa !9, !alias.scope !29
  %263 = insertelement <4 x float> poison, float %259, i64 0
  %264 = insertelement <4 x float> %263, float %260, i64 1
  %265 = insertelement <4 x float> %264, float %261, i64 2
  %266 = insertelement <4 x float> %265, float %262, i64 3
  %267 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %193, <4 x float> %266, <4 x float> %254)
  %268 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %211, <4 x float> splat (float -4.000000e+00), <4 x float> %267)
  %269 = fpext <4 x float> %225 to <4 x double>
  %270 = fpext <4 x float> %268 to <4 x double>
  %271 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %270, <4 x double> splat (double 1.000000e-01), <4 x double> %269)
  %272 = fptrunc <4 x double> %271 to <4 x float>
  %273 = extractelement <4 x float> %272, i64 0
  %274 = extractelement <4 x float> %272, i64 1
  store float %273, ptr %212, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  store float %274, ptr %213, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %275 = getelementptr inbounds nuw i8, ptr %200, i64 2044
  %276 = getelementptr inbounds nuw i8, ptr %201, i64 2044
  %277 = getelementptr inbounds nuw i8, ptr %202, i64 2044
  %278 = getelementptr inbounds nuw i8, ptr %203, i64 2044
  %279 = load float, ptr %275, align 4, !tbaa !9, !alias.scope !29
  %280 = load float, ptr %276, align 4, !tbaa !9, !alias.scope !29
  %281 = load float, ptr %277, align 4, !tbaa !9, !alias.scope !29
  %282 = load float, ptr %278, align 4, !tbaa !9, !alias.scope !29
  %283 = insertelement <4 x float> poison, float %279, i64 0
  %284 = insertelement <4 x float> %283, float %280, i64 1
  %285 = insertelement <4 x float> %284, float %281, i64 2
  %286 = insertelement <4 x float> %285, float %282, i64 3
  %287 = getelementptr inbounds nuw i8, ptr %212, i64 2044
  %288 = getelementptr inbounds nuw i8, ptr %213, i64 2044
  %289 = getelementptr inbounds nuw i8, ptr %214, i64 2044
  %290 = getelementptr inbounds nuw i8, ptr %215, i64 2044
  %291 = load float, ptr %287, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %292 = load float, ptr %288, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %293 = load float, ptr %289, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %294 = load float, ptr %290, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %295 = insertelement <4 x float> poison, float %291, i64 0
  %296 = insertelement <4 x float> %295, float %292, i64 1
  %297 = insertelement <4 x float> %296, float %293, i64 2
  %298 = insertelement <4 x float> %297, float %294, i64 3
  %299 = fneg <4 x float> %298
  %300 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %286, <4 x float> splat (float 2.000000e+00), <4 x float> %299)
  %301 = getelementptr inbounds nuw i8, ptr %226, i64 6140
  %302 = getelementptr inbounds nuw i8, ptr %228, i64 8188
  %303 = getelementptr inbounds nuw i8, ptr %230, i64 10236
  %304 = getelementptr i8, ptr %232, i64 12284
  %305 = load float, ptr %301, align 4, !tbaa !9, !alias.scope !29
  %306 = load float, ptr %302, align 4, !tbaa !9, !alias.scope !29
  %307 = load float, ptr %303, align 4, !tbaa !9, !alias.scope !29
  %308 = load float, ptr %304, align 4, !tbaa !9, !alias.scope !29
  %309 = insertelement <4 x float> poison, float %305, i64 0
  %310 = insertelement <4 x float> %309, float %306, i64 1
  %311 = insertelement <4 x float> %310, float %307, i64 2
  %312 = insertelement <4 x float> %311, float %308, i64 3
  %313 = getelementptr i8, ptr %200, i64 -4
  %314 = getelementptr i8, ptr %201, i64 -4
  %315 = getelementptr i8, ptr %202, i64 -4
  %316 = getelementptr i8, ptr %203, i64 -4
  %317 = load float, ptr %313, align 4, !tbaa !9, !alias.scope !29
  %318 = load float, ptr %314, align 4, !tbaa !9, !alias.scope !29
  %319 = load float, ptr %315, align 4, !tbaa !9, !alias.scope !29
  %320 = load float, ptr %316, align 4, !tbaa !9, !alias.scope !29
  %321 = insertelement <4 x float> poison, float %317, i64 0
  %322 = insertelement <4 x float> %321, float %318, i64 1
  %323 = insertelement <4 x float> %322, float %319, i64 2
  %324 = insertelement <4 x float> %323, float %320, i64 3
  %325 = fadd <4 x float> %312, %324
  %326 = getelementptr inbounds nuw i8, ptr %200, i64 2040
  %327 = getelementptr inbounds nuw i8, ptr %201, i64 2040
  %328 = getelementptr inbounds nuw i8, ptr %202, i64 2040
  %329 = getelementptr inbounds nuw i8, ptr %203, i64 2040
  %330 = load float, ptr %326, align 4, !tbaa !9, !alias.scope !29
  %331 = load float, ptr %327, align 4, !tbaa !9, !alias.scope !29
  %332 = load float, ptr %328, align 4, !tbaa !9, !alias.scope !29
  %333 = load float, ptr %329, align 4, !tbaa !9, !alias.scope !29
  %334 = insertelement <4 x float> poison, float %330, i64 0
  %335 = insertelement <4 x float> %334, float %331, i64 1
  %336 = insertelement <4 x float> %335, float %332, i64 2
  %337 = insertelement <4 x float> %336, float %333, i64 3
  %338 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %193, <4 x float> %337, <4 x float> %325)
  %339 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %286, <4 x float> splat (float -4.000000e+00), <4 x float> %338)
  %340 = fpext <4 x float> %300 to <4 x double>
  %341 = fpext <4 x float> %339 to <4 x double>
  %342 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %341, <4 x double> splat (double 1.000000e-01), <4 x double> %340)
  %343 = fptrunc <4 x double> %342 to <4 x float>
  %344 = extractelement <4 x float> %343, i64 0
  %345 = extractelement <4 x float> %343, i64 3
  store float %344, ptr %287, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %346 = shufflevector <4 x double> %342, <4 x double> %271, <2 x i32> <i32 1, i32 6>
  %347 = fptrunc <2 x double> %346 to <2 x float>
  store <2 x float> %347, ptr %288, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %348 = shufflevector <4 x double> %342, <4 x double> %271, <2 x i32> <i32 2, i32 7>
  %349 = fptrunc <2 x double> %348 to <2 x float>
  store <2 x float> %349, ptr %289, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  store float %345, ptr %290, align 4, !tbaa !9, !alias.scope !32, !noalias !29
  %350 = add nuw i64 %195, 4
  %351 = icmp eq i64 %350, 508
  br i1 %351, label %189, label %194, !llvm.loop !34

352:                                              ; preds = %425
  %353 = load float, ptr %0, align 4, !tbaa !9
  %354 = load float, ptr %1, align 4, !tbaa !9
  %355 = fneg float %354
  %356 = tail call float @llvm.fmuladd.f32(float %353, float 2.000000e+00, float %355)
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %358 = load float, ptr %357, align 4, !tbaa !9
  %359 = load float, ptr %52, align 4, !tbaa !9
  %360 = fadd float %358, %359
  %361 = fmul float %353, -4.000000e+00
  %362 = tail call float @llvm.fmuladd.f32(float %51, float %360, float %361)
  %363 = fpext float %356 to double
  %364 = fpext float %362 to double
  %365 = tail call double @llvm.fmuladd.f64(double %364, double 1.000000e-01, double %363)
  %366 = fptrunc double %365 to float
  store float %366, ptr %1, align 4, !tbaa !9
  %367 = load float, ptr %53, align 4, !tbaa !9
  %368 = load float, ptr %54, align 4, !tbaa !9
  %369 = fneg float %368
  %370 = tail call float @llvm.fmuladd.f32(float %367, float 2.000000e+00, float %369)
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 1046532
  %372 = load float, ptr %371, align 4, !tbaa !9
  %373 = load float, ptr %55, align 4, !tbaa !9
  %374 = fadd float %372, %373
  %375 = fmul float %367, -4.000000e+00
  %376 = tail call float @llvm.fmuladd.f32(float %51, float %374, float %375)
  %377 = fpext float %370 to double
  %378 = fpext float %376 to double
  %379 = tail call double @llvm.fmuladd.f64(double %378, double 1.000000e-01, double %377)
  %380 = fptrunc double %379 to float
  store float %380, ptr %54, align 4, !tbaa !9
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 2044
  %382 = load float, ptr %381, align 4, !tbaa !9
  %383 = getelementptr inbounds nuw i8, ptr %1, i64 2044
  %384 = load float, ptr %383, align 4, !tbaa !9
  %385 = fneg float %384
  %386 = tail call float @llvm.fmuladd.f32(float %382, float 2.000000e+00, float %385)
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %388 = load float, ptr %387, align 4, !tbaa !9
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 4092
  %390 = load float, ptr %389, align 4, !tbaa !9
  %391 = fadd float %388, %390
  %392 = fmul float %382, -4.000000e+00
  %393 = tail call float @llvm.fmuladd.f32(float %51, float %391, float %392)
  %394 = fpext float %386 to double
  %395 = fpext float %393 to double
  %396 = tail call double @llvm.fmuladd.f64(double %395, double 1.000000e-01, double %394)
  %397 = fptrunc double %396 to float
  store float %397, ptr %383, align 4, !tbaa !9
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 1048572
  %399 = load float, ptr %398, align 4, !tbaa !9
  %400 = getelementptr inbounds nuw i8, ptr %1, i64 1048572
  %401 = load float, ptr %400, align 4, !tbaa !9
  %402 = fneg float %401
  %403 = tail call float @llvm.fmuladd.f32(float %399, float 2.000000e+00, float %402)
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 1048568
  %405 = load float, ptr %404, align 4, !tbaa !9
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 1046524
  %407 = load float, ptr %406, align 4, !tbaa !9
  %408 = fadd float %405, %407
  %409 = fmul float %399, -4.000000e+00
  %410 = tail call float @llvm.fmuladd.f32(float %51, float %408, float %409)
  %411 = fpext float %403 to double
  %412 = fpext float %410 to double
  %413 = tail call double @llvm.fmuladd.f64(double %412, double 1.000000e-01, double %411)
  %414 = fptrunc double %413 to float
  store float %414, ptr %400, align 4, !tbaa !9
  %415 = fpext float %3 to double
  %416 = tail call double @sin(double noundef %415) #10, !tbaa !5
  %417 = fmul double %416, 3.000000e+00
  %418 = fptrunc double %417 to float
  %419 = sext i32 %4 to i64
  %420 = getelementptr inbounds [512 x float], ptr %1, i64 %419
  %421 = sext i32 %5 to i64
  %422 = getelementptr inbounds float, ptr %420, i64 %421
  %423 = load float, ptr %422, align 4, !tbaa !9
  %424 = fadd float %423, %418
  store float %424, ptr %422, align 4, !tbaa !9
  ret void

425:                                              ; preds = %189, %425
  %426 = phi i64 [ %433, %425 ], [ %190, %189 ]
  %427 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %426
  %428 = load float, ptr %427, align 4, !tbaa !9
  %429 = getelementptr inbounds nuw [512 x float], ptr %1, i64 %426
  %430 = load float, ptr %429, align 4, !tbaa !9
  %431 = fneg float %430
  %432 = tail call float @llvm.fmuladd.f32(float %428, float 2.000000e+00, float %431)
  %433 = add nuw nsw i64 %426, 1
  %434 = getelementptr inbounds nuw [512 x float], ptr %0, i64 %433
  %435 = load float, ptr %434, align 4, !tbaa !9
  %436 = getelementptr i8, ptr %427, i64 -2048
  %437 = load float, ptr %436, align 4, !tbaa !9
  %438 = fadd float %435, %437
  %439 = getelementptr inbounds nuw i8, ptr %427, i64 4
  %440 = load float, ptr %439, align 4, !tbaa !9
  %441 = tail call float @llvm.fmuladd.f32(float %51, float %440, float %438)
  %442 = tail call float @llvm.fmuladd.f32(float %428, float -4.000000e+00, float %441)
  %443 = fpext float %432 to double
  %444 = fpext float %442 to double
  %445 = tail call double @llvm.fmuladd.f64(double %444, double 1.000000e-01, double %443)
  %446 = fptrunc double %445 to float
  store float %446, ptr %429, align 4, !tbaa !9
  %447 = getelementptr inbounds nuw i8, ptr %427, i64 2044
  %448 = load float, ptr %447, align 4, !tbaa !9
  %449 = getelementptr inbounds nuw i8, ptr %429, i64 2044
  %450 = load float, ptr %449, align 4, !tbaa !9
  %451 = fneg float %450
  %452 = tail call float @llvm.fmuladd.f32(float %448, float 2.000000e+00, float %451)
  %453 = getelementptr inbounds nuw i8, ptr %434, i64 2044
  %454 = load float, ptr %453, align 4, !tbaa !9
  %455 = getelementptr i8, ptr %427, i64 -4
  %456 = load float, ptr %455, align 4, !tbaa !9
  %457 = fadd float %454, %456
  %458 = getelementptr inbounds nuw i8, ptr %427, i64 2040
  %459 = load float, ptr %458, align 4, !tbaa !9
  %460 = tail call float @llvm.fmuladd.f32(float %51, float %459, float %457)
  %461 = tail call float @llvm.fmuladd.f32(float %448, float -4.000000e+00, float %460)
  %462 = fpext float %452 to double
  %463 = fpext float %461 to double
  %464 = tail call double @llvm.fmuladd.f64(double %463, double 1.000000e-01, double %462)
  %465 = fptrunc double %464 to float
  store float %465, ptr %449, align 4, !tbaa !9
  %466 = icmp eq i64 %433, 511
  br i1 %466, label %352, label %425, !llvm.loop !35
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

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
  call void @emulationStep(ptr noundef %9, ptr noundef %8, float noundef %4, float noundef %5, i32 noundef %7, i32 noundef %6)
  br label %10

10:                                               ; preds = %3, %17
  %11 = phi i64 [ 0, %3 ], [ %18, %17 ]
  %12 = getelementptr inbounds nuw [512 x float], ptr %9, i64 %11
  %13 = trunc nuw nsw i64 %11 to i32
  br label %20

14:                                               ; preds = %17
  tail call void (...) @simFlush() #10
  %15 = tail call i32 (...) @simHasClick() #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %51, label %42

17:                                               ; preds = %28
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, 512
  br i1 %19, label %14, label %10, !llvm.loop !36

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
  tail call void @simPutPixel(i32 noundef %13, i32 noundef %39, i32 noundef %38) #10
  %40 = add nuw nsw i64 %21, 1
  %41 = icmp eq i64 %40, 512
  br i1 %41, label %17, label %20, !llvm.loop !37

42:                                               ; preds = %14
  %43 = tail call i32 (...) @simGetClick() #10
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
  %54 = tail call i32 (...) @simHasScroll() #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51, %68
  %57 = phi float [ %69, %68 ], [ %4, %51 ]
  %58 = tail call i32 (...) @simGetScroll() #10
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
  %70 = tail call i32 (...) @simHasScroll() #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %56, !llvm.loop !38

72:                                               ; preds = %68, %51
  %73 = phi float [ %4, %51 ], [ %69, %68 ]
  %74 = fpext float %5 to double
  %75 = fadd double %74, 5.000000e-02
  %76 = fptrunc double %75 to float
  br label %3
}

declare void @simPutPixel(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @simFlush(...) local_unnamed_addr #7

declare i32 @simHasClick(...) local_unnamed_addr #7

declare i32 @simGetClick(...) local_unnamed_addr #7

declare i32 @simHasScroll(...) local_unnamed_addr #7

declare i32 @simGetScroll(...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
