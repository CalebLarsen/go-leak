01/11/25
  - Found leak
  - Leak appears to be an object of type `OS_xpc_date` which is an Objective-C object
    designed to represent a date for interprocess communication?
  - Appears to be created at `runtime.asmcgocall.abi0 + 200`. Found at line `1034` in 
    `asm_arm64.s`
  - Why does it need this date? How do I get rid of it? Will I find my answers before
    up on this project? Who knows.
