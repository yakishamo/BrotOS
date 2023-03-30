bits 64
section .text

global IoOut32
IoOut32:
	mov dx, di
	mov eax, esi
	out dx, eax
	ret

global IoIn32
IoIn32:
	mov dx, di
	in eax, dx
	ret

global IoIn16
IoIn16:
	mov dx, di
	in ax, dx
	ret

global IoOut8
IoOut8:
	mov dx, di
	mov al, sil
	out dx, al
	ret

global IoIn8
IoIn8:
	mov dx, di
	in al, dx
	ret

global call_kernel_main
call_kernel_main:
	lea rsp, [rdx + 1024 * 1024]
	lea rbp, [rdx + 1024 * 1024]
	call rsi
_hlt:
	hlt
	jmp _hlt 

global LoadGDT
LoadGDT:
	push rbp
	mov rbp, rsp
	sub rsp, 10
	mov [rsp], di
	mov [rsp+2], rsi
	lgdt [rsp]
	mov rsp, rbp
	pop rbp
	ret

global SetDSAll
SetDSAll:
	mov ds, di
	mov es, di
	mov fs, di
	mov gs, di
	ret

global SetCSSS
SetCSSS:
    push rbp
    mov rbp, rsp
    mov ss, si
		mov rax, .next
		push rdi
    push rax
    o64 retf
.next:
    mov rsp, rbp
    pop rbp
    ret
.stop:
		hlt
		jmp .stop

global GetCS
GetCS:
    xor eax, eax
    mov ax, cs
    ret

global LoadIDT
LoadIDT:
    push rbp
    mov rbp, rsp
    sub rsp, 10
    mov [rsp], di
    mov [rsp + 2], rsi
    lidt [rsp]
    mov rsp, rbp
    pop rbp
    ret

global SetCR3
SetCR3:
	mov cr3, rdi
	ret

global NotifyEndOfInterrupt
NotifyEndOfInterrupt:
	mov rax, 0xfee000b0
	mov QWORD [rax], 0x0
	sti
	ret

global rdtsc
rdtsc:
	push rbp
	mov rbp, rsp
	mov rax, 0
	mov rdx, 0
	cpuid
	rdtsc
	sal rdx, 32
	add rax, rdx
	mov rsp, rbp
	pop rbp
	ret
