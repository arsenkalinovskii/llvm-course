all: asm2ir_1 asm2ir_2 asm2ir_3

LINK_FLAGS = -lSDL2 -lm
STACK_FLAGS = -Wl,-z,stack-size=0x20000000
CXX = clang++
CC = clang
LLVM_FLAGS = $$(llvm-config --cppflags --ldflags --libs)

asm2ir_1: asm2ir_1.cpp ../App/sim.c
	$(CXX) $(LLVM_FLAGS) $^ $(LINK_FLAGS) -o $@

asm2ir_2: asm2ir_2.cpp ../App/sim.c
	$(CXX) $(LLVM_FLAGS) $^ $(LINK_FLAGS) -o $@

asm2ir_3: asm2ir_3.cpp ../App/sim.c
	$(CXX) $(LLVM_FLAGS) $^ $(LINK_FLAGS) -o $@

clean:
	-rm asm2ir_1 asm2ir_2 asm2ir_3

.PHONY: all clean