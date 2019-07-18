; Program 

; Data Section
segment .data 
        msg db 'Hello World', 0xa       ; String to deploy
        len equ $ - msg                 ; length of the string PSEUDO-INSTRUCTION


; Variables section
segment .bss 
        iCount: resb 1
        
; Code Section
segment .text
    global _start    ;Initialize the code , DIRECTIVE

_start:              ;Entry point "" ""
    mov edx,len      ;Move to edx the message's length "" ""
    mov ebx,msg      ;Move to ecx the message to deploy INSTRUCTION
    mov ebx,1        ;Move to ebx 1, that correspond to standard exit"stdout"
    mov eax,4        ;Move to eax 4, that is call to system function sys_write
    int 0x80         ;Execute the interruption 0x80 that call to kernel

    mov eax,1        ;Move to eax 1, to indicate the call at the function sys_exit 
    mov ebx,2        ;To indicate return code.
    int 0x80         ;call to kernel and execute interruption through 0x80
