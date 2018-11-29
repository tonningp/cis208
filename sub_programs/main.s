	.file	"main.c"
	.text
	.globl	add
	.type	add, @function
add:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.globl	MyFunction1
	.type	MyFunction1, @function
MyFunction1:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	movl	%edx, -8(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	16(%ebp), %edx
	movl	%edx, -16(%ebp)
	movl	20(%ebp), %edx
	movl	%edx, -12(%ebp)
	fldl	-8(%ebp)
	fld1
	faddp	%st, %st(1)
	fldl	-16(%ebp)
	fldl	.LC1@GOTOFF(%eax)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	flds	24(%ebp)
	fldl	.LC2@GOTOFF(%eax)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	MyFunction1, .-MyFunction1
	.globl	MyFunction2
	.type	MyFunction2, @function
MyFunction2:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	movl	%edx, -8(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	16(%ebp), %edx
	movl	%edx, -16(%ebp)
	movl	20(%ebp), %edx
	movl	%edx, -12(%ebp)
	fldl	-8(%ebp)
	fld1
	faddp	%st, %st(1)
	fldl	-16(%ebp)
	fldl	.LC1@GOTOFF(%eax)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	flds	24(%ebp)
	fldl	.LC2@GOTOFF(%eax)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	MyFunction2, .-MyFunction2
	.globl	MyFunction3
	.type	MyFunction3, @function
MyFunction3:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	movl	%edx, -8(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	16(%ebp), %edx
	movl	%edx, -16(%ebp)
	movl	20(%ebp), %edx
	movl	%edx, -12(%ebp)
	fldl	-8(%ebp)
	fld1
	faddp	%st, %st(1)
	fldl	-16(%ebp)
	fldl	.LC1@GOTOFF(%eax)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	flds	24(%ebp)
	fldl	.LC2@GOTOFF(%eax)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	MyFunction3, .-MyFunction3
	.section	.rodata
.LC3:
	.string	"%d %d %d %d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$16, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	pushl	$20
	pushl	$10
	call	add
	addl	$8, %esp
	movl	%eax, -12(%ebp)
	subl	$8, %esp
	pushl	$4
	pushl	$3
	pushl	$2
	pushl	$1
	pushl	-12(%ebp)
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$32, %esp
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.align 8
.LC2:
	.long	0
	.long	1074266112
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB5:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE5:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB6:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE6:
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
