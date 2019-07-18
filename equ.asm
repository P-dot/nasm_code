; Data section
section .data 

; Defining constants
SYS_EXIT  EQU 1
SYS_WRITE EQU 4
STDIN     EQU 0
STDOUT    EQU 1
CHR_EXCL  EQU '!'
EOL       EQU 0XA

; We define Message Variable 
sMessage    db 'Hola a todo el mundo',CHR_EXCL,EOL,EOL

; Other constant
iMessageLen equ $- sMessage

; Code Section
section .text
        global _start
_start:

; Prepare the display of the message
mov edx, iMessageLen
mov ecx, sMessage
mov ebx, STDOUT 
mov eax, SYS_WRITE
int 0x80

; Output program
mov eax,SYS_EXIT
int 0x80
