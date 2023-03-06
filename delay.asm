;dl delay 

_delay:
MOV     CX, si
MOV     DX, 4240h
MOV     AH, 86H
INT     15H
ret

