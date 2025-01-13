01/11/25
  - Found leak
  - Leak appears to be an object of type `OS_xpc_date` which is an Objective-C object
    designed to represent a date for interprocess communication?
  - Appears to be created at `runtime.asmcgocall.abi0 + 200`. Found at line `1034` in 
    `asm_arm64.s`
  - Why does it need this date? How do I get rid of it? Will I find my answers before
    up on this project? Who knows.
01/12/25
  - I finally found the [issue](https://github.com/golang/go/issues/62661) and it has been
    open since September 15, 2023, so I think that the error will live on for now. The issue
    has discussion of why things are the way that they are and it seems that for now, it's not
    a real issue and until a Go contributor with access to an Apple engineer wants this particular
    issue fixed, it will remain.
  - Thus ends my tale. 
