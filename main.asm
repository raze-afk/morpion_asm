%include "macro/macro.asm"
%include "matrice/matrice.asm"
%include "basicfonction/basicfonction.asm"

section .data

;playeur 1 text
	playeur1x db 'playeur 1 x position', 0
	playeur1y db 'playeur 1 y position', 0 
	playeur1xlen equ 20
	playeur1ylen equ 20

;playeur 2 text
	playeur2x db 'playeur 2 x position', 0 
	playeur2y db 'playeur 2 y position', 0 
	playeur2xlen equ 20
	playeur2ylen equ 20

;formatage de text
	alaligne db 0x0A, 0
	alalignelen equ 1

section .bss
	
    playeur1xresp resb 1
    playeur1yresp resb 1

	playeur2xresp resb 1
	playeur2yresp resb 1


section .text
	global _start

_start:
	call _playeur1trune
	call _playeur2trune
	jmp _start
    	exit

_playeur1trune:
	mov rsi, playeur1x
        mov rdx, playeur1xlen
    	call _printText

        jumpligne

        mov rsi, playeur1xresp
        call _inputuser

        jumpligne

        mov rsi, playeur1y
        mov rdx, playeur1ylen
        call _printText

        jumpligne

        mov rsi, playeur1yresp
    	call _inputuser

        jumpligne

        ;search index in matrice
        convertionToInt playeur1xresp, playeur1yresp
    	call _checkPosition

_playeur2trune:
	jumpligne

        mov rsi, playeur2x
        mov rdx, playeur2xlen
        call _printText

        jumpligne

        mov rsi, playeur2xresp
        call _inputuser

        jumpligne

        mov rsi, playeur2y
        mov rdx, playeur2ylen
        call _printText

        jumpligne

        mov rsi, playeur2yresp
        call _inputuser

        jumpligne

        ;search idex in matrice
    	convertionToInt playeur2xresp, playeur2yresp
    	call _checkPosition

	jumpligne
