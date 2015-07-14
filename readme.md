###MBE Shellcode Solution###
This is my solution to **MBE**'s shellcode [exercise](https://github.com/ohmydayum/MBE/tree/master/src/lecture/shellcode).

My shellcode creates a file named `PWNED!` using a stack overflow.

---
####Compilation:####

- In order to compile `inject.c`:
```
gcc -z execstack -fno-stack-protector -o inject inject.c -m32`
```
- In order to compile `code.asm`:
```
./make-shellcode.sh > payload
```
