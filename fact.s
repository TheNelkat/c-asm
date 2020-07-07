global do_fact

section .text

do_fact:

    push ebx
    push edi
    push esi
    
    mov ecx, [esp+16] ; int x
    mov edi, [esp+20]

    mov ebx, 1      ;число, на которое делим
                    ; eax - число, т к в этот регистр кладется делимое,
    mov ecx, eax    ; то сохраним значение eax в edi
                
    lp: mov eax, ecx
        inc ebx
        xor edx, edx
        div ebx
        cmp edx,0
        jne lp

;mov eax, ebx
;push eax
mov esi, eax
push esi
push ebx
call edi
add esp, 8
cmp eax, 0
    je .ret
        mov eax, 1
    .ret:
        pop edi
        pop esi
        pop ebx
        ret
