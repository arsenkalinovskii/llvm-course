all: app app_O2.ll app_Os.ll

LINK_FLAGS = -lSDL2 -lm
STACK_FLAGS = -Wl,-z,stack-size=0x20000000
CXX = clang++
CC = clang

app: app.ll start.c sim.c
	$(CC) $^ $(LINK_FLAGS) $(STACK_FLAGS) -o $@

app.ll: app.c
	$(CC) -emit-llvm -S $^ -o $@

app_O2.ll: app.c
	$(CC) -emit-llvm -S $^ -o $@ -O2

app_Os.ll: app.c
	$(CC) -emit-llvm -S $^ -o $@ -Os

clean:
	-rm app *.ll

.PHONY: all clean
