; Data section
section .data 

; Defining constants 
%define SYS_EXIT  1
%define SYS_WRITE 4
%define STDOUT    1

; Variables 
chrOption        DB 'S',0xa                 ; 1 Byte
strMessage       DB 'Hello',0xa         ; 5 Bytes
intNumber        DW 12345               ; 2 Bytes 
intNegNumber     DW -12345              ; 2 Bytes 
lngNumber        DQ 12344567890         ; 8 Bytes 
fltNumber        DD 1.234               ; 4 Bytes
fltNumber2       DT 123.456             ; 10 Bytes 

; Code Section
section .text 
        global _start 
_start:

; Prepare the display of the message
mov edx, 
mov ecx, strMessage
mov ebx, STDOUT
mov eax, SYS_WRITE
int 0x80

; Exit of the program
mov eax,SYS_EXIT
int 0x80