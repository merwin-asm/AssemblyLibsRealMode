clear_the_screen:
    mov ah , 00
    mov al, 02
    int 0x10
    call set_graphic_mode
    mov bl ,0001
    call set_background_color
    ret
    

; bl color
set_background_color:
    mov ah,0Bh
    mov bh ,00h
    int 0x10 
    ret
    
; AH=02h	BH = Page Number, DH = Row, DL = Column
set_cursor_pos:
    mov ah,02h
    mov bh , 0
    int 0x10
    ret

;OUTPUT DH = row and Dl = col
get_cursor_pos:
    mov aH,03h
    mov bh , 0
    int 0x10
    mov al,DH	
    ret

set_graphic_mode:
    mov ah , 00h
    mov al , 13h
    int 10h
    ret

write_pixel:
    mov AH , 0Ch    
    mov AL , 0fh
    mov bh , 0x00
    mov CX  , 0ah 
    mov DX , 0ah
    int 10h
