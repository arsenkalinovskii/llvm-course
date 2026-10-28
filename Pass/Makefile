all: pass.so

LLVM_CONFIG = $(shell llvm-config --includedir)
CXX = clang++
CC = clang

pass.so: pass.cpp
	$(CXX) $< -fPIC -shared -I$(LLVM_CONFIG) -o $@

clean:
	-rm pass.so

.PHONY: all clean