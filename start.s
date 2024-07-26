.intel_syntax noprefix
.global _start
.global _print

.section .text 
_start:
    // sys_write
	lea rdi, [hello_world]
	mov esi, 14
	call _print
    call main

    // sys_exit
    mov rdi, rax
    mov	rax, 60
    syscall

_print:
	// Prepare stack frame
	push rbp
	mov rbp, rsp

	mov QWORD PTR [rbp-8], rdi
	mov DWORD PTR [rbp-16], esi
    mov rsi, QWORD PTR [rbp-8]
    mov rdx, QWORD PTR [rbp-16]
	//Prepare syscall ashl     rax,32rguments
    mov rax, 1
    mov rdi, 1
	syscall

	pop rbp
	ret

.section .data 
hello_world:
    .asciz "Hello, World!\n"

.section .note.GNU-stack
