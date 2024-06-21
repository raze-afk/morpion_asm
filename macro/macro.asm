%macro exit 0
        mov rax, 60
        mov rdi, 0
        syscall
%endmacro

%macro jumpligne 0
    	mov rsi, alaligne
    	mov rdx, alalignelen
    	call _printText
%endmacro

%macro convertionToInt 2
	movzx rdi, byte [%1]
        sub rdi, '0'
        movzx rsi, byte [%2]
        sub rsi, '0'
%endmacro
