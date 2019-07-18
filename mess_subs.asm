section .data 
sMessage db 'JaorSoftware',10 ; 10 = endofline

section .text 
        global _start 

_start:

;Deploy 'JaorSoftware'
mov edx, 13                        ; 13 characters to print 
mov ecx, sMessage                  ; address of the message
mov ebx, 1                         ; Video's exit 
mov eax, 4                         ; sys_write 
int 0x80                           ; kernel

; Change Jaor to All-
mov [sMessage], dword 'All-'

; Deploy 'All-Software'
mov edx, 13                        ; 13 characters to print 
;mov edx, 15q                      ; in octal
;mov edx, 0xd                      ; in hexadecimal
;mov edx, 1101b                    ; in binary 
mov ecx, sMessage                  ; Address of message
mov ebx, 1                         ; Exit to video
mov eax, 4                         ; sys_write 
int 0x80                           ; kernel

; Exit to the program 
mov eax, 1                         ; system call number (sys_exit)
int 0x80                           ; call kernel