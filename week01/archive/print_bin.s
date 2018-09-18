	.file	"print_bin.c"
	.globl	MASK
	.data
	.type	MASK, @object
	.size	MASK, 1
MASK:
	.byte	-128
	.section	.rodata
.LC0:
	.string	"%c%c"
	.text
	.globl	print_bin
	.type	print_bin, @function
print_bin:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L2
.L7:
	movl	-4(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L3
	movl	$32, %edx
	jmp	.L4
.L3:
	movl	$95, %edx
.L4:
	movzbl	MASK(%rip), %eax
	andb	-20(%rbp), %al
	testb	%al, %al
	je	.L5
	movl	$49, %eax
	jmp	.L6
.L5:
	movl	$48, %eax
.L6:
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
	salb	-20(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	$8, %eax
	jbe	.L7
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	print_bin, .-print_bin
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L9
.L10:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	print_bin
	addl	$1, -4(%rbp)
.L9:
	cmpl	$255, -4(%rbp)
	jle	.L10
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-4)"
	.section	.note.GNU-stack,"",@progbits
