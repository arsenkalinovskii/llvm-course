all: app_O2.gen app.gen

LINK_FLAGS = -lSDL2 -lm
STACK_FLAGS = -Wl,-z,stack-size=0x20000000
LLVM_CONFIG = $(shell llvm-config --cppflags --ldflags --libs)
CXX = clang++
CC = clang

app_O2.gen: app_O2.gen.cpp ../App/sim.c
	$(CXX) -O2 -std=c++23 $(LLVM_CONFIG) $^ $(LINK_FLAGS) $(STACK_FLAGS) -o $@

app.gen: app.gen.cpp ../App/sim.c
	$(CXX) -O2 -std=c++23 $(LLVM_CONFIG) $^ $(LINK_FLAGS) $(STACK_FLAGS) -o $@

app_O2.gen.cpp: generator ../App/app_O2.ll
	./generator ../App/app_O2.ll > $@

app.gen.cpp: generator ../App/app.ll
	./generator ../App/app_O2.ll > $@

generator: generator.cpp generator_utils.cpp ../App/sim.c
	$(CXX) -O2 -std=c++23 $(LLVM_CONFIG) $^ $(LINK_FLAGS) -o $@

clean:
	-rm app*

.PHONY: all clean


