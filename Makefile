all: app app_O2.ll app_Os.ll

CC_FLAGS = -lSDL2 -lm -Wl,-z,stack-size=0x20000000

app: app.ll start.c sim.c
	clang $^ $(CC_FLAGS) -o $@

app.ll: app.c
	clang -emit-llvm -S $^ -o $@

app_O2.ll: app.c
	clang -emit-llvm -S $^ -o $@ -O2

app_Os.ll: app.c
	clang -emit-llvm -S $^ -o $@ -Os

clean:
	rm app *.ll

.PHONY: all clean
