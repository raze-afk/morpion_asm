section .text
	global _printText
	global _inputuser

_printText:
        mov rax, 1
        mov rdi, 1
        syscall
        ret

_inputuser:
        mov rax, 0
        mov rdi, 0
        mov rdx, 16
        syscall
        ret

