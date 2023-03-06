; Output - result
_setup_mouse:
; setup 
  mov ax , 00
  int 33h 
  mov result , ax

_display_mouse:
  mov ax , 01h
  int 33h

; Output - button , row , col
_info_mouse: 
  mov ax , 03h
  int 33h
  mov button , bx 
  mov row , dx
  mov col , cx
