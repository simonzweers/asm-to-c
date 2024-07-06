.intel_syntax noprefix
.global _start

.section .text 
_start:
    // sys_write
    mov rax, 1
    mov rdi, 1
    lea rsi, [hello_world]
    mov rdx, 14
    syscall

    call main

    // sys_exit
    mov rdi, rax
    mov	rax, 60
    syscall

.section .data 
hello_world:
    .asciz "Hello, World!\n"

.section .note.GNU-stack
