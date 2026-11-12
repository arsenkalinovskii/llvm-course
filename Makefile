APP_DIR = App
PASS_DIR = Pass
IRGEN_DIR = IRGen
ASM2IR_DIR = ASM2IR
CC_FLAGS = -lSDL2 -lm -Wl,-z,stack-size=0x20000000

ROOT_TARGETS = appO2 appOs
APP_TARGETS = $(APP_DIR)/app
PASS_TARGETS = $(PASS_DIR)/pass.so
IRGEN_TARGETS = $(IRGEN_DIR)/app_O2.gen $(IRGEN_DIR)/app.gen
ASM2IR_TARGETS = $(ASM2IR_DIR)/asm2ir_1 $(ASM2IR_DIR)/asm2ir_2 $(ASM2IR_DIR)/asm2ir_3

all: $(ROOT_TARGETS) $(APP_TARGETS) $(PASS_TARGETS) $(IRGEN_TARGETS) $(ASM2IR_TARGETS)

appO2: appO2.ll $(APP_DIR)/sim.c $(APP_DIR)/start.c $(PASS_DIR)/log.c
	clang $^ $(CC_FLAGS) -DOPTIM_LEVEL=O2 -o $@

appOs: appOs.ll $(APP_DIR)/sim.c $(APP_DIR)/start.c $(PASS_DIR)/log.c
	clang $^ $(CC_FLAGS) -DOPTIM_LEVEL=Os -o $@

appO2.ll: $(PASS_DIR)/pass.so $(APP_DIR)/app.c
	clang -fpass-plugin=$< $(APP_DIR)/app.c -O2 -emit-llvm -S -o $@

appOs.ll: $(PASS_DIR)/pass.so $(APP_DIR)/app.c
	clang -fpass-plugin=$< $(APP_DIR)/app.c -Os -emit-llvm -S -o $@

$(APP_DIR)/app:
	$(MAKE) all -C $(APP_DIR)

$(PASS_DIR)/pass.so:
	$(MAKE) all -C $(PASS_DIR)

$(IRGEN_DIR)/app_O2.gen:
	$(MAKE) all -C $(IRGEN_DIR)

$(ASM2IR_DIR)/asm2ir_1:
	$(MAKE) all -C $(ASM2IR_DIR)

clean:
	-rm app*
	-$(MAKE) clean -C $(APP_DIR)
	-$(MAKE) clean -C $(PASS_DIR)
	-$(MAKE) clean -C $(IRGEN_DIR)
	-$(MAKE) clean -C $(ASM2IR_DIR)

.PHONY: all clean