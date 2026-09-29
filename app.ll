; ModuleID = 'app.c'
source_filename = "app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"reflection coefficient %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @initGrids(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, ptr %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %39

9:                                                ; preds = %6
  store i32 0, ptr %4, align 4
  br label %10

10:                                               ; preds = %32, %9
  %11 = load i32, ptr %4, align 4
  %12 = icmp slt i32 %11, 512
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  store i32 0, ptr %5, align 4
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i32, ptr %5, align 4
  %16 = icmp slt i32 %15, 512
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8
  %19 = load i32, ptr %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [512 x [512 x float]], ptr %18, i64 %20
  %22 = load i32, ptr %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x [512 x float]], ptr %21, i64 0, i64 %23
  %25 = load i32, ptr %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x float], ptr %24, i64 0, i64 %26
  store float 0.000000e+00, ptr %27, align 4
  br label %28

28:                                               ; preds = %17
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %5, align 4
  br label %14, !llvm.loop !6

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, ptr %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %4, align 4
  br label %10, !llvm.loop !8

35:                                               ; preds = %10
  br label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %3, align 4
  br label %6, !llvm.loop !9

39:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @emulationStep(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store float %2, ptr %9, align 4
  store float %3, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  store i32 %5, ptr %12, align 4
  %38 = load ptr, ptr %8, align 8
  store ptr %38, ptr %13, align 8
  store i32 1, ptr %14, align 4
  br label %39

39:                                               ; preds = %130, %6
  %40 = load i32, ptr %14, align 4
  %41 = icmp slt i32 %40, 511
  br i1 %41, label %42, label %133

42:                                               ; preds = %39
  store i32 1, ptr %15, align 4
  br label %43

43:                                               ; preds = %126, %42
  %44 = load i32, ptr %15, align 4
  %45 = icmp slt i32 %44, 511
  br i1 %45, label %46, label %129

46:                                               ; preds = %43
  %47 = load ptr, ptr %7, align 8
  %48 = load i32, ptr %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x [512 x float]], ptr %47, i64 0, i64 %49
  %51 = load i32, ptr %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x float], ptr %50, i64 0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = load ptr, ptr %8, align 8
  %56 = load i32, ptr %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [512 x [512 x float]], ptr %55, i64 0, i64 %57
  %59 = load i32, ptr %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [512 x float], ptr %58, i64 0, i64 %60
  %62 = load float, ptr %61, align 4
  %63 = fneg float %62
  %64 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %54, float %63)
  store float %64, ptr %16, align 4
  %65 = load ptr, ptr %7, align 8
  %66 = load i32, ptr %14, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [512 x [512 x float]], ptr %65, i64 0, i64 %68
  %70 = load i32, ptr %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [512 x float], ptr %69, i64 0, i64 %71
  %73 = load float, ptr %72, align 4
  %74 = load ptr, ptr %7, align 8
  %75 = load i32, ptr %14, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [512 x [512 x float]], ptr %74, i64 0, i64 %77
  %79 = load i32, ptr %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [512 x float], ptr %78, i64 0, i64 %80
  %82 = load float, ptr %81, align 4
  %83 = fadd float %73, %82
  %84 = load ptr, ptr %7, align 8
  %85 = load i32, ptr %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [512 x [512 x float]], ptr %84, i64 0, i64 %86
  %88 = load i32, ptr %15, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [512 x float], ptr %87, i64 0, i64 %90
  %92 = load float, ptr %91, align 4
  %93 = fadd float %83, %92
  %94 = load ptr, ptr %7, align 8
  %95 = load i32, ptr %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [512 x [512 x float]], ptr %94, i64 0, i64 %96
  %98 = load i32, ptr %15, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [512 x float], ptr %97, i64 0, i64 %100
  %102 = load float, ptr %101, align 4
  %103 = fadd float %93, %102
  %104 = load ptr, ptr %7, align 8
  %105 = load i32, ptr %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [512 x [512 x float]], ptr %104, i64 0, i64 %106
  %108 = load i32, ptr %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [512 x float], ptr %107, i64 0, i64 %109
  %111 = load float, ptr %110, align 4
  %112 = call float @llvm.fmuladd.f32(float -4.000000e+00, float %111, float %103)
  store float %112, ptr %17, align 4
  %113 = load float, ptr %16, align 4
  %114 = fpext float %113 to double
  %115 = load float, ptr %17, align 4
  %116 = fpext float %115 to double
  %117 = call double @llvm.fmuladd.f64(double 1.000000e-01, double %116, double %114)
  %118 = fptrunc double %117 to float
  %119 = load ptr, ptr %13, align 8
  %120 = load i32, ptr %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [512 x [512 x float]], ptr %119, i64 0, i64 %121
  %123 = load i32, ptr %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [512 x float], ptr %122, i64 0, i64 %124
  store float %118, ptr %125, align 4
  br label %126

