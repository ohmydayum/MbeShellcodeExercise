###To compile *inject.c*:###

`gcc -z execstack -fno-stack-protector -o inject inject.c -m32`


###To compile *code.asm*:###

`./make-shellcode > payload`
