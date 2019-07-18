section .data 

%define SYS_EXIT    1
%define SYS_WRITE   4
%define SYS_READ    3
%define STDOUT      1
%define STDIN       0



strMsgPrg db 'Add V. 1.O. Program that adds 2 numbers of one digit',0xa,0xa
intLenNumMsgPrg equ $- strMsgPrg


strMsgNumOne db 'Capture the first Num :',0xa
intLenNumOne equ $- strMsgNumOne


strMsgNumTwo db 'Capture the Second Num :',0xa
intLenNumTwo equ $- strMsgNumTwo


strMsgRes    db 'The result of the addition is :',0xa
intLenRes    equ $- strMsgRes


chrEOL db 0xa


section .bss
intNumber1 resb 1
intNumber2 resb 1
intNumber3 resb 1


section .text 
        global _start 
_start:

mov edx, intLenNumMsgPrg
mov ecx, strMsgPrg
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80

mov edx, intLenNumOne
mov ecx, strMsgNumOne
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80

mov eax, SYS_READ 
mov ebx, STDIN 
mov ecx, intNumber1
mov edx, 2
int 0x80


mov edx, 1
mov ecx, intNumber1
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80

mov edx, 1
mov ecx, chrEOL
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80

mov edx, intLenNumTwo
mov ecx, strMsgNumTwo
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80


mov eax, SYS_READ
mov ebx, STDIN
mov ecx, intNumber2
mov edx, 2
int 0x80


mov edx, 1
mov ecx, intNumber2
mov ebx,STDOUT
mov eax, SYS_WRITE
int 0x80

mov eax, [intNumber1]
sub eax, '0'
mov ebx, [intNumber2]
sub ebx, '0'


add eax,ebx

add eax,'0'

mov [intResult],eax


mov edx, intLenRes 
mov ecx, strMsgRes
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80


mov edx, 1
mov ecx, intResult
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80


mov edx, 1
mov ecx, chrEOL
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80

mov eax,SYS_EXIT
int 0x80
