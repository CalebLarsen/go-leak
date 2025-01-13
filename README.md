Small example showing a memory leak that I found under strange circumstances.
I have only tested this on go version `go1.23.4 darwin/arm64`.


When you compile a go program to a static library for use with C with
the command
`go build -buildmode=c-archive ...`
and call ANY exported go function from C, you get a memory leak.
