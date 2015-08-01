###MBE Shellcode Solution###
This is my solution to **MBE**'s shellcode [exercise](https://github.com/ohmydayum/MBE/tree/master/src/lecture/shellcode).

My shellcode creates a file named `PWNED!` using a stack overflow.

---
####Compilation steps:####

1. In order to compile `inject.c`:
```
gcc -z execstack -fno-stack-protector -o inject inject.c -m32
```

2. In order to create `payload`:  
```
./make-shellcode.sh exploit > payload
```

3. In order to run POC:  
```
cat ./payload | ./inject
```
