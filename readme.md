###MBE Shellcode Solution###
This is my solution to **MBE**'s shellcode exercise.

My shellcode creates a file named `PWNED!` using a stack overflow.

---
####Compilation:####

- In order compile `inject.c`:
```
gcc -z execstack -fno-stack-protector -o inject inject.c -m32`
```
- In order compile `code.asm`:
```
./make-shellcode > payload
```
