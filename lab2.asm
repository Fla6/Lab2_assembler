section .text
global _start
_start:
        push    rbp
        push    rsp
        mov     rbp, rsp
        sub     rsp, 64
        mov     DWORD [rbp-4], 0
        mov     DWORD [rbp-64], 1
        mov     DWORD [rbp-60], 15
        mov     DWORD [rbp-56], 55
        mov     DWORD [rbp-52], 7
        mov     DWORD [rbp-48], 8
        mov     DWORD [rbp-44], 92
        mov     DWORD [rbp-40], 36
        mov     DWORD [rbp-36], 45
        mov     DWORD [rbp-32], 23
        mov     DWORD [rbp-28], 66
        mov     DWORD [rbp-8], 0
        jmp     .L2
.L4:
        mov     eax, DWORD [rbp-8]
        cdqe
        mov     eax, DWORD [rbp-64+rax*4]
        add     eax, 107
        mov     DWORD [rbp-12], eax
        cmp     DWORD [rbp-12], 127
        jg      .L3
        add     DWORD [rbp-4], 1
.L3:
        mov     eax, DWORD [rbp-12]
        mov     ecx, 3
        mov     edx, eax
        mov     esi, 1
        mov     edi, 1
        mov     eax, 0
        int     0x80
        add     DWORD [rbp-8], 1
.L2:
        cmp     DWORD [rbp-8], 9
        jle     .L4
        mov     eax, DWORD [rbp-4]
        pop     rbp
        pop     rsp
        mov     ecx, 1
        mov     edx, eax
        mov     esi, 1
        mov     edi, 1
        mov     eax, 0
        int     0x80
        mov     eax, 1
        int     0x80