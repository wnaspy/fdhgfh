; Everything that comes after a semicolon (;) is a comment

; Assembler-time constants may be defined using 'equ'
section .rodata
    ovenTime equ 40

section .text

; You should implement functions in the .text section

; the global directive makes a function visible to the test files
global expected_minutes_in_oven
expected_minutes_in_oven:
    ; TODO: This function has no arguments
    ; and must return a number
    lea rax, ovenTime
    ret

global remaining_minutes_in_oven
remaining_minutes_in_oven:
    ; TODO: define the 'remaining_minutes_in_oven' function
    ; This function takes one number as argument and must return a number
    
    mov rbx, rdi ; so phut da nuong trong lo
    mov rax, ovenTime
    sub rax, rbx
    ret

global preparation_time_in_minutes
preparation_time_in_minutes:
    ; TODO: define the 'preparation_time_in_minutes' function
    ; This function takes one number as argument and must return a number
    mov rax, rdi ; nhan so layer
    imul rax, 2

    ret

global elapsed_time_in_minutes
elapsed_time_in_minutes:
    ; TODO: define the 'elapsed_time_in_minutes' function
    ; This function takes two numbers as arguments and must return a number
    mov rax, rdi; tham so thu nhat la so layer
    mov rbx, rsi; tham so thu hai la so phut trong lo
    
    imul rax, 2; ket qua luu vao rax
    add rax, rbx
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
