# Dart FFI CLI App
* A simple command-line application, that explores Dart FFI, which is Dart's interop mechanism for calling C libraries.


## FFI

- The name `FFI` means Foreign Function Interface, which is a general term used to describe in tool mechanisms between programming languages.

### Application of FFI.

1. OS API                            `Win32`
1. C Source code                     `lib/utils.c`
1. C based compiled library          `sqlite3.dylib`
1. Performance Critical Code         `MatrixCalc.c`
1. Any language compiled to C lib    `mylib.go + go build -buildmode=c-shared`

### How do I call a C function in Dart?

- There are 3 steps we can take to call a C function from Dart:

1. Open the dynamic library containing the function.
1. Then lookup the function in the library and then...
1. Call the function.
