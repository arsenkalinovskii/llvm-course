APP_DIR = App
PASS_DIR = Pass
CC_FLAGS = -lSDL2 -lm -Wl,-z,stack-size=0x20000000

all: appO2 appOs $(APP_DIR)/app $(PASS_DIR)/pass.so

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

clean:
	-rm app*
	-$(MAKE) clean -C $(APP_DIR)
	-$(MAKE) clean -C $(PASS_DIR)

.PHONY: all clean