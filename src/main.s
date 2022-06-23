	.file	"main.cpp"
	.text
	.section	.text._ZSt21is_constant_evaluatedv,"axG",@progbits,_ZSt21is_constant_evaluatedv,comdat
	.weak	_ZSt21is_constant_evaluatedv
	.type	_ZSt21is_constant_evaluatedv, @function
_ZSt21is_constant_evaluatedv:
.LFB264:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE264:
	.size	_ZSt21is_constant_evaluatedv, .-_ZSt21is_constant_evaluatedv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.align 2
	.type	_ZNK4ReLUIfEUlfE_clEf, @function
_ZNK4ReLUIfEUlfE_clEf:
.LFB3218:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L9
	movss	-12(%rbp), %xmm0
	jmp	.L7
.L9:
	pxor	%xmm0, %xmm0
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3218:
	.size	_ZNK4ReLUIfEUlfE_clEf, .-_ZNK4ReLUIfEUlfE_clEf
	.type	_ZN4ReLUIfEUlfE_4_FUNEf, @function
_ZN4ReLUIfEUlfE_4_FUNEf:
.LFB3219:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	movl	$0, %edi
	call	_ZNK4ReLUIfEUlfE_clEf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3219:
	.size	_ZN4ReLUIfEUlfE_4_FUNEf, .-_ZN4ReLUIfEUlfE_4_FUNEf
	.globl	main
	.type	main, @function
main:
.LFB3217:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3217
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	leaq	-52(%rbp), %rax
	movq	%rax, %r12
	movl	$3, %r13d
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfEC1Ev
	leaq	-81(%rbp), %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt6vectorIfSaIfEEC1ESt16initializer_listIfERKS0_
.LEHE0:
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8activateIfXadL_ZN4ReLUIfEUlfE_4_FUNEfEEEvRSt6vectorIT_SaIS4_EE
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	movl	(%rax), %eax
	movd	%eax, %xmm0
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSolsEf@PLT
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	movl	(%rax), %eax
	movd	%eax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEf@PLT
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	movl	(%rax), %eax
	movd	%eax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEf@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE1:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movl	$0, %eax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	jmp	.L19
.L17:
	movq	%rax, %rbx
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.L18:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE2:
.L19:
	call	__stack_chk_fail@PLT
.L16:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3217:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3217-.LLSDACSB3217
.LLSDACSB3217:
	.uleb128 .LEHB0-.LFB3217
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L17-.LFB3217
	.uleb128 0
	.uleb128 .LEHB1-.LFB3217
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L18-.LFB3217
	.uleb128 0
	.uleb128 .LEHB2-.LFB3217
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3217:
	.text
	.size	main, .-main
	.section	.text._ZNSaIfEC2Ev,"axG",@progbits,_ZNSaIfEC5Ev,comdat
	.align 2
	.weak	_ZNSaIfEC2Ev
	.type	_ZNSaIfEC2Ev, @function
_ZNSaIfEC2Ev:
.LFB3582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3582:
	.size	_ZNSaIfEC2Ev, .-_ZNSaIfEC2Ev
	.weak	_ZNSaIfEC1Ev
	.set	_ZNSaIfEC1Ev,_ZNSaIfEC2Ev
	.section	.text._ZNSaIfED2Ev,"axG",@progbits,_ZNSaIfED5Ev,comdat
	.align 2
	.weak	_ZNSaIfED2Ev
	.type	_ZNSaIfED2Ev, @function
_ZNSaIfED2Ev:
.LFB3585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3585:
	.size	_ZNSaIfED2Ev, .-_ZNSaIfED2Ev
	.weak	_ZNSaIfED1Ev
	.set	_ZNSaIfED1Ev,_ZNSaIfED2Ev
	.section	.text._ZNSt6vectorIfSaIfEEC2ESt16initializer_listIfERKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5ESt16initializer_listIfERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEEC2ESt16initializer_listIfERKS0_
	.type	_ZNSt6vectorIfSaIfEEC2ESt16initializer_listIfERKS0_, @function
_ZNSt6vectorIfSaIfEEC2ESt16initializer_listIfERKS0_:
.LFB3588:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3588
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIfE3endEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIfE5beginEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt6vectorIfSaIfEE19_M_range_initializeIPKfEEvT_S5_St20forward_iterator_tag
.LEHE3:
	jmp	.L26
