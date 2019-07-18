;making the procedures gloabal to use in ther programs
global hex_to_ascii

SECTION .data 
;before calling the procedures make sure esi points to source 
;or in some cases destination

SECTION .bss
    cnt resb 2

SECTION .text 
    ascii_to_hex         ; before calling point esi to source memory
    xor ebx, ebx         ; ebx will contain the final hex number 

label:
    cmp byte[esi],0xA    ; check the new line 
    je  exit             ; if equal done
    rol ebx,0x4          ; appends zero to lsb 
    mov dl,byte[esi]     ; dl=ascii value
    cmp dl,39h           ; if lesser than 39 goto esc
    jbe esc              ; else subtract 7
    sub dl,07h
    esc:
    sub dl,30h           ;sub 30h
    add bl,dl       
    