126:                                              ; preds = %46
  %127 = load i32, ptr %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %15, align 4
  br label %43, !llvm.loop !10

129:                                              ; preds = %43
  br label %130

130:                                              ; preds = %129
  %131 = load i32, ptr %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr %14, align 4
  br label %39, !llvm.loop !11

133:                                              ; preds = %39
  %134 = load float, ptr %9, align 4
  %135 = fpext float %134 to double
  %136 = fadd double 1.000000e+00, %135
  %137 = fptrunc double %136 to float
  store float %137, ptr %18, align 4
  store i32 1, ptr %19, align 4
  br label %138

138:                                              ; preds = %252, %133
  %139 = load i32, ptr %19, align 4
  %140 = icmp slt i32 %139, 511
  br i1 %140, label %141, label %255

141:                                              ; preds = %138
  %142 = load ptr, ptr %7, align 8
  %143 = getelementptr inbounds [512 x [512 x float]], ptr %142, i64 0, i64 0
  %144 = load i32, ptr %19, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [512 x float], ptr %143, i64 0, i64 %145
  %147 = load float, ptr %146, align 4
  %148 = load ptr, ptr %8, align 8
  %149 = getelementptr inbounds [512 x [512 x float]], ptr %148, i64 0, i64 0
  %150 = load i32, ptr %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [512 x float], ptr %149, i64 0, i64 %151
  %153 = load float, ptr %152, align 4
  %154 = fneg float %153
  %155 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %147, float %154)
  store float %155, ptr %20, align 4
  %156 = load float, ptr %18, align 4
  %157 = load ptr, ptr %7, align 8
  %158 = getelementptr inbounds [512 x [512 x float]], ptr %157, i64 0, i64 1
  %159 = load i32, ptr %19, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [512 x float], ptr %158, i64 0, i64 %160
  %162 = load float, ptr %161, align 4
  %163 = load ptr, ptr %7, align 8
  %164 = getelementptr inbounds [512 x [512 x float]], ptr %163, i64 0, i64 0
  %165 = load i32, ptr %19, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [512 x float], ptr %164, i64 0, i64 %167
  %169 = load float, ptr %168, align 4
  %170 = call float @llvm.fmuladd.f32(float %156, float %162, float %169)
  %171 = load ptr, ptr %7, align 8
  %172 = getelementptr inbounds [512 x [512 x float]], ptr %171, i64 0, i64 0
  %173 = load i32, ptr %19, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [512 x float], ptr %172, i64 0, i64 %175
  %177 = load float, ptr %176, align 4
  %178 = fadd float %170, %177
  %179 = load ptr, ptr %7, align 8
  %180 = getelementptr inbounds [512 x [512 x float]], ptr %179, i64 0, i64 0
  %181 = load i32, ptr %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [512 x float], ptr %180, i64 0, i64 %182
  %184 = load float, ptr %183, align 4
  %185 = call float @llvm.fmuladd.f32(float -4.000000e+00, float %184, float %178)
  store float %185, ptr %21, align 4
  %186 = load float, ptr %20, align 4
  %187 = fpext float %186 to double
  %188 = load float, ptr %21, align 4
  %189 = fpext float %188 to double
  %190 = call double @llvm.fmuladd.f64(double 1.000000e-01, double %189, double %187)
  %191 = fptrunc double %190 to float
  %192 = load ptr, ptr %13, align 8
  %193 = getelementptr inbounds [512 x [512 x float]], ptr %192, i64 0, i64 0
  %194 = load i32, ptr %19, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [512 x float], ptr %193, i64 0, i64 %195
  store float %191, ptr %196, align 4
  %197 = load ptr, ptr %7, align 8
  %198 = getelementptr inbounds [512 x [512 x float]], ptr %197, i64 0, i64 511
  %199 = load i32, ptr %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [512 x float], ptr %198, i64 0, i64 %200
  %202 = load float, ptr %201, align 4
  %203 = load ptr, ptr %8, align 8
  %204 = getelementptr inbounds [512 x [512 x float]], ptr %203, i64 0, i64 511
  %205 = load i32, ptr %19, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [512 x float], ptr %204, i64 0, i64 %206
  %208 = load float, ptr %207, align 4
  %209 = fneg float %208
  %210 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %202, float %209)
  store float %210, ptr %22, align 4
  %211 = load float, ptr %18, align 4
  %212 = load ptr, ptr %7, align 8
  %213 = getelementptr inbounds [512 x [512 x float]], ptr %212, i64 0, i64 510
  %214 = load i32, ptr %19, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [512 x float], ptr %213, i64 0, i64 %215
  %217 = load float, ptr %216, align 4
  %218 = load ptr, ptr %7, align 8
  %219 = getelementptr inbounds [512 x [512 x float]], ptr %218, i64 0, i64 511
  %220 = load i32, ptr %19, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [512 x float], ptr %219, i64 0, i64 %222
  %224 = load float, ptr %223, align 4
  %225 = call float @llvm.fmuladd.f32(float %211, float %217, float %224)
  %226 = load ptr, ptr %7, align 8
  %227 = getelementptr inbounds [512 x [512 x float]], ptr %226, i64 0, i64 511
  %228 = load i32, ptr %19, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [512 x float], ptr %227, i64 0, i64 %230
  %232 = load float, ptr %231, align 4
  %233 = fadd float %225, %232
  %234 = load ptr, ptr %7, align 8
  %235 = getelementptr inbounds [512 x [512 x float]], ptr %234, i64 0, i64 511
  %236 = load i32, ptr %19, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [512 x float], ptr %235, i64 0, i64 %237
  %239 = load float, ptr %238, align 4
  %240 = call float @llvm.fmuladd.f32(float -4.000000e+00, float %239, float %233)
  store float %240, ptr %23, align 4
  %241 = load float, ptr %22, align 4
  %242 = fpext float %241 to double
  %243 = load float, ptr %23, align 4
  %244 = fpext float %243 to double
  %245 = call double @llvm.fmuladd.f64(double 1.000000e-01, double %244, double %242)
  %246 = fptrunc double %245 to float
  %247 = load ptr, ptr %13, align 8
  %248 = getelementptr inbounds [512 x [512 x float]], ptr %247, i64 0, i64 511
  %249 = load i32, ptr %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [512 x float], ptr %248, i64 0, i64 %250
  store float %246, ptr %251, align 4
  br label %252