.L25:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L26:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3588:
	.section	.gcc_except_table
.LLSDA3588:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3588-.LLSDACSB3588
.LLSDACSB3588:
	.uleb128 .LEHB3-.LFB3588
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L25-.LFB3588
	.uleb128 0
	.uleb128 .LEHB4-.LFB3588
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3588:
	.section	.text._ZNSt6vectorIfSaIfEEC2ESt16initializer_listIfERKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5ESt16initializer_listIfERKS0_,comdat
	.size	_ZNSt6vectorIfSaIfEEC2ESt16initializer_listIfERKS0_, .-_ZNSt6vectorIfSaIfEEC2ESt16initializer_listIfERKS0_
	.weak	_ZNSt6vectorIfSaIfEEC1ESt16initializer_listIfERKS0_
	.set	_ZNSt6vectorIfSaIfEEC1ESt16initializer_listIfERKS0_,_ZNSt6vectorIfSaIfEEC2ESt16initializer_listIfERKS0_
	.section	.text._ZNSt6vectorIfSaIfEED2Ev,"axG",@progbits,_ZNSt6vectorIfSaIfEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEED2Ev
	.type	_ZNSt6vectorIfSaIfEED2Ev, @function
_ZNSt6vectorIfSaIfEED2Ev:
.LFB3591:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3591
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3591:
	.section	.gcc_except_table
.LLSDA3591:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3591-.LLSDACSB3591
.LLSDACSB3591:
.LLSDACSE3591:
	.section	.text._ZNSt6vectorIfSaIfEED2Ev,"axG",@progbits,_ZNSt6vectorIfSaIfEED5Ev,comdat
	.size	_ZNSt6vectorIfSaIfEED2Ev, .-_ZNSt6vectorIfSaIfEED2Ev
	.weak	_ZNSt6vectorIfSaIfEED1Ev
	.set	_ZNSt6vectorIfSaIfEED1Ev,_ZNSt6vectorIfSaIfEED2Ev
	.text
	.type	_Z8activateIfXadL_ZN4ReLUIfEUlfE_4_FUNEfEEEvRSt6vectorIT_SaIS4_EE, @function
_Z8activateIfXadL_ZN4ReLUIfEUlfE_4_FUNEfEEEvRSt6vectorIT_SaIS4_EE:
.LFB3593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L29
.L30:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	movl	(%rax), %eax
	movd	%eax, %xmm0
	call	_ZN4ReLUIfEUlfE_4_FUNEf
	movd	%xmm0, %ebx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	movl	%ebx, (%rax)
	addl	$1, -20(%rbp)
.L29:
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIfSaIfEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L30
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3593:
	.size	_Z8activateIfXadL_ZN4ReLUIfEUlfE_4_FUNEfEEEvRSt6vectorIT_SaIS4_EE, .-_Z8activateIfXadL_ZN4ReLUIfEUlfE_4_FUNEfEEEvRSt6vectorIT_SaIS4_EE
	.section	.text._ZNSt6vectorIfSaIfEEixEm,"axG",@progbits,_ZNSt6vectorIfSaIfEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEEixEm
	.type	_ZNSt6vectorIfSaIfEEixEm, @function
_ZNSt6vectorIfSaIfEEixEm:
.LFB3594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3594:
	.size	_ZNSt6vectorIfSaIfEEixEm, .-_ZNSt6vectorIfSaIfEEixEm
	.section	.text._ZN9__gnu_cxx13new_allocatorIfEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIfEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIfEC2Ev:
.LFB3745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3745:
	.size	_ZN9__gnu_cxx13new_allocatorIfEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIfEC1Ev,_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev:
.LFB3749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3749:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIfSaIfEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	.type	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_, @function
_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_:
.LFB3751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3751:
	.size	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_, .-_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseIfSaIfEEC1ERKS0_
	.set	_ZNSt12_Vector_baseIfSaIfEEC1ERKS0_,_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEED2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEED2Ev, @function
_ZNSt12_Vector_baseIfSaIfEED2Ev:
.LFB3754:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3754
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3754:
	.section	.gcc_except_table
.LLSDA3754:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3754-.LLSDACSB3754
.LLSDACSB3754:
.LLSDACSE3754:
	.section	.text._ZNSt12_Vector_baseIfSaIfEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIfSaIfEED2Ev, .-_ZNSt12_Vector_baseIfSaIfEED2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEED1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEED1Ev,_ZNSt12_Vector_baseIfSaIfEED2Ev
	.section	.text._ZNKSt16initializer_listIfE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIfE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIfE5beginEv
	.type	_ZNKSt16initializer_listIfE5beginEv, @function
