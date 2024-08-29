
org 100h
num1 db 24h
num2 db 21h
start:
mov al,num1
sub al,num2
mov bl,al
mov ah,al
and ah,0f0h
shr ah,4
add ah,30h
cmp ah,39h
jle print_first_digit
add ah,7
print_first_digit:
mov dl,ah
mov ah,02h
int 21h
mov ah,bl
and ah,0Fh
add ah,30h
cmp ah,39h
jle print_second_digit
add ah,7
print_second_digit:
mov dl,ah
mov ah,02h
int 21h
mov ah,4Ch
int 21h




