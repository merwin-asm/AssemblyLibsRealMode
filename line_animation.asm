; al color
; bx starting
; ax len
; dl  delay


_print_line:
inc bx
mov ah,  0ch
mov bh , 00h
mov cx , bx ; x
mov dx , 0ah ; y
int 10h
call _delay
cmp ax  , bx
jne _print_line
ret

_delay:
MOV     CX, si
MOV     DX, 4240h
MOV     AH, 86H
INT     15H
ret



