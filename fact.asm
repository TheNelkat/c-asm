global do_fact

section .text

do_fact:

    ;prolog
    push ebp
    mov ebp, esp

    push ebx
    push esi
    push edi
    
    
    mov eax, [ebp+8] ;num
    mov edi, [ebp+12] ;callback

    mov ebx, 1      
    mov esi, eax

    _fact:
            mov eax, esi
            ;ebx == 2 first divider
            inc ebx         

        .lp:
    
            mov esi, eax
            xor edx, edx
            div ebx
            cmp edx,0
            jne _fact
            
            ;call print_res for print divider
            mov esi, eax
            push eax
            push ebx
            call edi
            add esp, 8
            mov ebx, 2
            mov eax, esi

            ;check the end of factorization
            cmp eax, 1
            je .ret

            
            jmp .lp

        ;exit from factorization
        .ret:
            pop edi
            pop esi
            pop ebx

            ;epilog
            mov esp, ebp
            pop ebp
            ret



       