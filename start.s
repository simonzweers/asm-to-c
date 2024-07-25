.intel_syntax noprefix
.global _start

.section .text 
_start:
    // sys_write
	lea r10, [hello_world]
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
	push rdi
	push rsi
	push rdx

	//Prepare syscall arguments
    mov rax, 1
    mov rdi, 1
    lea rsi, [r10]
    mov rdx, 14
	syscall

	pop rdx
	pop rsi
	pop rdi
	pop rbp
	ret

.section .data 
hello_world:
    .asciz "Hello, World!\n"

.section .note.GNU-stack