_ZNKSt16initializer_listIfE5beginEv:
.LFB3756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3756:
	.size	_ZNKSt16initializer_listIfE5beginEv, .-_ZNKSt16initializer_listIfE5beginEv
	.section	.text._ZNKSt16initializer_listIfE3endEv,"axG",@progbits,_ZNKSt16initializer_listIfE3endEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIfE3endEv
	.type	_ZNKSt16initializer_listIfE3endEv, @function
_ZNKSt16initializer_listIfE3endEv:
.LFB3757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIfE5beginEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIfE4sizeEv
	salq	$2, %rax
	addq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3757:
	.size	_ZNKSt16initializer_listIfE3endEv, .-_ZNKSt16initializer_listIfE3endEv
	.section	.text._ZSt8distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB3759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKfENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3759:
	.size	_ZSt8distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.text._ZNSt6vectorIfSaIfEE19_M_range_initializeIPKfEEvT_S5_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIfSaIfEE19_M_range_initializeIPKfEEvT_S5_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEE19_M_range_initializeIPKfEEvT_S5_St20forward_iterator_tag
	.type	_ZNSt6vectorIfSaIfEE19_M_range_initializeIPKfEEvT_S5_St20forward_iterator_tag, @function
_ZNSt6vectorIfSaIfEE19_M_range_initializeIPKfEEvT_S5_St20forward_iterator_tag:
.LFB3758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3758:
	.size	_ZNSt6vectorIfSaIfEE19_M_range_initializeIPKfEEvT_S5_St20forward_iterator_tag, .-_ZNSt6vectorIfSaIfEE19_M_range_initializeIPKfEEvT_S5_St20forward_iterator_tag
	.section	.text._ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv:
.LFB3760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3760:
	.size	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPffEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPffEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPffEvT_S1_RSaIT0_E:
.LFB3761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPfEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3761:
	.size	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	.section	.text._ZNKSt6vectorIfSaIfEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIfSaIfEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIfSaIfEE4sizeEv
	.type	_ZNKSt6vectorIfSaIfEE4sizeEv, @function
_ZNKSt6vectorIfSaIfEE4sizeEv:
.LFB3762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3762:
	.size	_ZNKSt6vectorIfSaIfEE4sizeEv, .-_ZNKSt6vectorIfSaIfEE4sizeEv
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_:
.LFB3859:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIfEC2ERKS_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3859:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.type	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm, @function
_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm:
.LFB3861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
.L52:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3861:
	.size	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm, .-_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.section	.text._ZNKSt16initializer_listIfE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIfE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIfE4sizeEv
	.type	_ZNKSt16initializer_listIfE4sizeEv, @function
_ZNKSt16initializer_listIfE4sizeEv:
.LFB3862:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3862:
	.size	_ZNKSt16initializer_listIfE4sizeEv, .-_ZNKSt16initializer_listIfE4sizeEv
	.section	.text._ZSt19__iterator_categoryIPKfENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKfENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKfENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKfENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKfENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB3863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3863:
	.size	_ZSt19__iterator_categoryIPKfENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKfENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB3864:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	sarq	$2, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3864:
	.size	_ZSt10__distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKfENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.rodata
	.align 8
.LC4:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_:
.LFB3865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIfEC1ERKS_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_
	cmpq	%rax, -40(%rbp)
	seta	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	testb	%bl, %bl
	je	.L60
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L60:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L62
	call	__stack_chk_fail@PLT
.L62:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3865:
	.size	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm:
.LFB3866:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	jmp	.L66
.L64:
	movl	$0, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3866:
	.size	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm, .-_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.section	.text._ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E:
.LFB3867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIPKfPfET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3867:
	.size	_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E
	.section	.text._ZSt8_DestroyIPfEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPfEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPfEvT_S1_
	.type	_ZSt8_DestroyIPfEvT_S1_, @function
_ZSt8_DestroyIPfEvT_S1_:
.LFB3868:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	_ZSt21is_constant_evaluatedv
	testb	%al, %al
	je	.L70
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPfEEvT_S3_
	jmp	.L69
