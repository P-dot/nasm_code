section .data 

%define SYS_EXIT   1
%define SYS_WRITE  4
%define STDOUT     1


strMessage         times 10 db '.'
strEOL             db 0xa
strBuffer:         times 64 db '*'
strEOL2            db 0xa


section .text 
        global _start 
_start:


mov edx, 11
mov ecx, strMessage
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80

mov edx, 11
mov ecx, strMessage
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80

mov edx,65
mov ecx, strBuffer
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80

mov eax,SYS_EXIT
int 0x80       