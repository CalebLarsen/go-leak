all: go-leak
	MallocStackLogging=1 leaks -quiet --atExit -- ./go-leak

go-leak: out/libgoleak.a src/main.c
	clang -o go-leak -lgoleak -L./out src/main.c

out/libgoleak.a: src/main.go
	go build -buildmode=c-archive -o ./out/libgoleak.a src/main.go

.PHONY: clean
clean:
	rm -rf ./out
