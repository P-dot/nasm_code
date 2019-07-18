; Data Section 
section .data 

; Defining constants 
%define SYS_EXIT  1
%define SYS_WRITE 4
%define STDOUT    1

;Variables 
section .bss

strBuffer:    RESB 10      ; Reserve 10 Byte's
intValor:     RESW  1      ; Reserve  2 Byte's
intValorD:    RESD  1      ; Reserve  4 Bytes
intValorQ:    RESQ  1      ; Reserve  8 Bytes 
intValorT:    REST  1      ; Reserve  10 Bytes
varCaracter:  RESB  1      ; Reserve   1 Byte

; Code section
section .text 
        global _start 
_start:

; update the message to be displayed 
; prefixes available: BYTE, WORD, and DWORD
mov [strBuffer]  , dword 'ABCD'
mov [strBuffer+4], word '01'
mov [strBuffer+6], word 'XY'
mov [strBuffer+8], byte '*'
mov [strBuffer+9], byte 0xa

; Prepares the message to display
mov edx, 10
mov ecx, strBuffer
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80

;We move a letter to a character 
mov [varCaracter],  byte '$'

; Prepares the display of the message
mov edx, 1
mov ecx, varCaracter
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80

; We allocate a value in the variable
mov [intValor], word 10

;mov [intValor],  byte 10
;mov [intValor+1],   byte 48

; Prepares the deployment of the value
mov edx, 2
mov ecx, intValor
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80