.L70:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3868:
	.size	_ZSt8_DestroyIPfEvT_S1_, .-_ZSt8_DestroyIPfEvT_S1_
	.section	.text._ZNSaIfEC2ERKS_,"axG",@progbits,_ZNSaIfEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIfEC2ERKS_
	.type	_ZNSaIfEC2ERKS_, @function
_ZNSaIfEC2ERKS_:
.LFB3949:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3949:
	.size	_ZNSaIfEC2ERKS_, .-_ZNSaIfEC2ERKS_
	.weak	_ZNSaIfEC1ERKS_
	.set	_ZNSaIfEC1ERKS_,_ZNSaIfEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev:
.LFB3952:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3952:
	.size	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm,"axG",@progbits,_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm,comdat
	.weak	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
	.type	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm, @function
_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm:
.LFB3954:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	_ZSt21is_constant_evaluatedv
	testb	%al, %al
	je	.L75
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	jmp	.L76
.L75:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	nop
.L76:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3954:
	.size	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm, .-_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
	.section	.text._ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_:
.LFB3956:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$4611686018427387903, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3956:
	.size	_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_
	.section	.text._ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_:
.LFB3955:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$2305843009213693951, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3955:
	.size	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_
	.section	.text._ZNSt16allocator_traitsISaIfEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIfEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIfEE8allocateERS0_m:
