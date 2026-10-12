all: pass.so

pass.so: pass.cpp
	clang++ pass.cpp -fPIC -shared -I$(shell llvm-config --includedir) -o pass.so

clean:
	rm pass.so

.PHONY: all clean