252:                                              ; preds = %141
  %253 = load i32, ptr %19, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, ptr %19, align 4
  br label %138, !llvm.loop !12

255:                                              ; preds = %138
  store i32 1, ptr %24, align 4
  br label %256

256:                                              ; preds = %370, %255
  %257 = load i32, ptr %24, align 4
  %258 = icmp slt i32 %257, 511
  br i1 %258, label %259, label %373

259:                                              ; preds = %256
  %260 = load ptr, ptr %7, align 8
  %261 = load i32, ptr %24, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [512 x [512 x float]], ptr %260, i64 0, i64 %262
  %264 = getelementptr inbounds [512 x float], ptr %263, i64 0, i64 0
  %265 = load float, ptr %264, align 4
  %266 = load ptr, ptr %8, align 8
  %267 = load i32, ptr %24, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [512 x [512 x float]], ptr %266, i64 0, i64 %268
  %270 = getelementptr inbounds [512 x float], ptr %269, i64 0, i64 0
  %271 = load float, ptr %270, align 4
  %272 = fneg float %271
  %273 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %265, float %272)
  store float %273, ptr %25, align 4
  %274 = load ptr, ptr %7, align 8
  %275 = load i32, ptr %24, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [512 x [512 x float]], ptr %274, i64 0, i64 %277
  %279 = getelementptr inbounds [512 x float], ptr %278, i64 0, i64 0
  %280 = load float, ptr %279, align 4
  %281 = load ptr, ptr %7, align 8
  %282 = load i32, ptr %24, align 4
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [512 x [512 x float]], ptr %281, i64 0, i64 %284
  %286 = getelementptr inbounds [512 x float], ptr %285, i64 0, i64 0
  %287 = load float, ptr %286, align 4
  %288 = fadd float %280, %287
  %289 = load float, ptr %18, align 4
  %290 = load ptr, ptr %7, align 8
  %291 = load i32, ptr %24, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [512 x [512 x float]], ptr %290, i64 0, i64 %292
  %294 = getelementptr inbounds [512 x float], ptr %293, i64 0, i64 1
  %295 = load float, ptr %294, align 4
  %296 = call float @llvm.fmuladd.f32(float %289, float %295, float %288)
  %297 = load ptr, ptr %7, align 8
  %298 = load i32, ptr %24, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [512 x [512 x float]], ptr %297, i64 0, i64 %299
  %301 = getelementptr inbounds [512 x float], ptr %300, i64 0, i64 0
  %302 = load float, ptr %301, align 4
  %303 = call float @llvm.fmuladd.f32(float -4.000000e+00, float %302, float %296)
  store float %303, ptr %26, align 4
  %304 = load float, ptr %25, align 4
  %305 = fpext float %304 to double
  %306 = load float, ptr %26, align 4
  %307 = fpext float %306 to double
  %308 = call double @llvm.fmuladd.f64(double 1.000000e-01, double %307, double %305)
  %309 = fptrunc double %308 to float
  %310 = load ptr, ptr %13, align 8
  %311 = load i32, ptr %24, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [512 x [512 x float]], ptr %310, i64 0, i64 %312
  %314 = getelementptr inbounds [512 x float], ptr %313, i64 0, i64 0
  store float %309, ptr %314, align 4
  %315 = load ptr, ptr %7, align 8
  %316 = load i32, ptr %24, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [512 x [512 x float]], ptr %315, i64 0, i64 %317
  %319 = getelementptr inbounds [512 x float], ptr %318, i64 0, i64 511
  %320 = load float, ptr %319, align 4
  %321 = load ptr, ptr %8, align 8
  %322 = load i32, ptr %24, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [512 x [512 x float]], ptr %321, i64 0, i64 %323
  %325 = getelementptr inbounds [512 x float], ptr %324, i64 0, i64 511
  %326 = load float, ptr %325, align 4
  %327 = fneg float %326
  %328 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %320, float %327)
  store float %328, ptr %27, align 4
  %329 = load ptr, ptr %7, align 8
  %330 = load i32, ptr %24, align 4
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [512 x [512 x float]], ptr %329, i64 0, i64 %332
  %334 = getelementptr inbounds [512 x float], ptr %333, i64 0, i64 511
  %335 = load float, ptr %334, align 4
  %336 = load ptr, ptr %7, align 8
  %337 = load i32, ptr %24, align 4
  %338 = sub nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [512 x [512 x float]], ptr %336, i64 0, i64 %339
  %341 = getelementptr inbounds [512 x float], ptr %340, i64 0, i64 511
  %342 = load float, ptr %341, align 4
  %343 = fadd float %335, %342
  %344 = load float, ptr %18, align 4
  %345 = load ptr, ptr %7, align 8
  %346 = load i32, ptr %24, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [512 x [512 x float]], ptr %345, i64 0, i64 %347
  %349 = getelementptr inbounds [512 x float], ptr %348, i64 0, i64 510
  %350 = load float, ptr %349, align 4
  %351 = call float @llvm.fmuladd.f32(float %344, float %350, float %343)
  %352 = load ptr, ptr %7, align 8
  %353 = load i32, ptr %24, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [512 x [512 x float]], ptr %352, i64 0, i64 %354
  %356 = getelementptr inbounds [512 x float], ptr %355, i64 0, i64 511
  %357 = load float, ptr %356, align 4
  %358 = call float @llvm.fmuladd.f32(float -4.000000e+00, float %357, float %351)
  store float %358, ptr %28, align 4
  %359 = load float, ptr %27, align 4
  %360 = fpext float %359 to double
  %361 = load float, ptr %28, align 4
  %362 = fpext float %361 to double
  %363 = call double @llvm.fmuladd.f64(double 1.000000e-01, double %362, double %360)
  %364 = fptrunc double %363 to float
  %365 = load ptr, ptr %13, align 8
  %366 = load i32, ptr %24, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [512 x [512 x float]], ptr %365, i64 0, i64 %367
  %369 = getelementptr inbounds [512 x float], ptr %368, i64 0, i64 511
  store float %364, ptr %369, align 4
  br label %370

