.code64
.global jump_to_kernel
jump_to_kernel:
	jmp	*%rsi
