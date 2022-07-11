section .text
global leap_year

_is_divisible:
    mov rax, rdi
    mov rdx, 0
    div rcx
    cmp rdx, 0
    ret

leap_year:
    mov rcx, 4
    call _is_divisible
    jnz _not_leap

    mov rcx, 100
    call _is_divisible
    jnz _leap

    mov rcx, 400
    call _is_divisible
    jz _leap

_not_leap:
    mov rax, 0
    ret

_leap:
    mov rax, 1
    ret