370:                                              ; preds = %259
  %371 = load i32, ptr %24, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, ptr %24, align 4
  br label %256, !llvm.loop !13

373:                                              ; preds = %256
  %374 = load ptr, ptr %7, align 8
  %375 = getelementptr inbounds [512 x [512 x float]], ptr %374, i64 0, i64 0
  %376 = getelementptr inbounds [512 x float], ptr %375, i64 0, i64 0
  %377 = load float, ptr %376, align 4
  %378 = load ptr, ptr %8, align 8
  %379 = getelementptr inbounds [512 x [512 x float]], ptr %378, i64 0, i64 0
  %380 = getelementptr inbounds [512 x float], ptr %379, i64 0, i64 0
  %381 = load float, ptr %380, align 4
  %382 = fneg float %381
  %383 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %377, float %382)
  store float %383, ptr %29, align 4
  %384 = load float, ptr %18, align 4
  %385 = load ptr, ptr %7, align 8
  %386 = getelementptr inbounds [512 x [512 x float]], ptr %385, i64 0, i64 0
  %387 = getelementptr inbounds [512 x float], ptr %386, i64 0, i64 1
  %388 = load float, ptr %387, align 4
  %389 = load ptr, ptr %7, align 8
  %390 = getelementptr inbounds [512 x [512 x float]], ptr %389, i64 0, i64 1
  %391 = getelementptr inbounds [512 x float], ptr %390, i64 0, i64 0
  %392 = load float, ptr %391, align 4
  %393 = fadd float %388, %392
  %394 = load ptr, ptr %7, align 8
  %395 = getelementptr inbounds [512 x [512 x float]], ptr %394, i64 0, i64 0
  %396 = getelementptr inbounds [512 x float], ptr %395, i64 0, i64 0
  %397 = load float, ptr %396, align 4
  %398 = fmul float 4.000000e+00, %397
  %399 = fneg float %398
  %400 = call float @llvm.fmuladd.f32(float %384, float %393, float %399)
  store float %400, ptr %30, align 4
  %401 = load float, ptr %29, align 4
  %402 = fpext float %401 to double
  %403 = load float, ptr %30, align 4
  %404 = fpext float %403 to double
  %405 = call double @llvm.fmuladd.f64(double 1.000000e-01, double %404, double %402)
  %406 = fptrunc double %405 to float
  %407 = load ptr, ptr %13, align 8
  %408 = getelementptr inbounds [512 x [512 x float]], ptr %407, i64 0, i64 0
  %409 = getelementptr inbounds [512 x float], ptr %408, i64 0, i64 0
  store float %406, ptr %409, align 4
  %410 = load ptr, ptr %7, align 8
  %411 = getelementptr inbounds [512 x [512 x float]], ptr %410, i64 0, i64 511
  %412 = getelementptr inbounds [512 x float], ptr %411, i64 0, i64 0
  %413 = load float, ptr %412, align 4
  %414 = load ptr, ptr %8, align 8
  %415 = getelementptr inbounds [512 x [512 x float]], ptr %414, i64 0, i64 511
  %416 = getelementptr inbounds [512 x float], ptr %415, i64 0, i64 0
  %417 = load float, ptr %416, align 4
  %418 = fneg float %417
  %419 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %413, float %418)
  store float %419, ptr %31, align 4
  %420 = load float, ptr %18, align 4
  %421 = load ptr, ptr %7, align 8
  %422 = getelementptr inbounds [512 x [512 x float]], ptr %421, i64 0, i64 511
  %423 = getelementptr inbounds [512 x float], ptr %422, i64 0, i64 1
  %424 = load float, ptr %423, align 4
  %425 = load ptr, ptr %7, align 8
  %426 = getelementptr inbounds [512 x [512 x float]], ptr %425, i64 0, i64 510
  %427 = getelementptr inbounds [512 x float], ptr %426, i64 0, i64 0
  %428 = load float, ptr %427, align 4
  %429 = fadd float %424, %428
  %430 = load ptr, ptr %7, align 8
  %431 = getelementptr inbounds [512 x [512 x float]], ptr %430, i64 0, i64 511
  %432 = getelementptr inbounds [512 x float], ptr %431, i64 0, i64 0
  %433 = load float, ptr %432, align 4
  %434 = fmul float 4.000000e+00, %433
  %435 = fneg float %434
  %436 = call float @llvm.fmuladd.f32(float %420, float %429, float %435)
  store float %436, ptr %32, align 4
  %437 = load float, ptr %31, align 4
  %438 = fpext float %437 to double
  %439 = load float, ptr %32, align 4
  %440 = fpext float %439 to double
  %441 = call double @llvm.fmuladd.f64(double 1.000000e-01, double %440, double %438)
  %442 = fptrunc double %441 to float
  %443 = load ptr, ptr %13, align 8
  %444 = getelementptr inbounds [512 x [512 x float]], ptr %443, i64 0, i64 511
  %445 = getelementptr inbounds [512 x float], ptr %444, i64 0, i64 0
  store float %442, ptr %445, align 4
  %446 = load ptr, ptr %7, align 8
  %447 = getelementptr inbounds [512 x [512 x float]], ptr %446, i64 0, i64 0
  %448 = getelementptr inbounds [512 x float], ptr %447, i64 0, i64 511
  %449 = load float, ptr %448, align 4
  %450 = load ptr, ptr %8, align 8
  %451 = getelementptr inbounds [512 x [512 x float]], ptr %450, i64 0, i64 0
  %452 = getelementptr inbounds [512 x float], ptr %451, i64 0, i64 511
  %453 = load float, ptr %452, align 4
  %454 = fneg float %453
  %455 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %449, float %454)
  store float %455, ptr %33, align 4
  %456 = load float, ptr %18, align 4
  %457 = load ptr, ptr %7, align 8
  %458 = getelementptr inbounds [512 x [512 x float]], ptr %457, i64 0, i64 0
  %459 = getelementptr inbounds [512 x float], ptr %458, i64 0, i64 510
  %460 = load float, ptr %459, align 4
  %461 = load ptr, ptr %7, align 8
  %462 = getelementptr inbounds [512 x [512 x float]], ptr %461, i64 0, i64 1
  %463 = getelementptr inbounds [512 x float], ptr %462, i64 0, i64 511
  %464 = load float, ptr %463, align 4
  %465 = fadd float %460, %464
  %466 = load ptr, ptr %7, align 8
  %467 = getelementptr inbounds [512 x [512 x float]], ptr %466, i64 0, i64 0
  %468 = getelementptr inbounds [512 x float], ptr %467, i64 0, i64 511
  %469 = load float, ptr %468, align 4
  %470 = fmul float 4.000000e+00, %469
  %471 = fneg float %470
  %472 = call float @llvm.fmuladd.f32(float %456, float %465, float %471)
  store float %472, ptr %34, align 4
  %473 = load float, ptr %33, align 4
  %474 = fpext float %473 to double
  %475 = load float, ptr %34, align 4
  %476 = fpext float %475 to double
  %477 = call double @llvm.fmuladd.f64(double 1.000000e-01, double %476, double %474)
  %478 = fptrunc double %477 to float
  %479 = load ptr, ptr %13, align 8
  %480 = getelementptr inbounds [512 x [512 x float]], ptr %479, i64 0, i64 0
  %481 = getelementptr inbounds [512 x float], ptr %480, i64 0, i64 511
  store float %478, ptr %481, align 4
  %482 = load ptr, ptr %7, align 8
  %483 = getelementptr inbounds [512 x [512 x float]], ptr %482, i64 0, i64 511
  %484 = getelementptr inbounds [512 x float], ptr %483, i64 0, i64 511
  %485 = load float, ptr %484, align 4
  %486 = load ptr, ptr %8, align 8
  %487 = getelementptr inbounds [512 x [512 x float]], ptr %486, i64 0, i64 511
  %488 = getelementptr inbounds [512 x float], ptr %487, i64 0, i64 511
  %489 = load float, ptr %488, align 4
  %490 = fneg float %489
  %491 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %485, float %490)
  store float %491, ptr %35, align 4
  %492 = load float, ptr %18, align 4
  %493 = load ptr, ptr %7, align 8
  %494 = getelementptr inbounds [512 x [512 x float]], ptr %493, i64 0, i64 511
  %495 = getelementptr inbounds [512 x float], ptr %494, i64 0, i64 510
  %496 = load float, ptr %495, align 4
  %497 = load ptr, ptr %7, align 8
  %498 = getelementptr inbounds [512 x [512 x float]], ptr %497, i64 0, i64 510
  %499 = getelementptr inbounds [512 x float], ptr %498, i64 0, i64 511
  %500 = load float, ptr %499, align 4
  %501 = fadd float %496, %500
  %502 = load ptr, ptr %7, align 8
  %503 = getelementptr inbounds [512 x [512 x float]], ptr %502, i64 0, i64 511
  %504 = getelementptr inbounds [512 x float], ptr %503, i64 0, i64 511
  %505 = load float, ptr %504, align 4
  %506 = fmul float 4.000000e+00, %505
  %507 = fneg float %506
  %508 = call float @llvm.fmuladd.f32(float %492, float %501, float %507)
  store float %508, ptr %36, align 4
  %509 = load float, ptr %35, align 4
  %510 = fpext float %509 to double
  %511 = load float, ptr %36, align 4
  %512 = fpext float %511 to double
  %513 = call double @llvm.fmuladd.f64(double 1.000000e-01, double %512, double %510)
  %514 = fptrunc double %513 to float
  %515 = load ptr, ptr %13, align 8
  %516 = getelementptr inbounds [512 x [512 x float]], ptr %515, i64 0, i64 511
  %517 = getelementptr inbounds [512 x float], ptr %516, i64 0, i64 511
  store float %514, ptr %517, align 4
  %518 = load float, ptr %10, align 4
  %519 = fpext float %518 to double
  %520 = call double @sin(double noundef %519) #4
  %521 = fmul double 3.000000e+00, %520
  %522 = fptrunc double %521 to float
  store float %522, ptr %37, align 4
  %523 = load float, ptr %37, align 4
  %524 = load ptr, ptr %13, align 8
  %525 = load i32, ptr %11, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [512 x [512 x float]], ptr %524, i64 0, i64 %526
  %528 = load i32, ptr %12, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [512 x float], ptr %527, i64 0, i64 %529
  %531 = load float, ptr %530, align 4
  %532 = fadd float %531, %523
  store float %532, ptr %530, align 4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare double @sin(double noundef) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local float @saturate(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, ptr %2, align 4
  %3 = load float, ptr %2, align 4
  %4 = fpext float %3 to double
  %5 = fcmp ogt double %4, 1.000000e+01
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store float 1.000000e+01, ptr %2, align 4
  br label %13

7:                                                ; preds = %1
  %8 = load float, ptr %2, align 4
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, -1.000000e+01
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store float -1.000000e+01, ptr %2, align 4
  br label %12

12:                                               ; preds = %11, %7
  br label %13

13:                                               ; preds = %12, %6
  %14 = load float, ptr %2, align 4
  ret float %14
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @app() #0 {
  %1 = alloca [2 x [512 x [512 x float]]], align 16
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca ptr, align 8
  %20 = getelementptr inbounds [2 x [512 x [512 x float]]], ptr %1, i64 0, i64 0
  store ptr %20, ptr %2, align 8
  %21 = getelementptr inbounds [2 x [512 x [512 x float]]], ptr %1, i64 0, i64 1
  store ptr %21, ptr %3, align 8
  %22 = getelementptr inbounds [2 x [512 x [512 x float]]], ptr %1, i64 0, i64 0
  call void @initGrids(ptr noundef %22)
  store i32 256, ptr %4, align 4
  store i32 256, ptr %5, align 4
  store float 0.000000e+00, ptr %6, align 4
  store float 5.000000e-01, ptr %7, align 4
  br label %23

23:                                               ; preds = %0, %127
  %24 = load ptr, ptr %2, align 8
  %25 = load ptr, ptr %3, align 8
  %26 = load float, ptr %7, align 4
  %27 = load float, ptr %6, align 4
  %28 = load i32, ptr %4, align 4
  %29 = load i32, ptr %5, align 4
  call void @emulationStep(ptr noundef %24, ptr noundef %25, float noundef %26, float noundef %27, i32 noundef %28, i32 noundef %29)
  store i32 0, ptr %8, align 4
  br label %30

30:                                               ; preds = %71, %23
  %31 = load i32, ptr %8, align 4
  %32 = icmp slt i32 %31, 512
  br i1 %32, label %33, label %74

33:                                               ; preds = %30
  store i32 0, ptr %9, align 4
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i32, ptr %9, align 4
  %36 = icmp slt i32 %35, 512
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load ptr, ptr %2, align 8
  %39 = load i32, ptr %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [512 x [512 x float]], ptr %38, i64 0, i64 %40
  %42 = load i32, ptr %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [512 x float], ptr %41, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = call float @saturate(float noundef %45)
  store float %46, ptr %10, align 4
  %47 = load float, ptr %10, align 4
  %48 = fpext float %47 to double
  %49 = fadd double %48, 1.000000e+01
  %50 = fdiv double %49, 2.000000e+01
  %51 = fptrunc double %50 to float
  store float %51, ptr %11, align 4
  %52 = load float, ptr %11, align 4
  %53 = fmul float %52, 2.550000e+02
  %54 = fptosi float %53 to i32
  %55 = and i32 %54, 255
  store i32 %55, ptr %12, align 4
  %56 = load i32, ptr %12, align 4
  %57 = load i32, ptr %12, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %56, %58
  %60 = load i32, ptr %12, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %59, %61
  %63 = or i32 %62, -16777216
  store i32 %63, ptr %13, align 4
  %64 = load i32, ptr %8, align 4
  %65 = load i32, ptr %9, align 4
  %66 = load i32, ptr %13, align 4
  call void @simPutPixel(i32 noundef %64, i32 noundef %65, i32 noundef %66)
  br label %67

67:                                               ; preds = %37
  %68 = load i32, ptr %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %9, align 4
  br label %34, !llvm.loop !14

70:                                               ; preds = %34
  br label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %8, align 4
  br label %30, !llvm.loop !15

74:                                               ; preds = %30
  call void (...) @simFlush()
  br label %75

75:                                               ; preds = %98, %74
  %76 = call i32 (...) @simHasClick()
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = call i32 (...) @simGetClick()
  store i32 %79, ptr %14, align 4
  %80 = load i32, ptr %14, align 4
  %81 = ashr i32 %80, 16
  store i32 %81, ptr %15, align 4
  %82 = load i32, ptr %14, align 4
  %83 = and i32 %82, 65535
  store i32 %83, ptr %16, align 4
  %84 = load i32, ptr %15, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %78
  %87 = load i32, ptr %15, align 4
  %88 = icmp slt i32 %87, 512
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, ptr %16, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, ptr %16, align 4
  %94 = icmp slt i32 %93, 512
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, ptr %15, align 4
  store i32 %96, ptr %4, align 4
  %97 = load i32, ptr %16, align 4
  store i32 %97, ptr %5, align 4
  br label %98

98:                                               ; preds = %95, %92, %89, %86, %78
  br label %75, !llvm.loop !16

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %123, %99
  %101 = call i32 (...) @simHasScroll()
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = call i32 (...) @simGetScroll()
  %105 = mul nsw i32 10, %104
  store i32 %105, ptr %17, align 4
  %106 = load i32, ptr %17, align 4
  %107 = sitofp i32 %106 to double
  %108 = fdiv double %107, 1.000000e+02
  %109 = fptrunc double %108 to float
  store float %109, ptr %18, align 4
  %110 = load float, ptr %18, align 4
  %111 = load float, ptr %7, align 4
  %112 = fadd float %111, %110
  store float %112, ptr %7, align 4
  %113 = load float, ptr %7, align 4
  %114 = fpext float %113 to double
  %115 = fcmp ogt double %114, 1.000000e+00
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  store float 1.000000e+00, ptr %7, align 4
  br label %123

117:                                              ; preds = %103
  %118 = load float, ptr %7, align 4
  %119 = fpext float %118 to double
  %120 = fcmp olt double %119, 0.000000e+00
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store float 0.000000e+00, ptr %7, align 4
  br label %122

122:                                              ; preds = %121, %117
  br label %123

123:                                              ; preds = %122, %116
  %124 = load float, ptr %7, align 4
  %125 = fpext float %124 to double
  %126 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %125)
  br label %100, !llvm.loop !17

127:                                              ; preds = %100
  %128 = load ptr, ptr %2, align 8
  store ptr %128, ptr %19, align 8
  %129 = load ptr, ptr %3, align 8
  store ptr %129, ptr %2, align 8
  %130 = load ptr, ptr %19, align 8
  store ptr %130, ptr %3, align 8
  %131 = load float, ptr %6, align 4
  %132 = fpext float %131 to double
  %133 = fadd double %132, 5.000000e-02
  %134 = fptrunc double %133 to float
  store float %134, ptr %6, align 4
  br label %23
}

declare void @simPutPixel(i32 noundef, i32 noundef, i32 noundef) #3

declare void @simFlush(...) #3

declare i32 @simHasClick(...) #3

declare i32 @simGetClick(...) #3

declare i32 @simHasScroll(...) #3

declare i32 @simGetScroll(...) #3

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 22.1.8"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
