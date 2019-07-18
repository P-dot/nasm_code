section .data

%define SYS_EXIT   1
%define SYS_WRITE  4
%define STDOUT     1

chrLetter    db   'A'
chrEOL       db   0xa 

section .text
        global _start 
_start:

mov edx, 2
mov ecx, chrLetter 
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80

INC word[chrLetter]

mov edx, 1
inc edx
mov ecx, chrLetter
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80

times 5 INC word [chrLetter]

mov edx, 2
mov ecx, chrLetter 
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80

DEC word [chrLetter]

mov edx, 1
inc edx
mov ecx, chrLetter
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80



