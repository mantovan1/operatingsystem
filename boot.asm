[BITS 16]
[ORG 7C00h]

call LoadSystem

jmp 0800h:0000h

LoadSystem:
	mov ah, 02h
	mov al, 1
	mov ch, 0
	mov cl, 2
	mov dh, 0
	mov dl, 80h ; vai ler o primeiro disco na ordem de boot	
	mov bx, 0800h ; EX:BX = 0800h:0000h
	mov es, bx
	mov bx, 0000h
	int 13 ; capturar as configurações e ler
ret

jmp $

times 510 - ($-$$) db 0
dw 0xAA55
