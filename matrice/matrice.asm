section .data
;position matrice
	matrice db "1","2","3","4","5","6","7","8","9"

section .bss
        char_buffer resb 1
        p1status resb 16
        p2status resb 16
        p4status resb 16
        p5status resb 16
        p6status resb 16
        p7status resb 16
        p8status resb 16
        p9status resb 16


section .text
	global _checkPosition

_checkPosition:
	; mov rdi, x
	; mov rsi, y
	mov rbx, 3

	;calcule de l'index
	mov rax, rdi
	imul rax, rbx
	add rax, rsi

	movzx rsi, byte [matrice + rax]
    mov rdx, 1
    call _printText
	syscall
    ret

