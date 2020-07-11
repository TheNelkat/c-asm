global do_fact

section .text

do_fact:

    push ebp
    mov ebp, esp

    push ebx
    push ecx
    push edi
    
    
    mov eax, [ebp+8] 
    mov edi, [ebp+12]

    mov ebx, 1      
    mov ecx, eax

    _fact:
            mov eax, ecx
            inc ebx   

        .lp:
    
            mov ecx, eax
            xor edx, edx
            div ebx
            cmp edx,0
            jne _fact
            cmp eax, 1
            je .ret

            mov ecx, eax
            push eax
            push ebx
            call edi
            add esp, 8
            mov ebx, 2
            mov eax, ecx

            jmp .lp

        
        .ret:
            pop edi
            pop ecx
            pop ebx

            mov esp, ebp
            pop ebp
            ret



       