.LFB3957:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	_ZSt21is_constant_evaluatedv
	testb	%al, %al
	je	.L83
	movq	-8(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	jmp	.L84
.L83:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	nop
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3957:
	.size	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	.section	.text._ZSt18uninitialized_copyIPKfPfET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyIPKfPfET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyIPKfPfET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyIPKfPfET0_T_S4_S3_, @function
_ZSt18uninitialized_copyIPKfPfET0_T_S4_S3_:
.LFB3958:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKfPfEET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3958:
	.size	_ZSt18uninitialized_copyIPKfPfET0_T_S4_S3_, .-_ZSt18uninitialized_copyIPKfPfET0_T_S4_S3_
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPfEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPfEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPfEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPfEEvT_S3_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIPfEEvT_S3_:
.LFB3960:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L89
.L90:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIfEPT_RS0_
	movq	%rax, %rdi
	call	_ZSt8_DestroyIfEvPT_
	addq	$4, -8(%rbp)
.L89:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L90
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3960:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPfEEvT_S3_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPfEEvT_S3_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_:
.LFB3961:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3961:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_:
.LFB4042:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4042:
	.size	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIfEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB4045:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L94
	movq	-16(%rbp), %rax
	jmp	.L95
.L94:
	movq	-8(%rbp), %rax
.L95:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4045:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKfPfEET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKfPfEET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKfPfEET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKfPfEET0_T_S6_S5_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKfPfEET0_T_S6_S5_:
.LFB4047:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKfPfET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4047:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKfPfEET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKfPfEET0_T_S6_S5_
	.section	.text._ZSt11__addressofIfEPT_RS0_,"axG",@progbits,_ZSt11__addressofIfEPT_RS0_,comdat
	.weak	_ZSt11__addressofIfEPT_RS0_
	.type	_ZSt11__addressofIfEPT_RS0_, @function
_ZSt11__addressofIfEPT_RS0_:
.LFB4048:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4048:
	.size	_ZSt11__addressofIfEPT_RS0_, .-_ZSt11__addressofIfEPT_RS0_
	.section	.text._ZSt8_DestroyIfEvPT_,"axG",@progbits,_ZSt8_DestroyIfEvPT_,comdat
	.weak	_ZSt8_DestroyIfEvPT_
	.type	_ZSt8_DestroyIfEvPT_, @function
_ZSt8_DestroyIfEvPT_:
.LFB4049:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt10destroy_atIfEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4049:
	.size	_ZSt8_DestroyIfEvPT_, .-_ZSt8_DestroyIfEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	.type	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm, @function
_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm:
.LFB4085:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4085:
	.size	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm, .-_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	.section	.text._ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv:
.LFB4087:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4087:
	.size	_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv:
.LFB4086:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L106
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L107
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L107:
	call	_ZSt17__throw_bad_allocv@PLT
.L106:
	movq	-16(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4086:
	.size	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	.section	.text._ZSt4copyIPKfPfET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKfPfET0_T_S4_S3_,comdat
	.weak	_ZSt4copyIPKfPfET0_T_S4_S3_
	.type	_ZSt4copyIPKfPfET0_T_S4_S3_, @function
_ZSt4copyIPKfPfET0_T_S4_S3_:
.LFB4088:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKfET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKfET_S2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPKfPfET1_T0_S4_S3_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4088:
	.size	_ZSt4copyIPKfPfET0_T_S4_S3_, .-_ZSt4copyIPKfPfET0_T_S4_S3_
	.section	.text._ZSt10destroy_atIfEvPT_,"axG",@progbits,_ZSt10destroy_atIfEvPT_,comdat
	.weak	_ZSt10destroy_atIfEvPT_
	.type	_ZSt10destroy_atIfEvPT_, @function
_ZSt10destroy_atIfEvPT_:
.LFB4089:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4089:
	.size	_ZSt10destroy_atIfEvPT_, .-_ZSt10destroy_atIfEvPT_
	.section	.text._ZSt12__miter_baseIPKfET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKfET_S2_,comdat
	.weak	_ZSt12__miter_baseIPKfET_S2_
	.type	_ZSt12__miter_baseIPKfET_S2_, @function
_ZSt12__miter_baseIPKfET_S2_:
.LFB4106:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4106:
	.size	_ZSt12__miter_baseIPKfET_S2_, .-_ZSt12__miter_baseIPKfET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPKfPfET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKfPfET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKfPfET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKfPfET1_T0_S4_S3_, @function
_ZSt13__copy_move_aILb0EPKfPfET1_T0_S4_S3_:
.LFB4107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPfET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKfET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKfET_S2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPfET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4107:
	.size	_ZSt13__copy_move_aILb0EPKfPfET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKfPfET1_T0_S4_S3_
	.section	.text._ZSt12__niter_baseIPKfET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKfET_S2_,comdat
	.weak	_ZSt12__niter_baseIPKfET_S2_
	.type	_ZSt12__niter_baseIPKfET_S2_, @function
_ZSt12__niter_baseIPKfET_S2_:
.LFB4118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4118:
	.size	_ZSt12__niter_baseIPKfET_S2_, .-_ZSt12__niter_baseIPKfET_S2_
	.section	.text._ZSt12__niter_baseIPfET_S1_,"axG",@progbits,_ZSt12__niter_baseIPfET_S1_,comdat
	.weak	_ZSt12__niter_baseIPfET_S1_
	.type	_ZSt12__niter_baseIPfET_S1_, @function
_ZSt12__niter_baseIPfET_S1_:
.LFB4119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4119:
	.size	_ZSt12__niter_baseIPfET_S1_, .-_ZSt12__niter_baseIPfET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_:
.LFB4120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4120:
	.size	_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPfET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPfET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPfET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPfET_RKS1_S1_, @function
_ZSt12__niter_wrapIPfET_RKS1_S1_:
.LFB4121:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4121:
	.size	_ZSt12__niter_wrapIPfET_RKS1_S1_, .-_ZSt12__niter_wrapIPfET_RKS1_S1_
	.section	.text._ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_:
.LFB4122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	call	_ZSt21is_constant_evaluatedv
	testb	%al, %al
	je	.L125
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKfPfEET0_T_S7_S6_
	jmp	.L126
.L125:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_
	nop
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4122:
	.size	_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKfPfEET0_T_S7_S6_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKfPfEET0_T_S7_S6_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKfPfEET0_T_S7_S6_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKfPfEET0_T_S7_S6_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKfPfEET0_T_S7_S6_:
.LFB4123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.L128
.L129:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -24(%rbp)
	addq	$4, -40(%rbp)
	subq	$1, -8(%rbp)
.L128:
	cmpq	$0, -8(%rbp)
	jg	.L129
	movq	-40(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4123:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKfPfEET0_T_S7_S6_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKfPfEET0_T_S7_S6_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_:
.LFB4124:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L132
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L132:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4124:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB4125:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L136
	cmpl	$65535, -8(%rbp)
	jne	.L136
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L136:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4125:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.data.rel.ro.local,"aw"
	.align 8
	.type	_Z4ReLUIfE, @object
	.size	_Z4ReLUIfE, 8
_Z4ReLUIfE:
	.quad	_Z8activateIfXadL_ZN4ReLUIfEUlfE_4_FUNEfEEEvRSt6vectorIT_SaIS4_EE
	.text
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB4126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4126:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1077936128
	.align 4
.LC3:
	.long	-1082130432
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
