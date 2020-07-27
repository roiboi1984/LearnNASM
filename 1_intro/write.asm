section .data
	phrase:	db 'Hello, NASM!',10
	length: equ $-phrase

section .text
	global _start

_start:
	mov eax,4
	mov ebx,1
	mov ecx,phrase
	mov edx,length
	int 0x80

	mov eax,1
	mov ebx,0
	int 0x80
