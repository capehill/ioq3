	.file	"code/qcommon/msg.c"

	.global	@__MSG_Init
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_Init
_MSG_Init:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r31,36(r1)
	mr	r31,r3
	stw	r11,56(r1)
	stw	r4,76(r1)
	stw	r5,80(r1)
	lwz	r11,l5(r2)
	cmpwi	cr0,r11,0
	bne	cr0,l9
	bl	_MSG_initHuffman
l9:
	li	r4,0
	mr	r3,r31
	li	r5,32
	bl	_memset
	lwz	r11,76(r1)
	stw	r11,12(r31)
	lwz	r11,80(r1)
	stw	r11,16(r31)
	lwz	r11,56(r1)
	lwz	r31,36(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_Init,@function
	.size	_MSG_Init,$-_MSG_Init
# stacksize=48+??
	.global	@__MSG_InitOOB
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_InitOOB
_MSG_InitOOB:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r31,36(r1)
	mr	r31,r3
	stw	r11,56(r1)
	stw	r4,76(r1)
	stw	r5,80(r1)
	lwz	r11,l5(r2)
	cmpwi	cr0,r11,0
	bne	cr0,l13
	bl	_MSG_initHuffman
l13:
	li	r4,0
	mr	r3,r31
	li	r5,32
	bl	_memset
	lwz	r11,76(r1)
	stw	r11,12(r31)
	lwz	r11,80(r1)
	stw	r11,16(r31)
	li	r11,1
	stw	r11,8(r31)
	lwz	r11,56(r1)
	lwz	r31,36(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_InitOOB,@function
	.size	_MSG_InitOOB,$-_MSG_InitOOB
# stacksize=48+??
	.global	@__MSG_Clear
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_Clear
_MSG_Clear:
	li	r9,0
	stw	r9,20(r3)
	stw	r9,4(r3)
	stw	r9,28(r3)
	blr
	.type	_MSG_Clear,@function
	.size	_MSG_Clear,$-_MSG_Clear
# stacksize=0
	.set	___stack_MSG_Clear,0
	.global	@__MSG_Bitstream
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_Bitstream
_MSG_Bitstream:
	li	r11,0
	stw	r11,8(r3)
	blr
	.type	_MSG_Bitstream,@function
	.size	_MSG_Bitstream,$-_MSG_Bitstream
# stacksize=0
	.set	___stack_MSG_Bitstream,0
	.global	@__MSG_BeginReading
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_BeginReading
_MSG_BeginReading:
	li	r9,0
	stw	r9,24(r3)
	stw	r9,28(r3)
	stw	r9,8(r3)
	blr
	.type	_MSG_BeginReading,@function
	.size	_MSG_BeginReading,$-_MSG_BeginReading
# stacksize=0
	.set	___stack_MSG_BeginReading,0
	.global	@__MSG_BeginReadingOOB
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_BeginReadingOOB
_MSG_BeginReadingOOB:
	li	r9,0
	li	r11,1
	stw	r9,24(r3)
	stw	r9,28(r3)
	stw	r11,8(r3)
	blr
	.type	_MSG_BeginReadingOOB,@function
	.size	_MSG_BeginReadingOOB,$-_MSG_BeginReadingOOB
# stacksize=0
	.set	___stack_MSG_BeginReadingOOB,0
	.global	@__MSG_Copy
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_Copy
_MSG_Copy:
	mflr	r11
	mr	r10,r5
	stwu	r1,-48(r1)
	stw	r30,36(r1)
	mr	r30,r4
	stw	r31,40(r1)
	stw	r11,56(r1)
	stw	r3,72(r1)
	stw	r6,84(r1)
	lwz	r11,84(r1)
	addi	r31,r11,20
	lwz	r12,0(r31)
	cmpw	cr0,r10,r12
	bge	cr0,l25
	li	r3,1
	lwz	r4,@_l26(r2)
	bl	_Com_Error
l25:
	mr	r3,r30
	lwz	r11,84(r1)
	lwz	r12,72(r1)
	addi	r11,r11,-4
	addi	r12,r12,-4
	lwz	r0,4(r11)
	stw	r0,4(r12)
	lwz	r0,8(r11)
	stw	r0,8(r12)
	lwz	r0,12(r11)
	stw	r0,12(r12)
	lwz	r0,16(r11)
	stw	r0,16(r12)
	lwz	r0,20(r11)
	stw	r0,20(r12)
	lwz	r0,24(r11)
	stw	r0,24(r12)
	lwz	r0,28(r11)
	stw	r0,28(r12)
	lwzu	r0,32(r11)
	stwu	r0,32(r12)
	lwz	r10,72(r1)
	stw	r30,12(r10)
	lwz	r9,84(r1)
	lwz	r10,0(r31)
	lwz	r9,12(r9)
	mr	r5,r10
	mr	r4,r9
	bl	_memcpy
	lwz	r11,56(r1)
	lwz	r30,36(r1)
	lwz	r31,40(r1)
	mtlr	r11
	addi	r1,r1,48
	blr
	.type	_MSG_Copy,@function
	.size	_MSG_Copy,$-_MSG_Copy
# stacksize=48+??
	.tocd
	.align	2
@_l26:
	.long	l26
	.section	.rodata
	.align	2
	.type	l26,@object
	.size	l26,49
	.align	2
l26:
	.byte	77
	.byte	83
	.byte	71
	.byte	95
	.byte	67
	.byte	111
	.byte	112
	.byte	121
	.byte	58
	.byte	32
	.byte	99
	.byte	97
	.byte	110
	.byte	39
	.byte	116
	.byte	32
	.byte	99
	.byte	111
	.byte	112
	.byte	121
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	111
	.byte	32
	.byte	97
	.byte	32
	.byte	115
	.byte	109
	.byte	97
	.byte	108
	.byte	108
	.byte	101
	.byte	114
	.byte	32
	.byte	109
	.byte	115
	.byte	103
	.byte	95
	.byte	116
	.byte	32
	.byte	98
	.byte	117
	.byte	102
	.byte	102
	.byte	101
	.byte	114
	.byte	0
	.global	@__MSG_WriteBits
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteBits
_MSG_WriteBits:
	mflr	r11
	stwu	r1,-96(r1)
	stw	r19,44(r1)
	li	r19,1
	stw	r20,48(r1)
	stw	r21,52(r1)
	stw	r22,56(r1)
	stw	r23,60(r1)
	stw	r24,64(r1)
	stw	r25,68(r1)
	stw	r26,72(r1)
	stw	r27,76(r1)
	stw	r28,80(r1)
	mr	r28,r3
	stw	r29,84(r1)
	addi	r25,r28,4
	mr	r29,r5
	stw	r30,88(r1)
	mr	r30,r4
	stw	r31,92(r1)
	stw	r11,104(r1)
	lwz	r12,_oldsize(r2)
	add	r0,r29,r12
	stw	r0,_oldsize(r2)
	lwz	r11,0(r25)
	cmpwi	cr0,r11,0
	bne	cr0,l52
	cmpwi	cr0,r29,0
	beq	cr0,l31
	cmpwi	cr0,r29,-31
	blt	cr0,l31
	cmpwi	cr0,r29,32
	ble	cr0,l32
l31:
	mr	r3,r19
	stw	r29,32(r1)
	lwz	r4,@_l35(r2)
	bl	_Com_Error
l32:
	cmpwi	cr0,r29,0
	bge	cr0,l37
	neg	r29,r29
l37:
	lwz	r11,8(r28)
	cmpwi	cr0,r11,0
	beq	cr0,l39
	addi	r26,r28,20
	srawi	r9,r29,3&31
	lwz	r12,16(r28)
	lwz	r8,0(r26)
	add	r9,r9,r8
	cmpw	cr0,r9,r12
	ble	cr0,l41
	stw	r19,0(r25)
	b	l52
l41:
	cmpwi	cr0,r29,8
	bne	cr0,l43
	lwz	r10,12(r28)
	stbx	r30,r8,r10
	addi	r10,r28,28
	lwz	r11,0(r26)
	add	r0,r11,r19
	stw	r0,0(r26)
	lwz	r11,0(r10)
	addi	r0,r11,8
	stw	r0,0(r10)
	b	l52
l43:
	cmpwi	cr0,r29,16
	bne	cr0,l46
	mr	r4,r30
	lwz	r11,12(r28)
	add	r31,r11,r8
	rlwinm	0,4,8,16,24
	rlwimi	0,4,24,24,31
	extsh	3,0
	addi	r10,r28,28
	extsh	r0,r3
	sth	r0,0(r31)
	lwz	r11,0(r26)
	addi	r0,r11,2
	stw	r0,0(r26)
	lwz	r11,0(r10)
	addi	r0,r11,16
	stw	r0,0(r10)
	b	l52
l46:
	cmpwi	cr0,r29,32
	bne	cr0,l49
	mr	r4,r30
	lwz	r11,12(r28)
	add	r31,r11,r8
	rlwinm	3,4,24,0,31
	rlwimi	3,4,8,8,15
	rlwimi	3,4,8,24,31
	addi	r10,r28,28
	stw	r3,0(r31)
	lwz	r11,0(r26)
	addi	r0,r11,4
	stw	r0,0(r26)
	lwz	r11,0(r10)
	addi	r0,r11,32
	stw	r0,0(r10)
	b	l52
l49:
	mr	r3,r19
	stw	r29,32(r1)
	lwz	r4,@_l51(r2)
	bl	_Com_Error
	b	l52
l39:
	li	r11,-1
	subfic	r10,r29,32
	srw	r10,r11,r10
	mr	r9,r30
	and	r10,r9,r10
	mr	r30,r10
	andi.	r21,r29,7
	beq	cr0,l54
	addi	r20,r28,28
	lwz	r11,16(r28)
	lwz	r12,0(r20)
	slwi	r10,r11,3&31
	add	r9,r21,r12
	cmpw	cr0,r9,r10
	ble	cr0,l56
	stw	r19,0(r25)
	b	l52
l56:
	li	r31,0
	cmpwi	cr0,r21,0
	ble	cr0,l77
	addi	r22,r28,12
l75:
	and	r9,r30,r19
	lwz	r10,0(r22)
	mr	r3,r9
	mr	r5,r20
	mr	r4,r10
	bl	_Huff_putBit
	add	r31,r31,r19
	sraw	r30,r30,r19
	cmpw	cr0,r31,r21
	blt	cr0,l75
l77:
	sub	r29,r29,r21
l54:
	cmpwi	cr0,r29,0
	beq	cr0,l78
	li	r31,0
	cmpwi	cr0,r29,0
	ble	cr0,l78
	addi	r23,r28,12
	addi	r24,r28,28
	addi	r27,r28,16
l76:
	andi.	r8,r30,255
	lwz	r11,0(r27)
	mr	r4,r8
	lwz	r9,0(r23)
	mr	r6,r24
	lwz	r3,@_l4(r2)
	slwi	r10,r11,3&31
	mr	r5,r9
	mr	r7,r10
	bl	_Huff_offsetTransmit
	srawi	r30,r30,8&31
	lwz	r11,0(r27)
	slwi	r10,r11,3&31
	lwz	r11,0(r24)
	cmpw	cr0,r11,r10
	ble	cr0,l68
	stw	r19,0(r25)
	b	l52
l68:
	addi	r31,r31,8
	cmpw	cr0,r31,r29
	blt	cr0,l76
l78:
	lwz	r11,28(r28)
	srawi	r9,r11,3&31
	add	r9,r9,r19
	stw	r9,20(r28)
l52:
	lwz	r11,104(r1)
	lwz	r19,44(r1)
	lwz	r20,48(r1)
	mtlr	r11
	lwz	r21,52(r1)
	lwz	r22,56(r1)
	lwz	r23,60(r1)
	lwz	r24,64(r1)
	lwz	r25,68(r1)
	lwz	r26,72(r1)
	lwz	r27,76(r1)
	lwz	r28,80(r1)
	lwz	r29,84(r1)
	lwz	r30,88(r1)
	lwz	r31,92(r1)
	addi	r1,r1,96
	blr
	.type	_MSG_WriteBits,@function
	.size	_MSG_WriteBits,$-_MSG_WriteBits
# stacksize=96+??
	.tocd
	.align	2
@_l35:
	.long	l35
	.section	.rodata
	.align	2
	.type	l35,@object
	.size	l35,27
	.align	2
l35:
	.byte	77
	.byte	83
	.byte	71
	.byte	95
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	66
	.byte	105
	.byte	116
	.byte	115
	.byte	58
	.byte	32
	.byte	98
	.byte	97
	.byte	100
	.byte	32
	.byte	98
	.byte	105
	.byte	116
	.byte	115
	.byte	32
	.byte	37
	.byte	105
	.byte	0
	.tocd
	.align	2
@_l51:
	.long	l51
	.section	.rodata
	.align	2
	.type	l51,@object
	.size	l51,20
	.align	2
l51:
	.byte	99
	.byte	97
	.byte	110
	.byte	39
	.byte	116
	.byte	32
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	32
	.byte	37
	.byte	100
	.byte	32
	.byte	98
	.byte	105
	.byte	116
	.byte	115
	.byte	10
	.byte	0
	.global	@__MSG_ReadBits
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadBits
_MSG_ReadBits:
	mflr	r11
	stwu	r1,-112(r1)
	stw	r16,48(r1)
	stw	r17,52(r1)
	stw	r18,56(r1)
	stw	r19,60(r1)
	stw	r20,64(r1)
	stw	r21,68(r1)
	stw	r22,72(r1)
	stw	r23,76(r1)
	stw	r24,80(r1)
	stw	r25,84(r1)
	stw	r26,88(r1)
	mr	r26,r3
	stw	r27,92(r1)
	addi	r27,r26,20
	stw	r28,96(r1)
	mr	r28,r4
	stw	r29,100(r1)
	stw	r30,104(r1)
	addi	r30,r26,24
	stw	r31,108(r1)
	stw	r11,120(r1)
	lwz	r9,0(r30)
	lwz	r20,0(r27)
	cmpw	cr0,r9,r20
	ble	cr0,l82
	li	r3,0
	b	l79
l82:
	li	r29,0
	cmpwi	cr0,r28,0
	bge	cr0,l84
	li	r16,1
	neg	r28,r28
	b	l85
l84:
	li	r16,0
l85:
	lwz	r11,8(r26)
	cmpwi	cr0,r11,0
	beq	cr0,l87
	srawi	r10,r28,3&31
	add	r10,r10,r9
	cmpw	cr0,r10,r20
	ble	cr0,l89
	addi	r0,r20,1
	li	r3,0
	stw	r0,0(r30)
	b	l79
l89:
	cmpwi	cr0,r28,8
	bne	cr0,l91
	addi	r0,r9,1
	lwz	r10,12(r26)
	lbzx	r29,r9,r10
	addi	r10,r26,28
	stw	r0,0(r30)
	lwz	r11,0(r10)
	addi	r0,r11,8
	stw	r0,0(r10)
	b	l100
l91:
	cmpwi	cr0,r28,16
	bne	cr0,l94
	lwz	r10,12(r26)
	lhzx	r4,r9,r10
	rlwinm	0,4,8,16,24
	rlwimi	0,4,24,24,31
	extsh	3,0
	addi	r10,r26,28
	extsh	r29,r3
	lwz	r11,0(r30)
	addi	r0,r11,2
	stw	r0,0(r30)
	lwz	r11,0(r10)
	addi	r0,r11,16
	stw	r0,0(r10)
	b	l100
l94:
	cmpwi	cr0,r28,32
	bne	cr0,l97
	lwz	r10,12(r26)
	lwzx	r4,r9,r10
	rlwinm	3,4,24,0,31
	rlwimi	3,4,8,8,15
	rlwimi	3,4,8,24,31
	addi	r10,r26,28
	mr	r29,r3
	lwz	r11,0(r30)
	addi	r0,r11,4
	stw	r0,0(r30)
	lwz	r11,0(r10)
	addi	r0,r11,32
	stw	r0,0(r10)
	b	l100
l97:
	li	r3,1
	stw	r28,32(r1)
	lwz	r4,@_l99(r2)
	bl	_Com_Error
	b	l100
l87:
	li	r17,0
	andi.	r23,r28,7
	beq	cr0,l102
	addi	r19,r26,28
	mr	r17,r23
	slwi	r10,r20,3&31
	lwz	r12,0(r19)
	add	r9,r23,r12
	cmpw	cr0,r9,r10
	ble	cr0,l104
	addi	r0,r20,1
	li	r3,0
	stw	r0,0(r30)
	b	l79
l104:
	li	r31,0
	cmpwi	cr0,r23,0
	ble	cr0,l133
	addi	r22,r26,12
l131:
	mr	r4,r19
	lwz	r3,0(r22)
	bl	_Huff_getBit
	mr	r10,r3
	slw	r10,r10,r31
	addi	r31,r31,1
	or	r29,r10,r29
	cmpw	cr0,r31,r23
	blt	cr0,l131
l133:
	sub	r28,r28,r23
l102:
	cmpwi	cr0,r28,0
	beq	cr0,l134
	li	r31,0
	cmpwi	cr0,r28,0
	ble	cr0,l134
	addi	r18,r1,44
	addi	r21,r26,12
	addi	r25,r26,28
	mr	r24,r17
l132:
	mr	r4,r18
	lwz	r11,0(r27)
	mr	r6,r25
	lwz	r9,0(r21)
	slwi	r10,r11,3&31
	mr	r5,r9
	lwz	r11,@_l4(r2)
	mr	r7,r10
	lwz	r3,28708(r11)
	bl	_Huff_offsetReceive
	lwz	r11,44(r1)
	lwz	r8,0(r27)
	slw	r10,r11,r24
	or	r29,r10,r29
	lwz	r11,0(r25)
	slwi	r10,r8,3&31
	cmpw	cr0,r11,r10
	ble	cr0,l116
	addi	r0,r8,1
	li	r3,0
	stw	r0,0(r30)
	b	l79
l116:
	addi	r31,r31,8
	addi	r24,r24,8
	cmpw	cr0,r31,r28
	blt	cr0,l132
l134:
	lwz	r11,28(r26)
	srawi	r10,r11,3&31
	addi	r0,r10,1
	stw	r0,0(r30)
l100:
	cmpwi	cr0,r16,0
	beq	cr0,l122
	cmpwi	cr0,r28,0
	ble	cr0,l122
	cmpwi	cr0,r28,32
	bge	cr0,l122
	addi	r10,r28,-1
	li	r11,1
	slw	r10,r11,r10
	and.	r10,r10,r29
	beq	cr0,l122
	li	r11,1
	li	r12,-1
	slw	r10,r11,r28
	addi	r10,r10,-1
	xor	r10,r10,r12
	or	r29,r10,r29
l122:
	mr	r3,r29
l79:
	lwz	r11,120(r1)
	lwz	r16,48(r1)
	lwz	r17,52(r1)
	mtlr	r11
	lwz	r18,56(r1)
	lwz	r19,60(r1)
	lwz	r20,64(r1)
	lwz	r21,68(r1)
	lwz	r22,72(r1)
	lwz	r23,76(r1)
	lwz	r24,80(r1)
	lwz	r25,84(r1)
	lwz	r26,88(r1)
	lwz	r27,92(r1)
	lwz	r28,96(r1)
	lwz	r29,100(r1)
	lwz	r30,104(r1)
	lwz	r31,108(r1)
	addi	r1,r1,112
	blr
	.type	_MSG_ReadBits,@function
	.size	_MSG_ReadBits,$-_MSG_ReadBits
# stacksize=112+??
	.tocd
	.align	2
@_l99:
	.long	l99
	.section	.rodata
	.align	2
	.type	l99,@object
	.size	l99,20
	.align	2
l99:
	.byte	99
	.byte	97
	.byte	110
	.byte	39
	.byte	116
	.byte	32
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	32
	.byte	37
	.byte	100
	.byte	32
	.byte	98
	.byte	105
	.byte	116
	.byte	115
	.byte	10
	.byte	0
	.global	@__MSG_WriteChar
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteChar
_MSG_WriteChar:
	mflr	r11
	mr	r10,r3
	stwu	r1,-48(r1)
	li	r5,8
	mr	r9,r4
	mr	r3,r10
	mr	r4,r9
	stw	r11,56(r1)
	bl	_MSG_WriteBits
	lwz	r11,56(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteChar,@function
	.size	_MSG_WriteChar,$-_MSG_WriteChar
# stacksize=48+??
	.global	@__MSG_WriteByte
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteByte
_MSG_WriteByte:
	mflr	r11
	mr	r10,r3
	stwu	r1,-48(r1)
	li	r5,8
	mr	r9,r4
	mr	r3,r10
	mr	r4,r9
	stw	r11,56(r1)
	bl	_MSG_WriteBits
	lwz	r11,56(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteByte,@function
	.size	_MSG_WriteByte,$-_MSG_WriteByte
# stacksize=48+??
	.global	@__MSG_WriteData
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteData
_MSG_WriteData:
	mflr	r11
	mr	r10,r4
	stwu	r1,-48(r1)
	stw	r28,32(r1)
	mr	r28,r3
	stw	r29,36(r1)
	mr.	r29,r5
	stw	r30,40(r1)
	li	r30,0
	stw	r31,44(r1)
	stw	r11,56(r1)
	ble	cr0,l149
	mr	r31,r10
l148:
	mr	r3,r28
	lbz	r10,0(r31)
	mr	r4,r10
	bl	_MSG_WriteByte
	addi	r30,r30,1
	addi	r31,r31,1
	cmpw	cr0,r30,r29
	blt	cr0,l148
l149:
	lwz	r11,56(r1)
	lwz	r28,32(r1)
	lwz	r29,36(r1)
	mtlr	r11
	lwz	r30,40(r1)
	lwz	r31,44(r1)
	addi	r1,r1,48
	blr
	.type	_MSG_WriteData,@function
	.size	_MSG_WriteData,$-_MSG_WriteData
# stacksize=48+??
	.global	@__MSG_WriteShort
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteShort
_MSG_WriteShort:
	mflr	r11
	mr	r10,r3
	stwu	r1,-48(r1)
	li	r5,16
	mr	r9,r4
	mr	r3,r10
	mr	r4,r9
	stw	r11,56(r1)
	bl	_MSG_WriteBits
	lwz	r11,56(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteShort,@function
	.size	_MSG_WriteShort,$-_MSG_WriteShort
# stacksize=48+??
	.global	@__MSG_WriteLong
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteLong
_MSG_WriteLong:
	mflr	r11
	mr	r10,r3
	stwu	r1,-48(r1)
	li	r5,32
	mr	r9,r4
	mr	r3,r10
	mr	r4,r9
	stw	r11,56(r1)
	bl	_MSG_WriteBits
	lwz	r11,56(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteLong,@function
	.size	_MSG_WriteLong,$-_MSG_WriteLong
# stacksize=48+??
	.global	@__MSG_WriteFloat
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteFloat
_MSG_WriteFloat:
	mflr	r11
	mr	r10,r3
	stwu	r1,-48(r1)
	li	r5,32
	mr	r3,r10
	stw	r11,56(r1)
	stfs	f1,36(r1)
	lwz	r4,36(r1)
	bl	_MSG_WriteBits
	lwz	r11,56(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteFloat,@function
	.size	_MSG_WriteFloat,$-_MSG_WriteFloat
# stacksize=48+??
	.global	@__MSG_WriteString
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteString
_MSG_WriteString:
	mflr	r11
	stwu	r1,-1088(r1)
	stw	r26,1060(r1)
	li	r26,46
	stw	r27,1064(r1)
	mr.	r27,r4
	stw	r28,1068(r1)
	mr	r28,r3
	stw	r29,1072(r1)
	stw	r30,1076(r1)
	stw	r31,1080(r1)
	stw	r11,1096(r1)
	bne	cr0,l159
	li	r5,1
	mr	r3,r28
	lwz	r4,@_l160(r2)
	bl	_MSG_WriteData
	b	l161
l159:
	mr	r3,r27
	subi	4,3,1
#barrier
	lbzu	0,1(4)
	cmpwi	0,0
	bne	$-8
	sub	3,4,3
	mr	r29,r3
	cmpwi	cr0,r29,1024
	blt	cr0,l163
	lwz	r3,@_l164(r2)
	bl	_Com_Printf
	li	r5,1
	mr	r3,r28
	lwz	r4,@_l165(r2)
	bl	_MSG_WriteData
	b	l161
l163:
	addi	r31,r1,36
	mr	r4,r27
	li	r5,1024
	mr	r30,r31
	mr	r3,r31
	bl	_Q_strncpyz
	li	r8,0
	cmpwi	cr0,r29,0
	ble	cr0,l178
	mr	r9,r31
l177:
	mr	r31,r30
	lbz	r10,0(r9)
	cmpwi	cr0,r10,127
	ble	cr0,l171
	mr	r31,r30
	stb	r26,0(r9)
l171:
	addi	r8,r8,1
	addi	r9,r9,1
	cmpw	cr0,r8,r29
	blt	cr0,l177
l178:
	addi	r10,r29,1
	mr	r3,r28
	mr	r4,r31
	mr	r5,r10
	bl	_MSG_WriteData
l161:
	lwz	r11,1096(r1)
	lwz	r26,1060(r1)
	lwz	r27,1064(r1)
	mtlr	r11
	lwz	r28,1068(r1)
	lwz	r29,1072(r1)
	lwz	r30,1076(r1)
	lwz	r31,1080(r1)
	addi	r1,r1,1088
	blr
	.type	_MSG_WriteString,@function
	.size	_MSG_WriteString,$-_MSG_WriteString
# stacksize=1088+??
	.tocd
	.align	2
@_l160:
	.long	l160
	.section	.rodata
	.align	2
	.type	l160,@object
	.size	l160,1
	.align	2
l160:
	.byte	0
	.tocd
	.align	2
@_l164:
	.long	l164
	.section	.rodata
	.align	2
	.type	l164,@object
	.size	l164,34
	.align	2
l164:
	.byte	77
	.byte	83
	.byte	71
	.byte	95
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	83
	.byte	116
	.byte	114
	.byte	105
	.byte	110
	.byte	103
	.byte	58
	.byte	32
	.byte	77
	.byte	65
	.byte	88
	.byte	95
	.byte	83
	.byte	84
	.byte	82
	.byte	73
	.byte	78
	.byte	71
	.byte	95
	.byte	67
	.byte	72
	.byte	65
	.byte	82
	.byte	83
	.byte	0
	.tocd
	.align	2
@_l165:
	.long	l165
	.section	.rodata
	.align	2
	.type	l165,@object
	.size	l165,1
	.align	2
l165:
	.byte	0
	.global	@__MSG_WriteBigString
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteBigString
_MSG_WriteBigString:
	mflr	r11
	stwu	r1,-8256(r1)
	stw	r26,8228(r1)
	li	r26,46
	stw	r27,8232(r1)
	mr.	r27,r4
	stw	r28,8236(r1)
	mr	r28,r3
	stw	r29,8240(r1)
	stw	r30,8244(r1)
	stw	r31,8248(r1)
	stw	r11,8264(r1)
	bne	cr0,l182
	li	r5,1
	mr	r3,r28
	lwz	r4,@_l183(r2)
	bl	_MSG_WriteData
	b	l184
l182:
	mr	r3,r27
	subi	4,3,1
#barrier
	lbzu	0,1(4)
	cmpwi	0,0
	bne	$-8
	sub	3,4,3
	mr	r29,r3
	cmpwi	cr0,r29,8192
	blt	cr0,l186
	lwz	r3,@_l187(r2)
	bl	_Com_Printf
	li	r5,1
	mr	r3,r28
	lwz	r4,@_l188(r2)
	bl	_MSG_WriteData
	b	l184
l186:
	addi	r31,r1,36
	mr	r4,r27
	li	r5,8192
	mr	r30,r31
	mr	r3,r31
	bl	_Q_strncpyz
	li	r8,0
	cmpwi	cr0,r29,0
	ble	cr0,l201
	mr	r9,r31
l200:
	mr	r31,r30
	lbz	r10,0(r9)
	cmpwi	cr0,r10,127
	ble	cr0,l194
	mr	r31,r30
	stb	r26,0(r9)
l194:
	addi	r8,r8,1
	addi	r9,r9,1
	cmpw	cr0,r8,r29
	blt	cr0,l200
l201:
	addi	r10,r29,1
	mr	r3,r28
	mr	r4,r31
	mr	r5,r10
	bl	_MSG_WriteData
l184:
	lwz	r11,8264(r1)
	lwz	r26,8228(r1)
	lwz	r27,8232(r1)
	mtlr	r11
	lwz	r28,8236(r1)
	lwz	r29,8240(r1)
	lwz	r30,8244(r1)
	lwz	r31,8248(r1)
	addi	r1,r1,8256
	blr
	.type	_MSG_WriteBigString,@function
	.size	_MSG_WriteBigString,$-_MSG_WriteBigString
# stacksize=8256+??
	.tocd
	.align	2
@_l183:
	.long	l183
	.section	.rodata
	.align	2
	.type	l183,@object
	.size	l183,1
	.align	2
l183:
	.byte	0
	.tocd
	.align	2
@_l187:
	.long	l187
	.section	.rodata
	.align	2
	.type	l187,@object
	.size	l187,33
	.align	2
l187:
	.byte	77
	.byte	83
	.byte	71
	.byte	95
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	83
	.byte	116
	.byte	114
	.byte	105
	.byte	110
	.byte	103
	.byte	58
	.byte	32
	.byte	66
	.byte	73
	.byte	71
	.byte	95
	.byte	73
	.byte	78
	.byte	70
	.byte	79
	.byte	95
	.byte	83
	.byte	84
	.byte	82
	.byte	73
	.byte	78
	.byte	71
	.byte	0
	.tocd
	.align	2
@_l188:
	.long	l188
	.section	.rodata
	.align	2
	.type	l188,@object
	.size	l188,1
	.align	2
l188:
	.byte	0
	.global	@__MSG_WriteAngle
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteAngle
_MSG_WriteAngle:
	mflr	r11
	mr	r9,r3
	stwu	r1,-48(r1)
	mr	r3,r9
	stw	r11,56(r1)
	lfs	f13,l204(r2)
	fmuls	f11,f1,f13
	lfs	f13,l205(r2)
	fdivs	f11,f11,f13
	fctiwz	f0,f11
	stfd	f0,32(r1)
	lwz	r10,36(r1)
	andi.	r10,r10,255
	mr	r4,r10
	bl	_MSG_WriteByte
	lwz	r11,56(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteAngle,@function
	.size	_MSG_WriteAngle,$-_MSG_WriteAngle
# stacksize=48+??
	.global	@__MSG_WriteAngle16
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteAngle16
_MSG_WriteAngle16:
	mflr	r11
	mr	r9,r3
	stwu	r1,-48(r1)
	mr	r3,r9
	stw	r11,56(r1)
	lfs	f13,l208(r2)
	fmuls	f11,f1,f13
	lfs	f13,l205(r2)
	fdivs	f11,f11,f13
	fctiwz	f0,f11
	stfd	f0,32(r1)
	lwz	r10,36(r1)
	andi.	r10,r10,65535
	mr	r4,r10
	bl	_MSG_WriteShort
	lwz	r11,56(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteAngle16,@function
	.size	_MSG_WriteAngle16,$-_MSG_WriteAngle16
# stacksize=48+??
	.global	@__MSG_ReadChar
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadChar
_MSG_ReadChar:
	mflr	r11
	li	r4,8
	stwu	r1,-48(r1)
	stw	r31,32(r1)
	mr	r31,r3
	stw	r11,56(r1)
	mr	r3,r31
	bl	_MSG_ReadBits
	mr	r10,r3
	lwz	r11,24(r31)
	extsb	r8,r10
	lwz	r12,20(r31)
	cmpw	cr0,r11,r12
	ble	cr0,l212
	li	r8,-1
l212:
	mr	r3,r8
	lwz	r11,56(r1)
	lwz	r31,32(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_ReadChar,@function
	.size	_MSG_ReadChar,$-_MSG_ReadChar
# stacksize=48+??
	.global	@__MSG_ReadByte
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadByte
_MSG_ReadByte:
	mflr	r11
	li	r4,8
	stwu	r1,-48(r1)
	stw	r31,32(r1)
	mr	r31,r3
	stw	r11,56(r1)
	mr	r3,r31
	bl	_MSG_ReadBits
	mr	r10,r3
	clrlwi	r8,r10,24
	lwz	r11,24(r31)
	lwz	r12,20(r31)
	cmpw	cr0,r11,r12
	ble	cr0,l216
	li	r8,-1
l216:
	mr	r3,r8
	lwz	r11,56(r1)
	lwz	r31,32(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_ReadByte,@function
	.size	_MSG_ReadByte,$-_MSG_ReadByte
# stacksize=48+??
	.global	@__MSG_LookaheadByte
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_LookaheadByte
_MSG_LookaheadByte:
	mflr	r11
	stwu	r1,-64(r1)
	stw	r25,28(r1)
	mr	r25,r3
	stw	r26,32(r1)
	stw	r27,36(r1)
	stw	r28,40(r1)
	stw	r29,44(r1)
	stw	r30,48(r1)
	stw	r31,52(r1)
	stw	r11,72(r1)
	bl	_Huff_getBloc
	addi	r28,r25,24
	mr	r26,r3
	addi	r30,r25,28
	mr	r3,r25
	lwz	r27,0(r28)
	lwz	r29,0(r30)
	bl	_MSG_ReadByte
	mr	r31,r3
	mr	r3,r26
	bl	_Huff_setBloc
	mr	r3,r31
	stw	r27,0(r28)
	stw	r29,0(r30)
	lwz	r11,72(r1)
	lwz	r25,28(r1)
	lwz	r26,32(r1)
	mtlr	r11
	lwz	r27,36(r1)
	lwz	r28,40(r1)
	lwz	r29,44(r1)
	lwz	r30,48(r1)
	lwz	r31,52(r1)
	addi	r1,r1,64
	blr
	.type	_MSG_LookaheadByte,@function
	.size	_MSG_LookaheadByte,$-_MSG_LookaheadByte
# stacksize=64+??
	.global	@__MSG_ReadShort
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadShort
_MSG_ReadShort:
	mflr	r11
	li	r4,16
	stwu	r1,-48(r1)
	stw	r31,32(r1)
	mr	r31,r3
	stw	r11,56(r1)
	mr	r3,r31
	bl	_MSG_ReadBits
	mr	r10,r3
	lwz	r11,24(r31)
	extsh	r8,r10
	lwz	r12,20(r31)
	cmpw	cr0,r11,r12
	ble	cr0,l222
	li	r8,-1
l222:
	mr	r3,r8
	lwz	r11,56(r1)
	lwz	r31,32(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_ReadShort,@function
	.size	_MSG_ReadShort,$-_MSG_ReadShort
# stacksize=48+??
	.global	@__MSG_ReadLong
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadLong
_MSG_ReadLong:
	mflr	r11
	li	r4,32
	stwu	r1,-48(r1)
	stw	r31,32(r1)
	mr	r31,r3
	stw	r11,56(r1)
	mr	r3,r31
	bl	_MSG_ReadBits
	mr	r8,r3
	lwz	r11,24(r31)
	lwz	r12,20(r31)
	cmpw	cr0,r11,r12
	ble	cr0,l226
	li	r8,-1
l226:
	mr	r3,r8
	lwz	r11,56(r1)
	lwz	r31,32(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_ReadLong,@function
	.size	_MSG_ReadLong,$-_MSG_ReadLong
# stacksize=48+??
	.global	@__MSG_ReadFloat
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadFloat
_MSG_ReadFloat:
	mflr	r11
	li	r4,32
	stwu	r1,-48(r1)
	stw	r31,36(r1)
	mr	r31,r3
	stw	r11,56(r1)
	mr	r3,r31
	bl	_MSG_ReadBits
	stw	r3,32(r1)
	lwz	r11,24(r31)
	lwz	r12,20(r31)
	cmpw	cr0,r11,r12
	ble	cr0,l230
	lfs	f12,l231(r2)
	stfs	f12,32(r1)
l230:
	lfs	f1,32(r1)
	lwz	r11,56(r1)
	lwz	r31,36(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_ReadFloat,@function
	.size	_MSG_ReadFloat,$-_MSG_ReadFloat
# stacksize=48+??
	.global	@__MSG_ReadString
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadString
_MSG_ReadString:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r29,28(r1)
	mr	r29,r3
	stw	r30,32(r1)
	li	r30,0
	stw	r31,36(r1)
	stw	r11,56(r1)
	lwz	r31,@_l234(r2)
l248:
	mr	r3,r29
	bl	_MSG_ReadByte
	mr	r10,r3
	cmpwi	cr0,r10,-1
	beq	cr0,l249
	cmpwi	cr0,r10,0
	beq	cr0,l249
	cmpwi	cr0,r10,37
	bne	cr0,l242
	li	r10,46
l242:
	cmpwi	cr0,r10,127
	ble	cr0,l244
	li	r10,46
l244:
	addi	r30,r30,1
	stb	r10,0(r31)
	addi	r31,r31,1
	cmpwi	cr0,r30,1023
	blt	cr0,l248
l249:
	li	r11,0
	lwz	r10,@_l234(r2)
	stbx	r11,r30,r10
	lwz	r3,@_l234(r2)
	lwz	r11,56(r1)
	lwz	r29,28(r1)
	lwz	r30,32(r1)
	mtlr	r11
	lwz	r31,36(r1)
	addi	r1,r1,48
	blr
	.type	_MSG_ReadString,@function
	.size	_MSG_ReadString,$-_MSG_ReadString
# stacksize=48+??
	.tocd
	.align	2
@_l234:
	.long	l234
	.lcomm	l234,1024
	.global	@__MSG_ReadBigString
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadBigString
_MSG_ReadBigString:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r29,28(r1)
	mr	r29,r3
	stw	r30,32(r1)
	li	r30,0
	stw	r31,36(r1)
	stw	r11,56(r1)
	lwz	r31,@_l252(r2)
l266:
	mr	r3,r29
	bl	_MSG_ReadByte
	mr	r10,r3
	cmpwi	cr0,r10,-1
	beq	cr0,l267
	cmpwi	cr0,r10,0
	beq	cr0,l267
	cmpwi	cr0,r10,37
	bne	cr0,l260
	li	r10,46
l260:
	cmpwi	cr0,r10,127
	ble	cr0,l262
	li	r10,46
l262:
	addi	r30,r30,1
	stb	r10,0(r31)
	addi	r31,r31,1
	cmpwi	cr0,r30,8191
	blt	cr0,l266
l267:
	li	r11,0
	lwz	r10,@_l252(r2)
	stbx	r11,r30,r10
	lwz	r3,@_l252(r2)
	lwz	r11,56(r1)
	lwz	r29,28(r1)
	lwz	r30,32(r1)
	mtlr	r11
	lwz	r31,36(r1)
	addi	r1,r1,48
	blr
	.type	_MSG_ReadBigString,@function
	.size	_MSG_ReadBigString,$-_MSG_ReadBigString
# stacksize=48+??
	.tocd
	.align	2
@_l252:
	.long	l252
	.lcomm	l252,8192
	.global	@__MSG_ReadStringLine
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadStringLine
_MSG_ReadStringLine:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r29,28(r1)
	mr	r29,r3
	stw	r30,32(r1)
	li	r30,0
	stw	r31,36(r1)
	stw	r11,56(r1)
	lwz	r31,@_l270(r2)
l285:
	mr	r3,r29
	bl	_MSG_ReadByte
	mr	r10,r3
	cmpwi	cr0,r10,-1
	beq	cr0,l286
	cmpwi	cr0,r10,0
	beq	cr0,l286
	cmpwi	cr0,r10,10
	beq	cr0,l286
	cmpwi	cr0,r10,37
	bne	cr0,l279
	li	r10,46
l279:
	cmpwi	cr0,r10,127
	ble	cr0,l281
	li	r10,46
l281:
	addi	r30,r30,1
	stb	r10,0(r31)
	addi	r31,r31,1
	cmpwi	cr0,r30,1023
	blt	cr0,l285
l286:
	li	r11,0
	lwz	r10,@_l270(r2)
	stbx	r11,r30,r10
	lwz	r3,@_l270(r2)
	lwz	r11,56(r1)
	lwz	r29,28(r1)
	lwz	r30,32(r1)
	mtlr	r11
	lwz	r31,36(r1)
	addi	r1,r1,48
	blr
	.type	_MSG_ReadStringLine,@function
	.size	_MSG_ReadStringLine,$-_MSG_ReadStringLine
# stacksize=48+??
	.tocd
	.align	2
@_l270:
	.long	l270
	.lcomm	l270,1024
	.global	@__MSG_ReadAngle16
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadAngle16
_MSG_ReadAngle16:
	mflr	r11
	mr	r10,r3
	stwu	r1,-48(r1)
	mr	r3,r10
	stw	r11,56(r1)
	bl	_MSG_ReadShort
	lis	r12,17200
	stw	r12,28(r1)
	xoris	r12,r3,32768
	stw	r12,32(r1)
	lfd	f1,28(r1)
	lfd	f13,l289(r2)
	lwz	r11,56(r1)
	addi	r1,r1,48
	fsub	f1,f1,f13
	mtlr	r11
	lfd	f13,l290(r2)
	fmul	f1,f1,f13
	blr
	.type	_MSG_ReadAngle16,@function
	.size	_MSG_ReadAngle16,$-_MSG_ReadAngle16
# stacksize=48+??
	.global	@__MSG_ReadData
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadData
_MSG_ReadData:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r28,28(r1)
	mr	r28,r3
	stw	r29,32(r1)
	mr.	r29,r5
	stw	r30,36(r1)
	li	r30,0
	stw	r31,40(r1)
	stw	r11,56(r1)
	ble	cr0,l301
	mr	r31,r4
l300:
	mr	r3,r28
	bl	_MSG_ReadByte
	addi	r30,r30,1
	stb	r3,0(r31)
	addi	r31,r31,1
	cmpw	cr0,r30,r29
	blt	cr0,l300
l301:
	lwz	r11,56(r1)
	lwz	r28,28(r1)
	lwz	r29,32(r1)
	mtlr	r11
	lwz	r30,36(r1)
	lwz	r31,40(r1)
	addi	r1,r1,48
	blr
	.type	_MSG_ReadData,@function
	.size	_MSG_ReadData,$-_MSG_ReadData
# stacksize=48+??
	.global	@__MSG_WriteDelta
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteDelta
_MSG_WriteDelta:
	mflr	r11
	mr	r10,r4
	stwu	r1,-48(r1)
	stw	r30,36(r1)
	mr	r30,r5
	stw	r31,40(r1)
	cmpw	cr0,r10,r30
	mr	r31,r3
	stw	r11,56(r1)
	stw	r6,84(r1)
	bne	cr0,l305
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	b	l302
l305:
	li	r4,1
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	mr	r3,r31
	lwz	r5,84(r1)
	mr	r4,r30
	bl	_MSG_WriteBits
l302:
	lwz	r11,56(r1)
	lwz	r30,36(r1)
	lwz	r31,40(r1)
	mtlr	r11
	addi	r1,r1,48
	blr
	.type	_MSG_WriteDelta,@function
	.size	_MSG_WriteDelta,$-_MSG_WriteDelta
# stacksize=48+??
	.global	@__MSG_ReadDelta
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadDelta
_MSG_ReadDelta:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r31,32(r1)
	mr	r31,r3
	stw	r11,56(r1)
	mr	r3,r31
	stw	r4,76(r1)
	li	r4,1
	stw	r5,80(r1)
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	beq	cr0,l309
	mr	r3,r31
	lwz	r4,80(r1)
	bl	_MSG_ReadBits
	b	l306
l309:
	lwz	r3,76(r1)
l306:
	lwz	r11,56(r1)
	lwz	r31,32(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_ReadDelta,@function
	.size	_MSG_ReadDelta,$-_MSG_ReadDelta
# stacksize=48+??
	.global	@__MSG_WriteDeltaFloat
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteDeltaFloat
_MSG_WriteDeltaFloat:
	mflr	r11
	fcmpu	cr0,f1,f2
	stwu	r1,-48(r1)
	stw	r31,40(r1)
	mr	r31,r3
	stw	r11,56(r1)
	bne	cr0,l313
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	b	l310
l313:
	li	r4,1
	mr	r3,r31
	stfs	f2,36(r1)
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,32
	mr	r3,r31
	lwz	r4,36(r1)
	bl	_MSG_WriteBits
l310:
	lwz	r11,56(r1)
	lwz	r31,40(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteDeltaFloat,@function
	.size	_MSG_WriteDeltaFloat,$-_MSG_WriteDeltaFloat
# stacksize=48+??
	.global	@__MSG_ReadDeltaFloat
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadDeltaFloat
_MSG_ReadDeltaFloat:
	mflr	r11
	li	r4,1
	stwu	r1,-48(r1)
	stw	r31,36(r1)
	mr	r31,r3
	stw	r11,56(r1)
	mr	r3,r31
	stfs	f1,76(r1)
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	lfs	f1,76(r1)
	beq	cr0,l317
	li	r4,32
	mr	r3,r31
	bl	_MSG_ReadBits
	stw	r3,32(r1)
	lfs	f1,32(r1)
	b	l314
l317:
l314:
	lwz	r11,56(r1)
	lwz	r31,36(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_ReadDeltaFloat,@function
	.size	_MSG_ReadDeltaFloat,$-_MSG_ReadDeltaFloat
# stacksize=48+??
	.global	@__MSG_WriteDeltaKey
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteDeltaKey
_MSG_WriteDeltaKey:
	mflr	r11
	mr	r10,r5
	stwu	r1,-48(r1)
	cmpw	cr0,r10,r6
	stw	r31,36(r1)
	mr	r31,r3
	stw	r11,56(r1)
	stw	r4,76(r1)
	stw	r7,88(r1)
	bne	cr0,l321
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	b	l318
l321:
	li	r4,1
	mr	r3,r31
	stw	r6,84(r1)
	li	r5,1
	bl	_MSG_WriteBits
	mr	r3,r31
	lwz	r6,84(r1)
	lwz	r11,76(r1)
	lwz	r5,88(r1)
	xor	r10,r11,r6
	mr	r4,r10
	bl	_MSG_WriteBits
l318:
	lwz	r11,56(r1)
	lwz	r31,36(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteDeltaKey,@function
	.size	_MSG_WriteDeltaKey,$-_MSG_WriteDeltaKey
# stacksize=48+??
	.global	@__MSG_ReadDeltaKey
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadDeltaKey
_MSG_ReadDeltaKey:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r30,32(r1)
	mr	r30,r3
	stw	r31,36(r1)
	mr	r31,r6
	stw	r11,56(r1)
	mr	r3,r30
	stw	r4,76(r1)
	li	r4,1
	stw	r5,80(r1)
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	beq	cr0,l325
	mr	r3,r30
	mr	r4,r31
	bl	_MSG_ReadBits
	slwi	r10,r31,2&31
	lwz	r11,@__kbitmask(r2)
	add	r10,r11,r10
	lwz	r11,76(r1)
	lwz	r12,0(r10)
	and	r10,r11,r12
	xor	r3,r10,r3
	b	l322
l325:
	lwz	r3,80(r1)
l322:
	lwz	r11,56(r1)
	lwz	r30,32(r1)
	lwz	r31,36(r1)
	mtlr	r11
	addi	r1,r1,48
	blr
	.type	_MSG_ReadDeltaKey,@function
	.size	_MSG_ReadDeltaKey,$-_MSG_ReadDeltaKey
# stacksize=48+??
	.global	@__MSG_WriteDeltaKeyFloat
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteDeltaKeyFloat
_MSG_WriteDeltaKeyFloat:
	mflr	r11
	fcmpu	cr0,f1,f2
	stwu	r1,-48(r1)
	stw	r31,40(r1)
	mr	r31,r3
	stw	r11,56(r1)
	stw	r4,76(r1)
	bne	cr0,l329
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	b	l326
l329:
	li	r4,1
	mr	r3,r31
	stfs	f2,36(r1)
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,32
	mr	r3,r31
	lwz	r11,76(r1)
	lwz	r12,36(r1)
	xor	r10,r11,r12
	mr	r4,r10
	bl	_MSG_WriteBits
l326:
	lwz	r11,56(r1)
	lwz	r31,40(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_WriteDeltaKeyFloat,@function
	.size	_MSG_WriteDeltaKeyFloat,$-_MSG_WriteDeltaKeyFloat
# stacksize=48+??
	.global	@__MSG_ReadDeltaKeyFloat
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadDeltaKeyFloat
_MSG_ReadDeltaKeyFloat:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r31,36(r1)
	mr	r31,r3
	stw	r11,56(r1)
	mr	r3,r31
	stw	r4,76(r1)
	li	r4,1
	stfs	f1,80(r1)
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	lfs	f1,80(r1)
	beq	cr0,l333
	li	r4,32
	mr	r3,r31
	bl	_MSG_ReadBits
	lwz	r11,76(r1)
	xor	r0,r11,r3
	stw	r0,32(r1)
	lfs	f1,32(r1)
	b	l330
l333:
l330:
	lwz	r11,56(r1)
	lwz	r31,36(r1)
	addi	r1,r1,48
	mtlr	r11
	blr
	.type	_MSG_ReadDeltaKeyFloat,@function
	.size	_MSG_ReadDeltaKeyFloat,$-_MSG_ReadDeltaKeyFloat
# stacksize=48+??
	.global	@__MSG_WriteDeltaUsercmdKey
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteDeltaUsercmdKey
_MSG_WriteDeltaUsercmdKey:
	mflr	r11
	stwu	r1,-80(r1)
	stw	r26,44(r1)
	stw	r27,48(r1)
	stw	r28,52(r1)
	mr	r28,r4
	stw	r29,56(r1)
	mr	r29,r3
	stw	r30,60(r1)
	mr	r30,r5
	stw	r31,64(r1)
	mr	r31,r6
	stw	r11,88(r1)
	lwz	r11,0(r31)
	lwz	r12,0(r30)
	sub	r10,r11,r12
	cmpwi	cr0,r10,256
	bge	cr0,l337
	li	r4,1
	mr	r3,r29
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,8
	mr	r3,r29
	lwz	r11,0(r31)
	lwz	r12,0(r30)
	sub	r10,r11,r12
	mr	r4,r10
	bl	_MSG_WriteBits
	b	l338
l337:
	li	r4,0
	mr	r3,r29
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,32
	mr	r3,r29
	lwz	r10,0(r31)
	mr	r4,r10
	bl	_MSG_WriteBits
l338:
	addi	r27,r30,4
	addi	r26,r31,4
	lwz	r11,0(r27)
	lwz	r12,0(r26)
	cmpw	cr0,r11,r12
	bne	cr0,l340
	lwz	r11,8(r30)
	lwz	r12,8(r31)
	cmpw	cr0,r11,r12
	bne	cr0,l340
	lwz	r11,12(r30)
	lwz	r12,12(r31)
	cmpw	cr0,r11,r12
	bne	cr0,l340
	lbz	r9,21(r30)
	lbz	r10,21(r31)
	extsb	r9,r9
	extsb	r10,r10
	cmpw	cr0,r9,r10
	bne	cr0,l340
	lbz	r9,22(r30)
	lbz	r10,22(r31)
	extsb	r9,r9
	extsb	r10,r10
	cmpw	cr0,r9,r10
	bne	cr0,l340
	lbz	r9,23(r30)
	lbz	r10,23(r31)
	extsb	r9,r9
	extsb	r10,r10
	cmpw	cr0,r9,r10
	bne	cr0,l340
	lwz	r11,16(r30)
	lwz	r12,16(r31)
	cmpw	cr0,r11,r12
	bne	cr0,l340
	lbz	r9,20(r30)
	lbz	r10,20(r31)
	cmpw	cr0,r9,r10
	bne	cr0,l340
	li	r4,0
	mr	r3,r29
	li	r5,1
	bl	_MSG_WriteBits
	lwz	r11,_oldsize(r2)
	addi	r0,r11,7
	stw	r0,_oldsize(r2)
	b	l334
l340:
	li	r4,1
	mr	r3,r29
	lwz	r12,0(r31)
	li	r5,1
	xor	r28,r28,r12
	bl	_MSG_WriteBits
	li	r7,16
	mr	r3,r29
	lwz	r10,0(r26)
	mr	r4,r28
	lwz	r9,0(r27)
	mr	r6,r10
	mr	r5,r9
	bl	_MSG_WriteDeltaKey
	li	r7,16
	mr	r3,r29
	lwz	r10,8(r31)
	mr	r4,r28
	lwz	r9,8(r30)
	mr	r6,r10
	mr	r5,r9
	bl	_MSG_WriteDeltaKey
	li	r7,16
	mr	r3,r29
	lwz	r10,12(r31)
	mr	r4,r28
	lwz	r9,12(r30)
	mr	r6,r10
	mr	r5,r9
	bl	_MSG_WriteDeltaKey
	li	r7,8
	mr	r3,r29
	lbz	r9,21(r30)
	mr	r4,r28
	lbz	r10,21(r31)
	extsb	r9,r9
	extsb	r10,r10
	mr	r5,r9
	mr	r6,r10
	bl	_MSG_WriteDeltaKey
	li	r7,8
	mr	r3,r29
	lbz	r9,22(r30)
	mr	r4,r28
	lbz	r10,22(r31)
	extsb	r9,r9
	extsb	r10,r10
	mr	r5,r9
	mr	r6,r10
	bl	_MSG_WriteDeltaKey
	li	r7,8
	mr	r3,r29
	lbz	r9,23(r30)
	mr	r4,r28
	lbz	r10,23(r31)
	extsb	r9,r9
	extsb	r10,r10
	mr	r5,r9
	mr	r6,r10
	bl	_MSG_WriteDeltaKey
	li	r7,16
	mr	r3,r29
	lwz	r10,16(r31)
	mr	r4,r28
	lwz	r9,16(r30)
	mr	r6,r10
	mr	r5,r9
	bl	_MSG_WriteDeltaKey
	li	r7,8
	mr	r3,r29
	lbz	r9,20(r30)
	mr	r4,r28
	lbz	r10,20(r31)
	mr	r5,r9
	mr	r6,r10
	bl	_MSG_WriteDeltaKey
l334:
	lwz	r11,88(r1)
	lwz	r26,44(r1)
	lwz	r27,48(r1)
	mtlr	r11
	lwz	r28,52(r1)
	lwz	r29,56(r1)
	lwz	r30,60(r1)
	lwz	r31,64(r1)
	addi	r1,r1,80
	blr
	.type	_MSG_WriteDeltaUsercmdKey,@function
	.size	_MSG_WriteDeltaUsercmdKey,$-_MSG_WriteDeltaUsercmdKey
# stacksize=80+??
	.global	@__MSG_ReadDeltaUsercmdKey
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadDeltaUsercmdKey
_MSG_ReadDeltaUsercmdKey:
	mflr	r11
	stwu	r1,-64(r1)
	stw	r28,40(r1)
	mr	r28,r4
	stw	r29,44(r1)
	li	r4,1
	mr	r29,r3
	stw	r30,48(r1)
	mr	r30,r5
	stw	r31,52(r1)
	mr	r31,r6
	stw	r11,72(r1)
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	beq	cr0,l351
	li	r4,8
	mr	r3,r29
	bl	_MSG_ReadBits
	lwz	r12,0(r30)
	add	r0,r3,r12
	stw	r0,0(r31)
	b	l352
l351:
	li	r4,32
	mr	r3,r29
	bl	_MSG_ReadBits
	stw	r3,0(r31)
l352:
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	beq	cr0,l354
	li	r6,16
	mr	r3,r29
	lwz	r12,0(r31)
	lwz	r10,4(r30)
	xor	r28,r28,r12
	mr	r4,r28
	mr	r5,r10
	bl	_MSG_ReadDeltaKey
	li	r6,16
	mr	r4,r28
	stw	r3,4(r31)
	mr	r3,r29
	lwz	r10,8(r30)
	mr	r5,r10
	bl	_MSG_ReadDeltaKey
	li	r6,16
	mr	r4,r28
	stw	r3,8(r31)
	mr	r3,r29
	lwz	r10,12(r30)
	mr	r5,r10
	bl	_MSG_ReadDeltaKey
	li	r6,8
	mr	r4,r28
	stw	r3,12(r31)
	mr	r3,r29
	lbz	r10,21(r30)
	extsb	r10,r10
	mr	r5,r10
	bl	_MSG_ReadDeltaKey
	li	r6,8
	mr	r4,r28
	stb	r3,21(r31)
	mr	r3,r29
	lbz	r10,22(r30)
	extsb	r10,r10
	mr	r5,r10
	bl	_MSG_ReadDeltaKey
	li	r6,8
	mr	r4,r28
	stb	r3,22(r31)
	mr	r3,r29
	lbz	r10,23(r30)
	extsb	r10,r10
	mr	r5,r10
	bl	_MSG_ReadDeltaKey
	li	r6,16
	mr	r4,r28
	stb	r3,23(r31)
	mr	r3,r29
	lwz	r10,16(r30)
	mr	r5,r10
	bl	_MSG_ReadDeltaKey
	li	r6,8
	mr	r4,r28
	stw	r3,16(r31)
	mr	r3,r29
	lbz	r10,20(r30)
	mr	r5,r10
	bl	_MSG_ReadDeltaKey
	stb	r3,20(r31)
	b	l355
l354:
	lwz	r11,4(r30)
	stw	r11,4(r31)
	lwz	r11,8(r30)
	stw	r11,8(r31)
	lwz	r11,12(r30)
	stw	r11,12(r31)
	lbz	r11,21(r30)
	stb	r11,21(r31)
	lbz	r11,22(r30)
	stb	r11,22(r31)
	lbz	r11,23(r30)
	stb	r11,23(r31)
	lwz	r11,16(r30)
	stw	r11,16(r31)
	lbz	r11,20(r30)
	stb	r11,20(r31)
l355:
	lwz	r11,72(r1)
	lwz	r28,40(r1)
	lwz	r29,44(r1)
	mtlr	r11
	lwz	r30,48(r1)
	lwz	r31,52(r1)
	addi	r1,r1,64
	blr
	.type	_MSG_ReadDeltaUsercmdKey,@function
	.size	_MSG_ReadDeltaUsercmdKey,$-_MSG_ReadDeltaUsercmdKey
# stacksize=64+??
	.global	@__MSG_ReportChangeVectors_f
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReportChangeVectors_f
_MSG_ReportChangeVectors_f:
	mflr	r11
	stwu	r1,-48(r1)
	stw	r30,36(r1)
	li	r30,0
	stw	r31,40(r1)
	stw	r11,56(r1)
	lwz	r31,@__pcount(r2)
l369:
	lwz	r11,0(r31)
	cmpwi	cr0,r11,0
	beq	cr0,l363
	stw	r30,28(r1)
	lwz	r11,0(r31)
	stw	r11,32(r1)
	lwz	r3,@_l364(r2)
	bl	_Com_Printf
l363:
	addi	r30,r30,1
	addi	r31,r31,4
	cmpwi	cr0,r30,256
	blt	cr0,l369
	lwz	r11,56(r1)
	lwz	r30,36(r1)
	lwz	r31,40(r1)
	mtlr	r11
	addi	r1,r1,48
	blr
	.type	_MSG_ReportChangeVectors_f,@function
	.size	_MSG_ReportChangeVectors_f,$-_MSG_ReportChangeVectors_f
# stacksize=48+??
	.tocd
	.align	2
@_l364:
	.long	l364
	.section	.rodata
	.align	2
	.type	l364,@object
	.size	l364,12
	.align	2
l364:
	.byte	37
	.byte	100
	.byte	32
	.byte	117
	.byte	115
	.byte	101
	.byte	100
	.byte	32
	.byte	37
	.byte	100
	.byte	10
	.byte	0
	.global	@__MSG_WriteDeltaEntity
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteDeltaEntity
_MSG_WriteDeltaEntity:
	mflr	r11
	stwu	r1,-96(r1)
	stw	r22,44(r1)
	mr	r22,r4
	stw	r23,48(r1)
	stw	r24,52(r1)
	stw	r25,56(r1)
	mr.	r25,r5
	stw	r26,60(r1)
	stw	r27,64(r1)
	stw	r28,68(r1)
	stw	r29,72(r1)
	stw	r30,76(r1)
	stw	r31,80(r1)
	mr	r31,r3
	stfd	f14,84(r1)
	stw	r11,104(r1)
	stw	r6,132(r1)
	bne	cr0,l430
	cmpwi	cr0,r22,0
	beq	cr0,l476
	li	r5,10
	mr	r3,r31
	lwz	r10,0(r22)
	mr	r4,r10
	bl	_MSG_WriteBits
	li	r4,1
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	b	l476
l430:
	lwz	r10,0(r25)
	mr.	r10,r10
	blt	cr0,l433
	cmpwi	cr0,r10,1024
	blt	cr0,l434
l433:
	li	r3,0
	stw	r10,32(r1)
	lwz	r4,@_l436(r2)
	bl	_Com_Error
l434:
	li	r23,0
	li	r29,0
	lwz	r8,@__entityStateFields(r2)
	li	r7,1
	addi	r8,r8,4
l473:
	lwz	r10,0(r8)
	add	r9,r22,r10
	lwzx	r12,r10,r25
	lwz	r11,0(r9)
	cmpw	cr0,r11,r12
	beq	cr0,l442
	mr	r23,r7
l442:
	addi	r29,r29,1
	addi	r7,r7,1
	addi	r8,r8,12
	cmpwi	cr0,r29,51
	blt	cr0,l473
	cmpwi	cr0,r23,0
	bne	cr0,l444
	lwz	r11,132(r1)
	cmpwi	cr0,r11,0
	beq	cr0,l476
	li	r5,10
	mr	r3,r31
	lwz	r10,0(r25)
	mr	r4,r10
	bl	_MSG_WriteBits
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	b	l476
l444:
	li	r5,10
	mr	r3,r31
	lwz	r10,0(r25)
	mr	r4,r10
	bl	_MSG_WriteBits
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	li	r4,1
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	mr	r3,r31
	mr	r4,r23
	bl	_MSG_WriteByte
	li	r29,0
	cmpwi	cr0,r23,0
	lwz	r11,_oldsize(r2)
	addi	r0,r11,51
	stw	r0,_oldsize(r2)
	ble	cr0,l476
	lwz	r28,@__entityStateFields(r2)
	lwz	r27,@__entityStateFields(r2)
	addi	r28,r28,8
	addi	r27,r27,4
l474:
	lwz	r9,0(r27)
	add	r30,r25,r9
	lwzx	r11,r9,r22
	lwz	r12,0(r30)
	cmpw	cr0,r11,r12
	bne	cr0,l452
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	b	l466
l452:
	li	r4,1
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	lwz	r11,0(r28)
	cmpwi	cr0,r11,0
	bne	cr0,l454
	lfs	f14,0(r30)
	fctiwz	f0,f14
	stfd	f0,36(r1)
	lwz	r24,40(r1)
	lfs	f13,l477(r2)
	fcmpu	cr0,f14,f13
	bne	cr0,l456
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	lwz	r11,_oldsize(r2)
	addi	r0,r11,13
	stw	r0,_oldsize(r2)
	b	l466
l456:
	li	r4,1
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	lis	r12,17200
	stw	r12,36(r1)
	xoris	r12,r24,32768
	stw	r12,40(r1)
	lfd	f11,36(r1)
	lfd	f13,l289(r2)
	fsub	f11,f11,f13
	fcmpu	cr0,f11,f14
	bne	cr0,l459
	addic.	r26,r24,4096
	blt	cr0,l459
	cmpwi	cr0,r26,8192
	bge	cr0,l459
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,13
	mr	r3,r31
	mr	r4,r26
	bl	_MSG_WriteBits
	b	l466
l459:
	li	r4,1
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,32
	mr	r3,r31
	lwz	r10,0(r30)
	mr	r4,r10
	bl	_MSG_WriteBits
	b	l466
l454:
	lwz	r11,0(r30)
	cmpwi	cr0,r11,0
	bne	cr0,l465
	li	r4,0
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	b	l466
l465:
	li	r4,1
	mr	r3,r31
	li	r5,1
	bl	_MSG_WriteBits
	mr	r3,r31
	lwz	r10,0(r28)
	lwz	r9,0(r30)
	mr	r5,r10
	mr	r4,r9
	bl	_MSG_WriteBits
l466:
	addi	r29,r29,1
	addi	r27,r27,12
	addi	r28,r28,12
	cmpw	cr0,r29,r23
	blt	cr0,l474
l476:
	lwz	r11,104(r1)
	lwz	r22,44(r1)
	lwz	r23,48(r1)
	mtlr	r11
	lwz	r24,52(r1)
	lwz	r25,56(r1)
	lwz	r26,60(r1)
	lwz	r27,64(r1)
	lwz	r28,68(r1)
	lwz	r29,72(r1)
	lwz	r30,76(r1)
	lwz	r31,80(r1)
	lfd	f14,84(r1)
	addi	r1,r1,96
	blr
	.type	_MSG_WriteDeltaEntity,@function
	.size	_MSG_WriteDeltaEntity,$-_MSG_WriteDeltaEntity
# stacksize=96+??
	.tocd
	.align	2
@_l436:
	.long	l436
	.section	.rodata
	.align	2
	.type	l436,@object
	.size	l436,44
	.align	2
l436:
	.byte	77
	.byte	83
	.byte	71
	.byte	95
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	68
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	58
	.byte	32
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	32
	.byte	110
	.byte	117
	.byte	109
	.byte	98
	.byte	101
	.byte	114
	.byte	58
	.byte	32
	.byte	37
	.byte	105
	.byte	0
	.tocd
	.align	2
@_l427:
	.long	l427
	.section	.rodata
	.align	2
	.type	l427,@object
	.size	l427,36
	.align	2
l427:
	.byte	65
	.byte	115
	.byte	115
	.byte	101
	.byte	114
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	58
	.byte	32
	.byte	102
	.byte	105
	.byte	108
	.byte	101
	.byte	32
	.byte	37
	.byte	115
	.byte	44
	.byte	32
	.byte	108
	.byte	105
	.byte	110
	.byte	101
	.byte	32
	.byte	37
	.byte	100
	.byte	10
	.byte	0
	.tocd
	.align	2
@_l428:
	.long	l428
	.section	.rodata
	.align	2
	.type	l428,@object
	.size	l428,19
	.align	2
l428:
	.byte	99
	.byte	111
	.byte	100
	.byte	101
	.byte	47
	.byte	113
	.byte	99
	.byte	111
	.byte	109
	.byte	109
	.byte	111
	.byte	110
	.byte	47
	.byte	109
	.byte	115
	.byte	103
	.byte	46
	.byte	99
	.byte	0
	.global	@__MSG_ReadDeltaEntity
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadDeltaEntity
_MSG_ReadDeltaEntity:
	mflr	r11
	stwu	r1,-128(r1)
	stw	r16,48(r1)
	li	r16,0
	stw	r17,52(r1)
	stw	r18,56(r1)
	mr	r18,r6
	stw	r19,60(r1)
	cmpw	cr0,r18,r16
	stw	r20,64(r1)
	stw	r21,68(r1)
	mr	r21,r4
	stw	r22,72(r1)
	stw	r23,76(r1)
	stw	r24,80(r1)
	stw	r25,84(r1)
	stw	r26,88(r1)
	mr	r26,r5
	stw	r27,92(r1)
	stw	r28,96(r1)
	stw	r29,100(r1)
	mr	r29,r3
	stw	r30,104(r1)
	stw	r31,108(r1)
	stfd	f14,112(r1)
	stw	r11,136(r1)
	lfs	f14,l477(r2)
	blt	cr0,l480
	cmpwi	cr0,r18,1024
	blt	cr0,l481
l480:
	li	r3,1
	stw	r18,32(r1)
	lwz	r4,@_l483(r2)
	bl	_Com_Error
l481:
	addi	r19,r29,28
	addi	r23,r29,24
	lwz	r11,0(r19)
	cmpwi	cr0,r11,0
	bne	cr0,l485
	lwz	r11,0(r23)
	slwi	r10,r11,3&31
	addi	r17,r10,-10
	b	l486
l485:
	lwz	r11,0(r23)
	lwz	r12,0(r19)
	addi	r10,r11,-1
	slwi	r10,r10,3&31
	add	r10,r10,r12
	addi	r17,r10,-10
l486:
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,1
	bne	cr0,l488
	li	r5,208
	mr	r3,r26
	mr	r4,r16
	bl	_memset
	li	r11,1023
	stw	r11,0(r26)
	lwz	r10,_cl_shownet(r2)
	lwz	r6,32(r10)
	cmpwi	cr0,r6,2
	bge	cr0,l489
	cmpwi	cr0,r6,-1
	bne	cr0,l533
l489:
	lwz	r11,0(r23)
	stw	r11,28(r1)
	stw	r18,32(r1)
	lwz	r3,@_l492(r2)
	bl	_Com_Printf
	b	l533
l488:
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	bne	cr0,l494
	addi	r11,r21,-4
	addi	r12,r26,-4
	li	r0,6
	mtctr	r0
l550:
	lwz	r0,4(r11)
	stw	r0,4(r12)
	lwz	r0,8(r11)
	stw	r0,8(r12)
	lwz	r0,12(r11)
	stw	r0,12(r12)
	lwz	r0,16(r11)
	stw	r0,16(r12)
	lwz	r0,20(r11)
	stw	r0,20(r12)
	lwz	r0,24(r11)
	stw	r0,24(r12)
	lwz	r0,28(r11)
	stw	r0,28(r12)
	lwzu	r0,32(r11)
	stwu	r0,32(r12)
	bdnz	l550
	lwzu	r0,4(r11)
	stwu	r0,4(r12)
	lwzu	r0,4(r11)
	stwu	r0,4(r12)
	lwzu	r0,4(r11)
	stwu	r0,4(r12)
	lwzu	r0,4(r11)
	stwu	r0,4(r12)
	stw	r18,0(r26)
	b	l533
l494:
	mr	r3,r29
	bl	_MSG_ReadByte
	mr	r20,r3
	lwz	r10,_cl_shownet(r2)
	lwz	r9,32(r10)
	cmpwi	cr0,r9,2
	bge	cr0,l495
	cmpwi	cr0,r9,-1
	bne	cr0,l496
l495:
	li	r24,1
	lwz	r11,0(r23)
	stw	r11,28(r1)
	lwz	r11,0(r26)
	stw	r11,32(r1)
	lwz	r3,@_l498(r2)
	bl	_Com_Printf
	b	l499
l496:
	mr	r24,r16
l499:
	cmpw	cr0,r20,r16
	mr	r28,r16
	stw	r18,0(r26)
	lwz	r30,@__entityStateFields(r2)
	ble	cr0,l548
	lwz	r27,@__entityStateFields(r2)
	lwz	r25,@__entityStateFields(r2)
	addi	r27,r27,8
	addi	r25,r25,4
l546:
	li	r4,1
	mr	r3,r29
	lwz	r10,0(r25)
	add	r22,r21,r10
	add	r31,r26,r10
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	bne	cr0,l505
	lwz	r11,0(r22)
	stw	r11,0(r31)
	b	l526
l505:
	lwz	r11,0(r27)
	cmpwi	cr0,r11,0
	bne	cr0,l508
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	bne	cr0,l510
	stfs	f14,0(r31)
	b	l526
l510:
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	bne	cr0,l513
	li	r4,13
	mr	r3,r29
	bl	_MSG_ReadBits
	lis	r12,17200
	mr	r10,r3
	addi	r10,r10,-4096
	cmpwi	cr0,r24,0
	stw	r12,40(r1)
	xoris	r12,r10,32768
	stw	r12,44(r1)
	lfd	f0,40(r1)
	lfd	f13,l289(r2)
	fsub	f0,f0,f13
	stfs	f0,0(r31)
	beq	cr0,l526
	lwz	r11,0(r30)
	stw	r11,28(r1)
	stw	r10,32(r1)
	lwz	r3,@_l516(r2)
	bl	_Com_Printf
	b	l526
l513:
	li	r4,32
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r24,0
	stw	r3,0(r31)
	beq	cr0,l526
	lwz	r11,0(r30)
	stw	r11,28(r1)
	lfs	f11,0(r31)
	stfd	f11,32(r1)
	lwz	r3,@_l520(r2)
	lfd	f12,32(r1)
	bl	_Com_Printf
	b	l526
l508:
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	bne	cr0,l523
	stw	r16,0(r31)
	b	l526
l523:
	mr	r3,r29
	lwz	r10,0(r27)
	mr	r4,r10
	bl	_MSG_ReadBits
	cmpwi	cr0,r24,0
	stw	r3,0(r31)
	beq	cr0,l526
	lwz	r11,0(r30)
	stw	r11,28(r1)
	lwz	r11,0(r31)
	stw	r11,32(r1)
	lwz	r3,@_l527(r2)
	bl	_Com_Printf
l526:
	addi	r28,r28,1
	addi	r30,r30,12
	addi	r25,r25,12
	addi	r27,r27,12
	cmpw	cr0,r28,r20
	blt	cr0,l546
l548:
	cmpwi	cr0,r20,51
	mulli	r10,r20,12
	lwz	r11,@__entityStateFields(r2)
	mr	r28,r20
	add	r30,r11,r10
	bge	cr0,l549
	addi	r8,r30,4
l547:
	addi	r28,r28,1
	lwz	r10,0(r8)
	addi	r8,r8,12
	cmpwi	cr0,r28,51
	add	r9,r21,r10
	lwz	r11,0(r9)
	stwx	r11,r10,r26
	blt	cr0,l547
l549:
	cmpwi	cr0,r24,0
	beq	cr0,l533
	lwz	r11,0(r19)
	cmpwi	cr0,r11,0
	bne	cr0,l535
	lwz	r11,0(r23)
	slwi	r10,r11,3&31
	addi	r7,r10,-10
	b	l536
l535:
	lwz	r11,0(r23)
	lwz	r12,0(r19)
	addi	r10,r11,-1
	slwi	r10,r10,3&31
	add	r10,r10,r12
	addi	r7,r10,-10
l536:
	sub	r10,r7,r17
	stw	r10,28(r1)
	lwz	r3,@_l537(r2)
	bl	_Com_Printf
l533:
	lwz	r11,136(r1)
	lwz	r16,48(r1)
	lwz	r17,52(r1)
	mtlr	r11
	lwz	r18,56(r1)
	lwz	r19,60(r1)
	lwz	r20,64(r1)
	lwz	r21,68(r1)
	lwz	r22,72(r1)
	lwz	r23,76(r1)
	lwz	r24,80(r1)
	lwz	r25,84(r1)
	lwz	r26,88(r1)
	lwz	r27,92(r1)
	lwz	r28,96(r1)
	lwz	r29,100(r1)
	lwz	r30,104(r1)
	lwz	r31,108(r1)
	lfd	f14,112(r1)
	addi	r1,r1,128
	blr
	.type	_MSG_ReadDeltaEntity,@function
	.size	_MSG_ReadDeltaEntity,$-_MSG_ReadDeltaEntity
# stacksize=128+??
	.tocd
	.align	2
@_l483:
	.long	l483
	.section	.rodata
	.align	2
	.type	l483,@object
	.size	l483,28
	.align	2
l483:
	.byte	66
	.byte	97
	.byte	100
	.byte	32
	.byte	100
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	32
	.byte	101
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	32
	.byte	110
	.byte	117
	.byte	109
	.byte	98
	.byte	101
	.byte	114
	.byte	58
	.byte	32
	.byte	37
	.byte	105
	.byte	0
	.tocd
	.align	2
@_l492:
	.long	l492
	.section	.rodata
	.align	2
	.type	l492,@object
	.size	l492,19
	.align	2
l492:
	.byte	37
	.byte	51
	.byte	105
	.byte	58
	.byte	32
	.byte	35
	.byte	37
	.byte	45
	.byte	51
	.byte	105
	.byte	32
	.byte	114
	.byte	101
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	10
	.byte	0
	.tocd
	.align	2
@_l498:
	.long	l498
	.section	.rodata
	.align	2
	.type	l498,@object
	.size	l498,12
	.align	2
l498:
	.byte	37
	.byte	51
	.byte	105
	.byte	58
	.byte	32
	.byte	35
	.byte	37
	.byte	45
	.byte	51
	.byte	105
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l516:
	.long	l516
	.section	.rodata
	.align	2
	.type	l516,@object
	.size	l516,7
	.align	2
l516:
	.byte	37
	.byte	115
	.byte	58
	.byte	37
	.byte	105
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l520:
	.long	l520
	.section	.rodata
	.align	2
	.type	l520,@object
	.size	l520,7
	.align	2
l520:
	.byte	37
	.byte	115
	.byte	58
	.byte	37
	.byte	102
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l527:
	.long	l527
	.section	.rodata
	.align	2
	.type	l527,@object
	.size	l527,7
	.align	2
l527:
	.byte	37
	.byte	115
	.byte	58
	.byte	37
	.byte	105
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l537:
	.long	l537
	.section	.rodata
	.align	2
	.type	l537,@object
	.size	l537,12
	.align	2
l537:
	.byte	32
	.byte	40
	.byte	37
	.byte	105
	.byte	32
	.byte	98
	.byte	105
	.byte	116
	.byte	115
	.byte	41
	.byte	10
	.byte	0
	.global	@__MSG_WriteDeltaPlayerstate
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_WriteDeltaPlayerstate
_MSG_WriteDeltaPlayerstate:
	mflr	r11
	mr.	r0,r4
	stwu	r1,-608(r1)
	stw	r13,528(r1)
	stw	r14,532(r1)
	stw	r15,536(r1)
	stw	r16,540(r1)
	stw	r17,544(r1)
	stw	r18,548(r1)
	stw	r19,552(r1)
	stw	r20,556(r1)
	stw	r21,560(r1)
	stw	r22,564(r1)
	stw	r23,568(r1)
	stw	r24,572(r1)
	stw	r25,576(r1)
	stw	r26,580(r1)
	stw	r27,584(r1)
	stw	r28,588(r1)
	stw	r29,592(r1)
	stw	r30,596(r1)
	mr	r30,r3
	stw	r31,600(r1)
	stw	r11,616(r1)
	stw	r0,636(r1)
	stw	r5,640(r1)
	lwz	r11,636(r1)
	bne	cr0,l602
	addi	r10,r1,52
	li	r4,0
	li	r5,468
	mr	r3,r10
	stw	r10,636(r1)
	bl	_memset
l602:
	li	r11,0
	li	r31,0
	li	r10,1
	stw	r11,36(r1)
	lwz	r27,@__playerStateFields(r2)
	stw	r10,40(r1)
	addi	r27,r27,4
	lwz	r29,36(r1)
	lwz	r8,40(r1)
	lwz	r7,640(r1)
	lwz	r6,636(r1)
l718:
	lwz	r10,0(r27)
	add	r9,r6,r10
	lwzx	r12,r10,r7
	lwz	r11,0(r9)
	cmpw	cr0,r11,r12
	beq	cr0,l608
	mr	r29,r8
l608:
	addi	r31,r31,1
	addi	r8,r8,1
	addi	r27,r27,12
	cmpwi	cr0,r31,48
	blt	cr0,l718
	mr	r3,r30
	stw	r6,636(r1)
	stw	r7,640(r1)
	stw	r29,36(r1)
	lwz	r4,36(r1)
	bl	_MSG_WriteByte
	li	r31,0
	lwz	r12,36(r1)
	lwz	r11,_oldsize(r2)
	subfic	r10,r12,48
	add	r0,r11,r10
	stw	r0,_oldsize(r2)
	lwz	r11,36(r1)
	cmpwi	cr0,r11,0
	ble	cr0,l611
	lwz	r28,@__playerStateFields(r2)
	lwz	r19,@__playerStateFields(r2)
	lwz	r26,36(r1)
	addi	r28,r28,8
	lwz	r25,640(r1)
	addi	r19,r19,4
	lwz	r24,636(r1)
l719:
	lwz	r9,0(r19)
	add	r29,r25,r9
	lwzx	r11,r9,r24
	lwz	r12,0(r29)
	cmpw	cr0,r11,r12
	bne	cr0,l614
	li	r4,0
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	b	l622
l614:
	li	r4,1
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	lwz	r11,0(r28)
	cmpwi	cr0,r11,0
	bne	cr0,l616
	lis	r12,17200
	lfs	f11,0(r29)
	fctiwz	f0,f11
	stfd	f0,520(r1)
	lwz	r10,524(r1)
	stw	r12,520(r1)
	xoris	r12,r10,32768
	stw	r12,524(r1)
	lfd	f10,520(r1)
	lfd	f13,l289(r2)
	fsub	f10,f10,f13
	fcmpu	cr0,f10,f11
	bne	cr0,l618
	addic.	r27,r10,4096
	blt	cr0,l618
	cmpwi	cr0,r27,8192
	bge	cr0,l618
	li	r4,0
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,13
	mr	r3,r30
	mr	r4,r27
	bl	_MSG_WriteBits
	b	l622
l618:
	li	r4,1
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,32
	mr	r3,r30
	lwz	r10,0(r29)
	mr	r4,r10
	bl	_MSG_WriteBits
	b	l622
l616:
	mr	r3,r30
	lwz	r10,0(r28)
	lwz	r9,0(r29)
	mr	r5,r10
	mr	r4,r9
	bl	_MSG_WriteBits
l622:
	addi	r31,r31,1
	addi	r19,r19,12
	addi	r28,r28,12
	cmpw	cr0,r31,r26
	blt	cr0,l719
	stw	r24,636(r1)
	stw	r25,640(r1)
l611:
	li	r15,0
	li	r31,0
	lwz	r11,640(r1)
	addi	r0,r11,184
	stw	r0,36(r1)
	lwz	r11,636(r1)
	lwz	r9,36(r1)
	addi	r6,r11,184
l730:
	lwz	r11,0(r9)
	lwz	r12,0(r6)
	cmpw	cr0,r11,r12
	beq	cr0,l628
	li	r11,1
	slw	r10,r11,r31
	or	r15,r10,r15
l628:
	addi	r31,r31,1
	addi	r9,r9,4
	addi	r6,r6,4
	cmpwi	cr0,r31,16
	blt	cr0,l730
	li	r16,0
	li	r31,0
	lwz	r11,640(r1)
	addi	r0,r11,248
	stw	r0,40(r1)
	lwz	r11,636(r1)
	lwz	r8,40(r1)
	addi	r25,r11,248
l731:
	lwz	r11,0(r8)
	lwz	r12,0(r25)
	cmpw	cr0,r11,r12
	beq	cr0,l634
	li	r11,1
	slw	r10,r11,r31
	or	r16,r10,r16
l634:
	addi	r31,r31,1
	addi	r8,r8,4
	addi	r25,r25,4
	cmpwi	cr0,r31,16
	blt	cr0,l731
	li	r13,0
	li	r31,0
	lwz	r11,640(r1)
	addi	r0,r11,376
	stw	r0,44(r1)
	lwz	r11,636(r1)
	lwz	r7,44(r1)
	addi	r23,r11,376
l732:
	lwz	r11,0(r7)
	lwz	r12,0(r23)
	cmpw	cr0,r11,r12
	beq	cr0,l640
	li	r11,1
	slw	r10,r11,r31
	or	r13,r10,r13
l640:
	addi	r31,r31,1
	addi	r7,r7,4
	addi	r23,r23,4
	cmpwi	cr0,r31,16
	blt	cr0,l732
	li	r14,0
	li	r31,0
	lwz	r11,640(r1)
	addi	r0,r11,312
	stw	r0,48(r1)
	lwz	r11,636(r1)
	lwz	r24,48(r1)
	addi	r26,r11,312
l733:
	lwz	r11,0(r24)
	lwz	r12,0(r26)
	cmpw	cr0,r11,r12
	beq	cr0,l646
	li	r11,1
	slw	r10,r11,r31
	or	r14,r10,r14
l646:
	addi	r31,r31,1
	addi	r24,r24,4
	addi	r26,r26,4
	cmpwi	cr0,r31,16
	blt	cr0,l733
	cmpwi	cr0,r15,0
	bne	cr0,l648
	cmpwi	cr0,r16,0
	bne	cr0,l648
	cmpwi	cr0,r13,0
	bne	cr0,l648
	cmpwi	cr0,r14,0
	bne	cr0,l648
	li	r4,0
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	lwz	r11,_oldsize(r2)
	addi	r0,r11,4
	stw	r0,_oldsize(r2)
	b	l687
l648:
	li	r4,1
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	cmpwi	cr0,r15,0
	beq	cr0,l653
	li	r4,1
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,16
	mr	r3,r30
	mr	r4,r15
	bl	_MSG_WriteBits
	li	r31,0
	lwz	r18,36(r1)
l734:
	li	r11,1
	slw	r10,r11,r31
	and.	r10,r10,r15
	beq	cr0,l659
	mr	r3,r30
	lwz	r10,0(r18)
	mr	r4,r10
	bl	_MSG_WriteShort
l659:
	addi	r31,r31,1
	addi	r18,r18,4
	cmpwi	cr0,r31,16
	blt	cr0,l734
	b	l660
l653:
	li	r4,0
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
l660:
	cmpwi	cr0,r16,0
	beq	cr0,l662
	li	r4,1
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,16
	mr	r3,r30
	mr	r4,r16
	bl	_MSG_WriteBits
	li	r31,0
	lwz	r21,40(r1)
l735:
	li	r11,1
	slw	r10,r11,r31
	and.	r10,r10,r16
	beq	cr0,l668
	mr	r3,r30
	lwz	r10,0(r21)
	mr	r4,r10
	bl	_MSG_WriteShort
l668:
	addi	r31,r31,1
	addi	r21,r21,4
	cmpwi	cr0,r31,16
	blt	cr0,l735
	b	l669
l662:
	li	r4,0
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
l669:
	cmpwi	cr0,r13,0
	beq	cr0,l671
	li	r4,1
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,16
	mr	r3,r30
	mr	r4,r13
	bl	_MSG_WriteBits
	li	r31,0
	lwz	r22,44(r1)
l736:
	li	r11,1
	slw	r10,r11,r31
	and.	r10,r10,r13
	beq	cr0,l677
	mr	r3,r30
	lwz	r10,0(r22)
	mr	r4,r10
	bl	_MSG_WriteShort
l677:
	addi	r31,r31,1
	addi	r22,r22,4
	cmpwi	cr0,r31,16
	blt	cr0,l736
	b	l678
l671:
	li	r4,0
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
l678:
	cmpwi	cr0,r14,0
	beq	cr0,l680
	li	r4,1
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
	li	r5,16
	mr	r3,r30
	mr	r4,r14
	bl	_MSG_WriteBits
	li	r31,0
	lwz	r20,48(r1)
l737:
	li	r11,1
	slw	r10,r11,r31
	and.	r10,r10,r14
	beq	cr0,l686
	mr	r3,r30
	lwz	r10,0(r20)
	mr	r4,r10
	bl	_MSG_WriteLong
l686:
	addi	r31,r31,1
	addi	r20,r20,4
	cmpwi	cr0,r31,16
	blt	cr0,l737
	b	l687
l680:
	li	r4,0
	mr	r3,r30
	li	r5,1
	bl	_MSG_WriteBits
l687:
	lwz	r11,616(r1)
	lwz	r13,528(r1)
	lwz	r14,532(r1)
	mtlr	r11
	lwz	r15,536(r1)
	lwz	r16,540(r1)
	lwz	r17,544(r1)
	lwz	r18,548(r1)
	lwz	r19,552(r1)
	lwz	r20,556(r1)
	lwz	r21,560(r1)
	lwz	r22,564(r1)
	lwz	r23,568(r1)
	lwz	r24,572(r1)
	lwz	r25,576(r1)
	lwz	r26,580(r1)
	lwz	r27,584(r1)
	lwz	r28,588(r1)
	lwz	r29,592(r1)
	lwz	r30,596(r1)
	lwz	r31,600(r1)
	addi	r1,r1,608
	blr
	.type	_MSG_WriteDeltaPlayerstate,@function
	.size	_MSG_WriteDeltaPlayerstate,$-_MSG_WriteDeltaPlayerstate
# stacksize=608+??
	.global	@__MSG_ReadDeltaPlayerstate
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_ReadDeltaPlayerstate
_MSG_ReadDeltaPlayerstate:
	mflr	r11
	stwu	r1,-592(r1)
	stw	r13,516(r1)
	stw	r14,520(r1)
	stw	r15,524(r1)
	stw	r16,528(r1)
	stw	r17,532(r1)
	stw	r18,536(r1)
	mr.	r18,r4
	stw	r19,540(r1)
	mr	r19,r5
	stw	r20,544(r1)
	stw	r21,548(r1)
	stw	r22,552(r1)
	stw	r23,556(r1)
	stw	r24,560(r1)
	stw	r25,564(r1)
	stw	r26,568(r1)
	stw	r27,572(r1)
	stw	r28,576(r1)
	stw	r29,580(r1)
	mr	r29,r3
	stw	r30,584(r1)
	stw	r31,588(r1)
	stw	r11,600(r1)
	bne	cr0,l751
	addi	r10,r1,40
	li	r4,0
	li	r5,468
	mr	r18,r10
	mr	r3,r10
	bl	_memset
l751:
	addi	r11,r18,-4
	addi	r12,r19,-4
	li	r0,14
	mtctr	r0
l878:
	lwz	r0,4(r11)
	stw	r0,4(r12)
	lwz	r0,8(r11)
	stw	r0,8(r12)
	lwz	r0,12(r11)
	stw	r0,12(r12)
	lwz	r0,16(r11)
	stw	r0,16(r12)
	lwz	r0,20(r11)
	stw	r0,20(r12)
	lwz	r0,24(r11)
	stw	r0,24(r12)
	lwz	r0,28(r11)
	stw	r0,28(r12)
	lwzu	r0,32(r11)
	stwu	r0,32(r12)
	bdnz	l878
	addi	r15,r29,28
	addi	r14,r29,24
	lwzu	r0,4(r11)
	stwu	r0,4(r12)
	lwzu	r0,4(r11)
	stwu	r0,4(r12)
	lwzu	r0,4(r11)
	stwu	r0,4(r12)
	lwzu	r0,4(r11)
	stwu	r0,4(r12)
	lwzu	r0,4(r11)
	stwu	r0,4(r12)
	lwz	r9,0(r14)
	lwz	r11,0(r15)
	cmpwi	cr0,r11,0
	bne	cr0,l753
	slwi	r10,r9,3&31
	addi	r13,r10,-10
	b	l754
l753:
	addi	r10,r9,-1
	lwz	r12,0(r15)
	slwi	r10,r10,3&31
	add	r10,r10,r12
	addi	r13,r10,-10
l754:
	lwz	r10,_cl_shownet(r2)
	lwz	r6,32(r10)
	cmpwi	cr0,r6,2
	bge	cr0,l755
	cmpwi	cr0,r6,-2
	bne	cr0,l756
l755:
	li	r20,1
	stw	r9,28(r1)
	lwz	r3,@_l758(r2)
	bl	_Com_Printf
	b	l759
l756:
	li	r20,0
l759:
	mr	r3,r29
	bl	_MSG_ReadByte
	li	r31,0
	mr	r16,r3
	lwz	r28,@__playerStateFields(r2)
	cmpwi	cr0,r16,0
	ble	cr0,l872
	lwz	r27,@__playerStateFields(r2)
	lwz	r23,@__playerStateFields(r2)
	addi	r27,r27,8
	addi	r23,r23,4
l866:
	li	r4,1
	mr	r3,r29
	lwz	r10,0(r23)
	add	r26,r18,r10
	add	r30,r19,r10
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	bne	cr0,l765
	lwz	r11,0(r26)
	stw	r11,0(r30)
	b	l780
l765:
	lwz	r11,0(r27)
	cmpwi	cr0,r11,0
	bne	cr0,l768
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	bne	cr0,l770
	li	r4,13
	mr	r3,r29
	bl	_MSG_ReadBits
	lis	r12,17200
	mr	r10,r3
	addi	r10,r10,-4096
	cmpwi	cr0,r20,0
	stw	r12,508(r1)
	xoris	r12,r10,32768
	stw	r12,512(r1)
	lfd	f0,508(r1)
	lfd	f13,l289(r2)
	fsub	f0,f0,f13
	stfs	f0,0(r30)
	beq	cr0,l780
	lwz	r11,0(r28)
	stw	r11,28(r1)
	stw	r10,32(r1)
	lwz	r3,@_l773(r2)
	bl	_Com_Printf
	b	l780
l770:
	li	r4,32
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r20,0
	stw	r3,0(r30)
	beq	cr0,l780
	lwz	r11,0(r28)
	stw	r11,28(r1)
	lfs	f11,0(r30)
	stfd	f11,32(r1)
	lwz	r3,@_l777(r2)
	lfd	f12,32(r1)
	bl	_Com_Printf
	b	l780
l768:
	mr	r3,r29
	lwz	r10,0(r27)
	mr	r4,r10
	bl	_MSG_ReadBits
	cmpwi	cr0,r20,0
	stw	r3,0(r30)
	beq	cr0,l780
	lwz	r11,0(r28)
	stw	r11,28(r1)
	lwz	r11,0(r30)
	stw	r11,32(r1)
	lwz	r3,@_l781(r2)
	bl	_Com_Printf
l780:
	addi	r31,r31,1
	addi	r28,r28,12
	addi	r23,r23,12
	addi	r27,r27,12
	cmpw	cr0,r31,r16
	blt	cr0,l866
l872:
	cmpwi	cr0,r16,48
	mulli	r10,r16,12
	lwz	r11,@__playerStateFields(r2)
	mr	r31,r16
	add	r28,r11,r10
	bge	cr0,l873
	addi	r8,r28,4
l867:
	addi	r31,r31,1
	lwz	r10,0(r8)
	addi	r8,r8,12
	cmpwi	cr0,r31,48
	add	r9,r18,r10
	lwz	r11,0(r9)
	stwx	r11,r10,r19
	blt	cr0,l867
l873:
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	beq	cr0,l877
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	beq	cr0,l874
	lwz	r10,_cl_shownet(r2)
	lwz	r11,32(r10)
	cmpwi	cr0,r11,4
	bne	cr0,l791
	lwz	r11,@_l793(r2)
	stw	r11,28(r1)
	lwz	r3,@_l792(r2)
	bl	_Com_Printf
l791:
	li	r4,16
	mr	r3,r29
	bl	_MSG_ReadBits
	li	r31,0
	mr	r26,r3
	addi	r22,r19,184
l868:
	li	r11,1
	slw	r10,r11,r31
	and.	r10,r10,r26
	beq	cr0,l799
	mr	r3,r29
	bl	_MSG_ReadShort
	stw	r3,0(r22)
l799:
	addi	r31,r31,1
	addi	r22,r22,4
	cmpwi	cr0,r31,16
	blt	cr0,l868
l874:
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	beq	cr0,l875
	lwz	r10,_cl_shownet(r2)
	lwz	r11,32(r10)
	cmpwi	cr0,r11,4
	bne	cr0,l803
	lwz	r11,@_l805(r2)
	stw	r11,28(r1)
	lwz	r3,@_l804(r2)
	bl	_Com_Printf
l803:
	li	r4,16
	mr	r3,r29
	bl	_MSG_ReadBits
	li	r31,0
	mr	r26,r3
	addi	r25,r19,248
l869:
	li	r11,1
	slw	r10,r11,r31
	and.	r10,r10,r26
	beq	cr0,l811
	mr	r3,r29
	bl	_MSG_ReadShort
	stw	r3,0(r25)
l811:
	addi	r31,r31,1
	addi	r25,r25,4
	cmpwi	cr0,r31,16
	blt	cr0,l869
l875:
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	beq	cr0,l876
	lwz	r10,_cl_shownet(r2)
	lwz	r11,32(r10)
	cmpwi	cr0,r11,4
	bne	cr0,l815
	lwz	r11,@_l817(r2)
	stw	r11,28(r1)
	lwz	r3,@_l816(r2)
	bl	_Com_Printf
l815:
	li	r4,16
	mr	r3,r29
	bl	_MSG_ReadBits
	li	r31,0
	mr	r26,r3
	addi	r24,r19,376
l870:
	li	r11,1
	slw	r10,r11,r31
	and.	r10,r10,r26
	beq	cr0,l823
	mr	r3,r29
	bl	_MSG_ReadShort
	stw	r3,0(r24)
l823:
	addi	r31,r31,1
	addi	r24,r24,4
	cmpwi	cr0,r31,16
	blt	cr0,l870
l876:
	li	r4,1
	mr	r3,r29
	bl	_MSG_ReadBits
	cmpwi	cr0,r3,0
	beq	cr0,l877
	lwz	r10,_cl_shownet(r2)
	lwz	r11,32(r10)
	cmpwi	cr0,r11,4
	bne	cr0,l827
	lwz	r11,@_l829(r2)
	stw	r11,28(r1)
	lwz	r3,@_l828(r2)
	bl	_Com_Printf
l827:
	li	r4,16
	mr	r3,r29
	bl	_MSG_ReadBits
	li	r31,0
	mr	r26,r3
	addi	r21,r19,312
l871:
	li	r11,1
	slw	r10,r11,r31
	and.	r10,r10,r26
	beq	cr0,l835
	mr	r3,r29
	bl	_MSG_ReadLong
	stw	r3,0(r21)
l835:
	addi	r31,r31,1
	addi	r21,r21,4
	cmpwi	cr0,r31,16
	blt	cr0,l871
l877:
	cmpwi	cr0,r20,0
	beq	cr0,l837
	lwz	r11,0(r15)
	cmpwi	cr0,r11,0
	bne	cr0,l839
	lwz	r11,0(r14)
	slwi	r10,r11,3&31
	addi	r7,r10,-10
	b	l840
l839:
	lwz	r11,0(r14)
	lwz	r12,0(r15)
	addi	r10,r11,-1
	slwi	r10,r10,3&31
	add	r10,r10,r12
	addi	r7,r10,-10
l840:
	sub	r10,r7,r13
	stw	r10,28(r1)
	lwz	r3,@_l841(r2)
	bl	_Com_Printf
l837:
	lwz	r11,600(r1)
	lwz	r13,516(r1)
	lwz	r14,520(r1)
	mtlr	r11
	lwz	r15,524(r1)
	lwz	r16,528(r1)
	lwz	r17,532(r1)
	lwz	r18,536(r1)
	lwz	r19,540(r1)
	lwz	r20,544(r1)
	lwz	r21,548(r1)
	lwz	r22,552(r1)
	lwz	r23,556(r1)
	lwz	r24,560(r1)
	lwz	r25,564(r1)
	lwz	r26,568(r1)
	lwz	r27,572(r1)
	lwz	r28,576(r1)
	lwz	r29,580(r1)
	lwz	r30,584(r1)
	lwz	r31,588(r1)
	addi	r1,r1,592
	blr
	.type	_MSG_ReadDeltaPlayerstate,@function
	.size	_MSG_ReadDeltaPlayerstate,$-_MSG_ReadDeltaPlayerstate
# stacksize=592+??
	.tocd
	.align	2
@_l758:
	.long	l758
	.section	.rodata
	.align	2
	.type	l758,@object
	.size	l758,18
	.align	2
l758:
	.byte	37
	.byte	51
	.byte	105
	.byte	58
	.byte	32
	.byte	112
	.byte	108
	.byte	97
	.byte	121
	.byte	101
	.byte	114
	.byte	115
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l773:
	.long	l773
	.section	.rodata
	.align	2
	.type	l773,@object
	.size	l773,7
	.align	2
l773:
	.byte	37
	.byte	115
	.byte	58
	.byte	37
	.byte	105
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l777:
	.long	l777
	.section	.rodata
	.align	2
	.type	l777,@object
	.size	l777,7
	.align	2
l777:
	.byte	37
	.byte	115
	.byte	58
	.byte	37
	.byte	102
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l781:
	.long	l781
	.section	.rodata
	.align	2
	.type	l781,@object
	.size	l781,7
	.align	2
l781:
	.byte	37
	.byte	115
	.byte	58
	.byte	37
	.byte	105
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l792:
	.long	l792
	.section	.rodata
	.align	2
	.type	l792,@object
	.size	l792,4
	.align	2
l792:
	.byte	37
	.byte	115
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l793:
	.long	l793
	.section	.rodata
	.align	2
	.type	l793,@object
	.size	l793,9
	.align	2
l793:
	.byte	80
	.byte	83
	.byte	95
	.byte	83
	.byte	84
	.byte	65
	.byte	84
	.byte	83
	.byte	0
	.tocd
	.align	2
@_l804:
	.long	l804
	.section	.rodata
	.align	2
	.type	l804,@object
	.size	l804,4
	.align	2
l804:
	.byte	37
	.byte	115
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l805:
	.long	l805
	.section	.rodata
	.align	2
	.type	l805,@object
	.size	l805,14
	.align	2
l805:
	.byte	80
	.byte	83
	.byte	95
	.byte	80
	.byte	69
	.byte	82
	.byte	83
	.byte	73
	.byte	83
	.byte	84
	.byte	65
	.byte	78
	.byte	84
	.byte	0
	.tocd
	.align	2
@_l816:
	.long	l816
	.section	.rodata
	.align	2
	.type	l816,@object
	.size	l816,4
	.align	2
l816:
	.byte	37
	.byte	115
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l817:
	.long	l817
	.section	.rodata
	.align	2
	.type	l817,@object
	.size	l817,8
	.align	2
l817:
	.byte	80
	.byte	83
	.byte	95
	.byte	65
	.byte	77
	.byte	77
	.byte	79
	.byte	0
	.tocd
	.align	2
@_l828:
	.long	l828
	.section	.rodata
	.align	2
	.type	l828,@object
	.size	l828,4
	.align	2
l828:
	.byte	37
	.byte	115
	.byte	32
	.byte	0
	.tocd
	.align	2
@_l829:
	.long	l829
	.section	.rodata
	.align	2
	.type	l829,@object
	.size	l829,12
	.align	2
l829:
	.byte	80
	.byte	83
	.byte	95
	.byte	80
	.byte	79
	.byte	87
	.byte	69
	.byte	82
	.byte	85
	.byte	80
	.byte	83
	.byte	0
	.tocd
	.align	2
@_l841:
	.long	l841
	.section	.rodata
	.align	2
	.type	l841,@object
	.size	l841,12
	.align	2
l841:
	.byte	32
	.byte	40
	.byte	37
	.byte	105
	.byte	32
	.byte	98
	.byte	105
	.byte	116
	.byte	115
	.byte	41
	.byte	10
	.byte	0
	.global	@__MSG_initHuffman
#vsc cpu 603
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global	_MSG_initHuffman
_MSG_initHuffman:
	mflr	r11
	stwu	r1,-64(r1)
	stw	r27,32(r1)
	stw	r28,36(r1)
	stw	r29,40(r1)
	stw	r30,44(r1)
	stw	r31,48(r1)
	stw	r11,72(r1)
	li	r11,1
	stw	r11,l5(r2)
	lwz	r3,@_l4(r2)
	bl	_Huff_Init
	li	r30,0
	lwz	r31,@__msg_hData(r2)
	lwz	r29,@__msg_hData(r2)
l899:
	li	r28,0
	lwz	r11,0(r31)
	cmpwi	cr0,r11,0
	ble	cr0,l902
	mr	r10,r30
	clrlwi	r27,r10,24
l900:
	mr	r4,r27
	lwz	r3,@_l4(r2)
	bl	_Huff_addRef
	mr	r4,r27
	lwz	r3,@_l4(r2)
	addi	r3,r3,28700
	bl	_Huff_addRef
	addi	r28,r28,1
	lwz	r12,0(r29)
	cmpw	cr0,r28,r12
	blt	cr0,l900
l902:
	addi	r30,r30,1
	addi	r29,r29,4
	addi	r31,r31,4
	cmpwi	cr0,r30,256
	blt	cr0,l899
	lwz	r11,72(r1)
	lwz	r27,32(r1)
	lwz	r28,36(r1)
	mtlr	r11
	lwz	r29,40(r1)
	lwz	r30,44(r1)
	lwz	r31,48(r1)
	addi	r1,r1,64
	blr
	.type	_MSG_initHuffman,@function
	.size	_MSG_initHuffman,$-_MSG_initHuffman
# stacksize=64+??
	.global	_oldsize
	.tocd
	.align	2
	.type	_oldsize,@object
	.size	_oldsize,4
	.align	2
_oldsize:
	.4byte	0
	.global	_kbitmask
	.global	@__kbitmask
	.tocd
	.align	2
@__kbitmask:
	.long	_kbitmask
	.global	@__kbitmask
	.data
	.align	2
	.type	_kbitmask,@object
	.size	_kbitmask,128
	.align	2
_kbitmask:
	.4byte	1
	.4byte	3
	.4byte	7
	.4byte	15
	.4byte	31
	.4byte	63
	.4byte	127
	.4byte	255
	.4byte	511
	.4byte	1023
	.4byte	2047
	.4byte	4095
	.4byte	8191
	.4byte	16383
	.4byte	32767
	.4byte	65535
	.4byte	131071
	.4byte	262143
	.4byte	524287
	.4byte	1048575
	.4byte	2097151
	.4byte	4194303
	.4byte	8388607
	.4byte	16777215
	.4byte	33554431
	.4byte	67108863
	.4byte	134217727
	.4byte	268435455
	.4byte	536870911
	.4byte	1073741823
	.4byte	2147483647
	.4byte	-1
	.global	_entityStateFields
	.global	@__entityStateFields
	.tocd
	.align	2
@__entityStateFields:
	.long	_entityStateFields
	.global	@__entityStateFields
	.data
	.align	2
	.type	_entityStateFields,@object
	.size	_entityStateFields,612
	.align	2
_entityStateFields:
	.4byte	l371
	.4byte	16
	.4byte	32
	.4byte	l372
	.4byte	24
	.4byte	0
	.4byte	l373
	.4byte	28
	.4byte	0
	.4byte	l374
	.4byte	36
	.4byte	0

	.4byte	l375
	.4byte	40
	.4byte	0
	.4byte	l376
	.4byte	32
	.4byte	0
	.4byte	l377
	.4byte	64
	.4byte	0

	.4byte	l378
	.4byte	44
	.4byte	0
	.4byte	l379
	.4byte	60
	.4byte	0
	.4byte	l380
	.4byte	180
	.4byte	10

	.4byte	l381
	.4byte	132
	.4byte	0
	.4byte	l382
	.4byte	4
	.4byte	8
	.4byte	l383
	.4byte	200
	.4byte	8

	.4byte	l384
	.4byte	184
	.4byte	8
	.4byte	l385
	.4byte	196
	.4byte	8
	.4byte	l386
	.4byte	148
	.4byte	10

	.4byte	l387
	.4byte	12
	.4byte	8
	.4byte	l388
	.4byte	8
	.4byte	19
	.4byte	l389
	.4byte	140
	.4byte	10

	.4byte	l390
	.4byte	192
	.4byte	8
	.4byte	l391
	.4byte	168
	.4byte	8
	.4byte	l392
	.4byte	120
	.4byte	0

	.4byte	l393
	.4byte	20
	.4byte	32
	.4byte	l394
	.4byte	48
	.4byte	8
	.4byte	l395
	.4byte	92
	.4byte	0

	.4byte	l396
	.4byte	96
	.4byte	0
	.4byte	l397
	.4byte	100
	.4byte	0
	.4byte	l398
	.4byte	176
	.4byte	24

	.4byte	l399
	.4byte	188
	.4byte	16
	.4byte	l400
	.4byte	160
	.4byte	8
	.4byte	l401
	.4byte	144
	.4byte	10

	.4byte	l402
	.4byte	156
	.4byte	8
	.4byte	l403
	.4byte	204
	.4byte	8
	.4byte	l404
	.4byte	112
	.4byte	0

	.4byte	l405
	.4byte	104
	.4byte	0
	.4byte	l406
	.4byte	108
	.4byte	0
	.4byte	l407
	.4byte	164
	.4byte	8

	.4byte	l408
	.4byte	116
	.4byte	0
	.4byte	l409
	.4byte	84
	.4byte	32
	.4byte	l410
	.4byte	52
	.4byte	32

	.4byte	l411
	.4byte	56
	.4byte	32
	.4byte	l412
	.4byte	68
	.4byte	0
	.4byte	l413
	.4byte	72
	.4byte	0

	.4byte	l414
	.4byte	76
	.4byte	0
	.4byte	l415
	.4byte	80
	.4byte	0
	.4byte	l416
	.4byte	88
	.4byte	32

	.4byte	l417
	.4byte	124
	.4byte	0
	.4byte	l418
	.4byte	128
	.4byte	0
	.4byte	l419
	.4byte	136
	.4byte	0

	.4byte	l420
	.4byte	152
	.4byte	32
	.4byte	l421
	.4byte	172
	.4byte	16
	.global	_playerStateFields
	.global	@__playerStateFields
	.tocd
	.align	2
@__playerStateFields:
	.long	_playerStateFields
	.global	@__playerStateFields
	.data
	.align	2
	.type	_playerStateFields,@object
	.size	_playerStateFields,576
	.align	2
_playerStateFields:
	.4byte	l551
	.4byte	0
	.4byte	32
	.4byte	l552
	.4byte	20
	.4byte	0
	.4byte	l553
	.4byte	24
	.4byte	0

	.4byte	l554
	.4byte	8
	.4byte	8
	.4byte	l555
	.4byte	32
	.4byte	0
	.4byte	l556
	.4byte	36
	.4byte	0

	.4byte	l557
	.4byte	156
	.4byte	0
	.4byte	l558
	.4byte	152
	.4byte	0
	.4byte	l559
	.4byte	44
	.4byte	-16

	.4byte	l560
	.4byte	28
	.4byte	0
	.4byte	l561
	.4byte	40
	.4byte	0
	.4byte	l562
	.4byte	72
	.4byte	8

	.4byte	l563
	.4byte	16
	.4byte	-16
	.4byte	l564
	.4byte	108
	.4byte	16
	.4byte	l565
	.4byte	84
	.4byte	8

	.4byte	l566
	.4byte	88
	.4byte	4
	.4byte	l567
	.4byte	112
	.4byte	8
	.4byte	l568
	.4byte	76
	.4byte	8

	.4byte	l569
	.4byte	116
	.4byte	8
	.4byte	l570
	.4byte	12
	.4byte	16
	.4byte	l571
	.4byte	68
	.4byte	10

	.4byte	l572
	.4byte	148
	.4byte	4
	.4byte	l573
	.4byte	104
	.4byte	16
	.4byte	l574
	.4byte	128
	.4byte	10

	.4byte	l575
	.4byte	48
	.4byte	16
	.4byte	l576
	.4byte	52
	.4byte	16
	.4byte	l577
	.4byte	60
	.4byte	16

	.4byte	l578
	.4byte	132
	.4byte	8
	.4byte	l579
	.4byte	164
	.4byte	-8
	.4byte	l580
	.4byte	168
	.4byte	8

	.4byte	l581
	.4byte	172
	.4byte	8
	.4byte	l582
	.4byte	176
	.4byte	8
	.4byte	l583
	.4byte	180
	.4byte	8

	.4byte	l584
	.4byte	440
	.4byte	8
	.4byte	l585
	.4byte	4
	.4byte	8
	.4byte	l586
	.4byte	56
	.4byte	16

	.4byte	l587
	.4byte	64
	.4byte	16
	.4byte	l588
	.4byte	80
	.4byte	12
	.4byte	l589
	.4byte	120
	.4byte	8

	.4byte	l590
	.4byte	124
	.4byte	8
	.4byte	l591
	.4byte	140
	.4byte	8
	.4byte	l592
	.4byte	144
	.4byte	5

	.4byte	l593
	.4byte	160
	.4byte	0
	.4byte	l594
	.4byte	92
	.4byte	0
	.4byte	l595
	.4byte	96
	.4byte	0

	.4byte	l596
	.4byte	100
	.4byte	0
	.4byte	l597
	.4byte	448
	.4byte	10
	.4byte	l598
	.4byte	444
	.4byte	16
	.global	_msg_hData
	.global	@__msg_hData
	.tocd
	.align	2
@__msg_hData:
	.long	_msg_hData
	.global	@__msg_hData
	.data
	.align	2
	.type	_msg_hData,@object
	.size	_msg_hData,1024
	.align	2
_msg_hData:
	.4byte	250315
	.4byte	41193
	.4byte	6292
	.4byte	7106
	.4byte	3730
	.4byte	3750
	.4byte	6110
	.4byte	23283
	.4byte	33317
	.4byte	6950
	.4byte	7838
	.4byte	9714
	.4byte	9257
	.4byte	17259
	.4byte	3949
	.4byte	1778
	.4byte	8288
	.4byte	1604
	.4byte	1590
	.4byte	1663
	.4byte	1100
	.4byte	1213
	.4byte	1238
	.4byte	1134
	.4byte	1749
	.4byte	1059
	.4byte	1246
	.4byte	1149
	.4byte	1273
	.4byte	4486
	.4byte	2805
	.4byte	3472
	.4byte	21819
	.4byte	1159
	.4byte	1670
	.4byte	1066
	.4byte	1043
	.4byte	1012
	.4byte	1053
	.4byte	1070
	.4byte	1726
	.4byte	888
	.4byte	1180
	.4byte	850
	.4byte	960
	.4byte	780
	.4byte	1752
	.4byte	3296
	.4byte	10630
	.4byte	4514
	.4byte	5881
	.4byte	2685
	.4byte	4650
	.4byte	3837
	.4byte	2093
	.4byte	1867
	.4byte	2584
	.4byte	1949
	.4byte	1972
	.4byte	940
	.4byte	1134
	.4byte	1788
	.4byte	1670
	.4byte	1206
	.4byte	5719
	.4byte	6128
	.4byte	7222
	.4byte	6654
	.4byte	3710
	.4byte	3795
	.4byte	1492
	.4byte	1524
	.4byte	2215
	.4byte	1140
	.4byte	1355
	.4byte	971
	.4byte	2180
	.4byte	1248
	.4byte	1328
	.4byte	1195
	.4byte	1770
	.4byte	1078
	.4byte	1264
	.4byte	1266
	.4byte	1168
	.4byte	965
	.4byte	1155
	.4byte	1186
	.4byte	1347
	.4byte	1228
	.4byte	1529
	.4byte	1600
	.4byte	2617
	.4byte	2048
	.4byte	2546
	.4byte	3275
	.4byte	2410
	.4byte	3585
	.4byte	2504
	.4byte	2800
	.4byte	2675
	.4byte	6146
	.4byte	3663
	.4byte	2840
	.4byte	14253
	.4byte	3164
	.4byte	2221
	.4byte	1687
	.4byte	3208
	.4byte	2739
	.4byte	3512
	.4byte	4796
	.4byte	4091
	.4byte	3515
	.4byte	5288
	.4byte	4016
	.4byte	7937
	.4byte	6031
	.4byte	5360
	.4byte	3924
	.4byte	4892
	.4byte	3743
	.4byte	4566
	.4byte	4807
	.4byte	5852
	.4byte	6400
	.4byte	6225
	.4byte	8291
	.4byte	23243
	.4byte	7838
	.4byte	7073
	.4byte	8935
	.4byte	5437
	.4byte	4483
	.4byte	3641
	.4byte	5256
	.4byte	5312
	.4byte	5328
	.4byte	5370
	.4byte	3492
	.4byte	2458
	.4byte	1694
	.4byte	1821
	.4byte	2121
	.4byte	1916
	.4byte	1149
	.4byte	1516
	.4byte	1367
	.4byte	1236
	.4byte	1029
	.4byte	1258
	.4byte	1104
	.4byte	1245
	.4byte	1006
	.4byte	1149
	.4byte	1025
	.4byte	1241
	.4byte	952
	.4byte	1287
	.4byte	997
	.4byte	1713
	.4byte	1009
	.4byte	1187
	.4byte	879
	.4byte	1099
	.4byte	929
	.4byte	1078
	.4byte	951
	.4byte	1656
	.4byte	930
	.4byte	1153
	.4byte	1030
	.4byte	1262
	.4byte	1062
	.4byte	1214
	.4byte	1060
	.4byte	1621
	.4byte	930
	.4byte	1106
	.4byte	912
	.4byte	1034
	.4byte	892
	.4byte	1158
	.4byte	990
	.4byte	1175
	.4byte	850
	.4byte	1121
	.4byte	903
	.4byte	1087
	.4byte	920
	.4byte	1144
	.4byte	1056
	.4byte	3462
	.4byte	2240
	.4byte	4397
	.4byte	12136
	.4byte	7758
	.4byte	1345
	.4byte	1307
	.4byte	3278
	.4byte	1950
	.4byte	886
	.4byte	1023
	.4byte	1112
	.4byte	1077
	.4byte	1042
	.4byte	1061
	.4byte	1071
	.4byte	1484
	.4byte	1001
	.4byte	1096
	.4byte	915
	.4byte	1052
	.4byte	995
	.4byte	1070
	.4byte	876
	.4byte	1111
	.4byte	851
	.4byte	1059
	.4byte	805
	.4byte	1112
	.4byte	923
	.4byte	1103
	.4byte	817
	.4byte	1899
	.4byte	1872
	.4byte	976
	.4byte	841
	.4byte	1127
	.4byte	956
	.4byte	1159
	.4byte	950
	.4byte	7791
	.4byte	954
	.4byte	1289
	.4byte	933
	.4byte	1127
	.4byte	3207
	.4byte	1020
	.4byte	927
	.4byte	1355
	.4byte	768
	.4byte	1040
	.4byte	745
	.4byte	952
	.4byte	805
	.4byte	1073
	.4byte	740
	.4byte	1013
	.4byte	805
	.4byte	1008
	.4byte	796
	.4byte	996
	.4byte	1057
	.4byte	11457
	.4byte	13504
	.global	___aprintf
	.global	@____aprintf
	.global	_abort
	.global	@__abort
	.global	_memcpy
	.global	@__memcpy
	.global	_memset
	.global	@__memset
	.global	_Q_strncpyz
	.global	@__Q_strncpyz
	.global	_Com_Error
	.global	@__Com_Error
	.global	_Com_Printf
	.global	@__Com_Printf
	.global	_Huff_Init
	.global	@__Huff_Init
	.global	_Huff_addRef
	.global	@__Huff_addRef
	.global	_Huff_offsetReceive
	.global	@__Huff_offsetReceive
	.global	_Huff_offsetTransmit
	.global	@__Huff_offsetTransmit
	.global	_Huff_putBit
	.global	@__Huff_putBit
	.global	_Huff_getBit
	.global	@__Huff_getBit
	.global	_Huff_getBloc
	.global	@__Huff_getBloc
	.global	_Huff_setBloc
	.global	@__Huff_setBloc
	.global	_pcount
	.global	@__pcount
	.tocd
	.align	2
@__pcount:
	.long	_pcount
	.global	@__pcount
	.lcomm	_pcount,1024
	.global	_cl_shownet
	.tocd
	.align	2
@_l371:
	.long	l371
	.section	.rodata
	.align	2
	.type	l371,@object
	.size	l371,11
	.align	2
l371:
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l372:
	.long	l372
	.section	.rodata
	.align	2
	.type	l372,@object
	.size	l372,14
	.align	2
l372:
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	66
	.byte	97
	.byte	115
	.byte	101
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l373:
	.long	l373
	.section	.rodata
	.align	2
	.type	l373,@object
	.size	l373,14
	.align	2
l373:
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	66
	.byte	97
	.byte	115
	.byte	101
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l374:
	.long	l374
	.section	.rodata
	.align	2
	.type	l374,@object
	.size	l374,15
	.align	2
l374:
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	68
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l375:
	.long	l375
	.section	.rodata
	.align	2
	.type	l375,@object
	.size	l375,15
	.align	2
l375:
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	68
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l376:
	.long	l376
	.section	.rodata
	.align	2
	.type	l376,@object
	.size	l376,14
	.align	2
l376:
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	66
	.byte	97
	.byte	115
	.byte	101
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l377:
	.long	l377
	.section	.rodata
	.align	2
	.type	l377,@object
	.size	l377,15
	.align	2
l377:
	.byte	97
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	66
	.byte	97
	.byte	115
	.byte	101
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l378:
	.long	l378
	.section	.rodata
	.align	2
	.type	l378,@object
	.size	l378,15
	.align	2
l378:
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	68
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l379:
	.long	l379
	.section	.rodata
	.align	2
	.type	l379,@object
	.size	l379,15
	.align	2
l379:
	.byte	97
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	66
	.byte	97
	.byte	115
	.byte	101
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l380:
	.long	l380
	.section	.rodata
	.align	2
	.type	l380,@object
	.size	l380,6
	.align	2
l380:
	.byte	101
	.byte	118
	.byte	101
	.byte	110
	.byte	116
	.byte	0
	.tocd
	.align	2
@_l381:
	.long	l381
	.section	.rodata
	.align	2
	.type	l381,@object
	.size	l381,11
	.align	2
l381:
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	50
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l382:
	.long	l382
	.section	.rodata
	.align	2
	.type	l382,@object
	.size	l382,6
	.align	2
l382:
	.byte	101
	.byte	116
	.byte	121
	.byte	112
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l383:
	.long	l383
	.section	.rodata
	.align	2
	.type	l383,@object
	.size	l383,10
	.align	2
l383:
	.byte	116
	.byte	111
	.byte	114
	.byte	115
	.byte	111
	.byte	65
	.byte	110
	.byte	105
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l384:
	.long	l384
	.section	.rodata
	.align	2
	.type	l384,@object
	.size	l384,9
	.align	2
l384:
	.byte	101
	.byte	118
	.byte	101
	.byte	110
	.byte	80
	.byte	97
	.byte	114
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l385:
	.long	l385
	.section	.rodata
	.align	2
	.type	l385,@object
	.size	l385,9
	.align	2
l385:
	.byte	108
	.byte	101
	.byte	103
	.byte	115
	.byte	65
	.byte	110
	.byte	105
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l386:
	.long	l386
	.section	.rodata
	.align	2
	.type	l386,@object
	.size	l386,16
	.align	2
l386:
	.byte	103
	.byte	114
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	78
	.byte	117
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l387:
	.long	l387
	.section	.rodata
	.align	2
	.type	l387,@object
	.size	l387,11
	.align	2
l387:
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	84
	.byte	121
	.byte	112
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l388:
	.long	l388
	.section	.rodata
	.align	2
	.type	l388,@object
	.size	l388,7
	.align	2
l388:
	.byte	101
	.byte	70
	.byte	108
	.byte	97
	.byte	103
	.byte	115
	.byte	0
	.tocd
	.align	2
@_l389:
	.long	l389
	.section	.rodata
	.align	2
	.type	l389,@object
	.size	l389,15
	.align	2
l389:
	.byte	111
	.byte	116
	.byte	104
	.byte	101
	.byte	114
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	78
	.byte	117
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l390:
	.long	l390
	.section	.rodata
	.align	2
	.type	l390,@object
	.size	l390,7
	.align	2
l390:
	.byte	119
	.byte	101
	.byte	97
	.byte	112
	.byte	111
	.byte	110
	.byte	0
	.tocd
	.align	2
@_l391:
	.long	l391
	.section	.rodata
	.align	2
	.type	l391,@object
	.size	l391,10
	.align	2
l391:
	.byte	99
	.byte	108
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	78
	.byte	117
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l392:
	.long	l392
	.section	.rodata
	.align	2
	.type	l392,@object
	.size	l392,10
	.align	2
l392:
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l393:
	.long	l393
	.section	.rodata
	.align	2
	.type	l393,@object
	.size	l393,15
	.align	2
l393:
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	68
	.byte	117
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	0
	.tocd
	.align	2
@_l394:
	.long	l394
	.section	.rodata
	.align	2
	.type	l394,@object
	.size	l394,12
	.align	2
l394:
	.byte	97
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	84
	.byte	121
	.byte	112
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l395:
	.long	l395
	.section	.rodata
	.align	2
	.type	l395,@object
	.size	l395,10
	.align	2
l395:
	.byte	111
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l396:
	.long	l396
	.section	.rodata
	.align	2
	.type	l396,@object
	.size	l396,10
	.align	2
l396:
	.byte	111
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l397:
	.long	l397
	.section	.rodata
	.align	2
	.type	l397,@object
	.size	l397,10
	.align	2
l397:
	.byte	111
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l398:
	.long	l398
	.section	.rodata
	.align	2
	.type	l398,@object
	.size	l398,6
	.align	2
l398:
	.byte	115
	.byte	111
	.byte	108
	.byte	105
	.byte	100
	.byte	0
	.tocd
	.align	2
@_l399:
	.long	l399
	.section	.rodata
	.align	2
	.type	l399,@object
	.size	l399,9
	.align	2
l399:
	.byte	112
	.byte	111
	.byte	119
	.byte	101
	.byte	114
	.byte	117
	.byte	112
	.byte	115
	.byte	0
	.tocd
	.align	2
@_l400:
	.long	l400
	.section	.rodata
	.align	2
	.type	l400,@object
	.size	l400,11
	.align	2
l400:
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	105
	.byte	110
	.byte	100
	.byte	101
	.byte	120
	.byte	0
	.tocd
	.align	2
@_l401:
	.long	l401
	.section	.rodata
	.align	2
	.type	l401,@object
	.size	l401,16
	.align	2
l401:
	.byte	111
	.byte	116
	.byte	104
	.byte	101
	.byte	114
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	78
	.byte	117
	.byte	109
	.byte	50
	.byte	0
	.tocd
	.align	2
@_l402:
	.long	l402
	.section	.rodata
	.align	2
	.type	l402,@object
	.size	l402,10
	.align	2
l402:
	.byte	108
	.byte	111
	.byte	111
	.byte	112
	.byte	83
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	0
	.tocd
	.align	2
@_l403:
	.long	l403
	.section	.rodata
	.align	2
	.type	l403,@object
	.size	l403,9
	.align	2
l403:
	.byte	103
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	105
	.byte	99
	.byte	49
	.byte	0
	.tocd
	.align	2
@_l404:
	.long	l404
	.section	.rodata
	.align	2
	.type	l404,@object
	.size	l404,11
	.align	2
l404:
	.byte	111
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	50
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l405:
	.long	l405
	.section	.rodata
	.align	2
	.type	l405,@object
	.size	l405,11
	.align	2
l405:
	.byte	111
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	50
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l406:
	.long	l406
	.section	.rodata
	.align	2
	.type	l406,@object
	.size	l406,11
	.align	2
l406:
	.byte	111
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	50
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l407:
	.long	l407
	.section	.rodata
	.align	2
	.type	l407,@object
	.size	l407,12
	.align	2
l407:
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	105
	.byte	110
	.byte	100
	.byte	101
	.byte	120
	.byte	50
	.byte	0
	.tocd
	.align	2
@_l408:
	.long	l408
	.section	.rodata
	.align	2
	.type	l408,@object
	.size	l408,10
	.align	2
l408:
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l409:
	.long	l409
	.section	.rodata
	.align	2
	.type	l409,@object
	.size	l409,5
	.align	2
l409:
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l410:
	.long	l410
	.section	.rodata
	.align	2
	.type	l410,@object
	.size	l410,12
	.align	2
l410:
	.byte	97
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l411:
	.long	l411
	.section	.rodata
	.align	2
	.type	l411,@object
	.size	l411,16
	.align	2
l411:
	.byte	97
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	68
	.byte	117
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	0
	.tocd
	.align	2
@_l412:
	.long	l412
	.section	.rodata
	.align	2
	.type	l412,@object
	.size	l412,15
	.align	2
l412:
	.byte	97
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	66
	.byte	97
	.byte	115
	.byte	101
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l413:
	.long	l413
	.section	.rodata
	.align	2
	.type	l413,@object
	.size	l413,16
	.align	2
l413:
	.byte	97
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	68
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l414:
	.long	l414
	.section	.rodata
	.align	2
	.type	l414,@object
	.size	l414,16
	.align	2
l414:
	.byte	97
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	68
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l415:
	.long	l415
	.section	.rodata
	.align	2
	.type	l415,@object
	.size	l415,16
	.align	2
l415:
	.byte	97
	.byte	112
	.byte	111
	.byte	115
	.byte	46
	.byte	116
	.byte	114
	.byte	68
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l416:
	.long	l416
	.section	.rodata
	.align	2
	.type	l416,@object
	.size	l416,6
	.align	2
l416:
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	50
	.byte	0
	.tocd
	.align	2
@_l417:
	.long	l417
	.section	.rodata
	.align	2
	.type	l417,@object
	.size	l417,10
	.align	2
l417:
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l418:
	.long	l418
	.section	.rodata
	.align	2
	.type	l418,@object
	.size	l418,11
	.align	2
l418:
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	50
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l419:
	.long	l419
	.section	.rodata
	.align	2
	.type	l419,@object
	.size	l419,11
	.align	2
l419:
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	50
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l420:
	.long	l420
	.section	.rodata
	.align	2
	.type	l420,@object
	.size	l420,14
	.align	2
l420:
	.byte	99
	.byte	111
	.byte	110
	.byte	115
	.byte	116
	.byte	97
	.byte	110
	.byte	116
	.byte	76
	.byte	105
	.byte	103
	.byte	104
	.byte	116
	.byte	0
	.tocd
	.align	2
@_l421:
	.long	l421
	.section	.rodata
	.align	2
	.type	l421,@object
	.size	l421,6
	.align	2
l421:
	.byte	102
	.byte	114
	.byte	97
	.byte	109
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l551:
	.long	l551
	.section	.rodata
	.align	2
	.type	l551,@object
	.size	l551,12
	.align	2
l551:
	.byte	99
	.byte	111
	.byte	109
	.byte	109
	.byte	97
	.byte	110
	.byte	100
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l552:
	.long	l552
	.section	.rodata
	.align	2
	.type	l552,@object
	.size	l552,10
	.align	2
l552:
	.byte	111
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l553:
	.long	l553
	.section	.rodata
	.align	2
	.type	l553,@object
	.size	l553,10
	.align	2
l553:
	.byte	111
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l554:
	.long	l554
	.section	.rodata
	.align	2
	.type	l554,@object
	.size	l554,9
	.align	2
l554:
	.byte	98
	.byte	111
	.byte	98
	.byte	67
	.byte	121
	.byte	99
	.byte	108
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l555:
	.long	l555
	.section	.rodata
	.align	2
	.type	l555,@object
	.size	l555,12
	.align	2
l555:
	.byte	118
	.byte	101
	.byte	108
	.byte	111
	.byte	99
	.byte	105
	.byte	116
	.byte	121
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l556:
	.long	l556
	.section	.rodata
	.align	2
	.type	l556,@object
	.size	l556,12
	.align	2
l556:
	.byte	118
	.byte	101
	.byte	108
	.byte	111
	.byte	99
	.byte	105
	.byte	116
	.byte	121
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l557:
	.long	l557
	.section	.rodata
	.align	2
	.type	l557,@object
	.size	l557,14
	.align	2
l557:
	.byte	118
	.byte	105
	.byte	101
	.byte	119
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l558:
	.long	l558
	.section	.rodata
	.align	2
	.type	l558,@object
	.size	l558,14
	.align	2
l558:
	.byte	118
	.byte	105
	.byte	101
	.byte	119
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l559:
	.long	l559
	.section	.rodata
	.align	2
	.type	l559,@object
	.size	l559,11
	.align	2
l559:
	.byte	119
	.byte	101
	.byte	97
	.byte	112
	.byte	111
	.byte	110
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l560:
	.long	l560
	.section	.rodata
	.align	2
	.type	l560,@object
	.size	l560,10
	.align	2
l560:
	.byte	111
	.byte	114
	.byte	105
	.byte	103
	.byte	105
	.byte	110
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l561:
	.long	l561
	.section	.rodata
	.align	2
	.type	l561,@object
	.size	l561,12
	.align	2
l561:
	.byte	118
	.byte	101
	.byte	108
	.byte	111
	.byte	99
	.byte	105
	.byte	116
	.byte	121
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l562:
	.long	l562
	.section	.rodata
	.align	2
	.type	l562,@object
	.size	l562,10
	.align	2
l562:
	.byte	108
	.byte	101
	.byte	103
	.byte	115
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	114
	.byte	0
	.tocd
	.align	2
@_l563:
	.long	l563
	.section	.rodata
	.align	2
	.type	l563,@object
	.size	l563,8
	.align	2
l563:
	.byte	112
	.byte	109
	.byte	95
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l564:
	.long	l564
	.section	.rodata
	.align	2
	.type	l564,@object
	.size	l564,14
	.align	2
l564:
	.byte	101
	.byte	118
	.byte	101
	.byte	110
	.byte	116
	.byte	83
	.byte	101
	.byte	113
	.byte	117
	.byte	101
	.byte	110
	.byte	99
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l565:
	.long	l565
	.section	.rodata
	.align	2
	.type	l565,@object
	.size	l565,10
	.align	2
l565:
	.byte	116
	.byte	111
	.byte	114
	.byte	115
	.byte	111
	.byte	65
	.byte	110
	.byte	105
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l566:
	.long	l566
	.section	.rodata
	.align	2
	.type	l566,@object
	.size	l566,12
	.align	2
l566:
	.byte	109
	.byte	111
	.byte	118
	.byte	101
	.byte	109
	.byte	101
	.byte	110
	.byte	116
	.byte	68
	.byte	105
	.byte	114
	.byte	0
	.tocd
	.align	2
@_l567:
	.long	l567
	.section	.rodata
	.align	2
	.type	l567,@object
	.size	l567,10
	.align	2
l567:
	.byte	101
	.byte	118
	.byte	101
	.byte	110
	.byte	116
	.byte	115
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l568:
	.long	l568
	.section	.rodata
	.align	2
	.type	l568,@object
	.size	l568,9
	.align	2
l568:
	.byte	108
	.byte	101
	.byte	103
	.byte	115
	.byte	65
	.byte	110
	.byte	105
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l569:
	.long	l569
	.section	.rodata
	.align	2
	.type	l569,@object
	.size	l569,10
	.align	2
l569:
	.byte	101
	.byte	118
	.byte	101
	.byte	110
	.byte	116
	.byte	115
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l570:
	.long	l570
	.section	.rodata
	.align	2
	.type	l570,@object
	.size	l570,9
	.align	2
l570:
	.byte	112
	.byte	109
	.byte	95
	.byte	102
	.byte	108
	.byte	97
	.byte	103
	.byte	115
	.byte	0
	.tocd
	.align	2
@_l571:
	.long	l571
	.section	.rodata
	.align	2
	.type	l571,@object
	.size	l571,16
	.align	2
l571:
	.byte	103
	.byte	114
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	69
	.byte	110
	.byte	116
	.byte	105
	.byte	116
	.byte	121
	.byte	78
	.byte	117
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l572:
	.long	l572
	.section	.rodata
	.align	2
	.type	l572,@object
	.size	l572,12
	.align	2
l572:
	.byte	119
	.byte	101
	.byte	97
	.byte	112
	.byte	111
	.byte	110
	.byte	115
	.byte	116
	.byte	97
	.byte	116
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l573:
	.long	l573
	.section	.rodata
	.align	2
	.type	l573,@object
	.size	l573,7
	.align	2
l573:
	.byte	101
	.byte	70
	.byte	108
	.byte	97
	.byte	103
	.byte	115
	.byte	0
	.tocd
	.align	2
@_l574:
	.long	l574
	.section	.rodata
	.align	2
	.type	l574,@object
	.size	l574,14
	.align	2
l574:
	.byte	101
	.byte	120
	.byte	116
	.byte	101
	.byte	114
	.byte	110
	.byte	97
	.byte	108
	.byte	69
	.byte	118
	.byte	101
	.byte	110
	.byte	116
	.byte	0
	.tocd
	.align	2
@_l575:
	.long	l575
	.section	.rodata
	.align	2
	.type	l575,@object
	.size	l575,8
	.align	2
l575:
	.byte	103
	.byte	114
	.byte	97
	.byte	118
	.byte	105
	.byte	116
	.byte	121
	.byte	0
	.tocd
	.align	2
@_l576:
	.long	l576
	.section	.rodata
	.align	2
	.type	l576,@object
	.size	l576,6
	.align	2
l576:
	.byte	115
	.byte	112
	.byte	101
	.byte	101
	.byte	100
	.byte	0
	.tocd
	.align	2
@_l577:
	.long	l577
	.section	.rodata
	.align	2
	.type	l577,@object
	.size	l577,16
	.align	2
l577:
	.byte	100
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	95
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l578:
	.long	l578
	.section	.rodata
	.align	2
	.type	l578,@object
	.size	l578,18
	.align	2
l578:
	.byte	101
	.byte	120
	.byte	116
	.byte	101
	.byte	114
	.byte	110
	.byte	97
	.byte	108
	.byte	69
	.byte	118
	.byte	101
	.byte	110
	.byte	116
	.byte	80
	.byte	97
	.byte	114
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l579:
	.long	l579
	.section	.rodata
	.align	2
	.type	l579,@object
	.size	l579,11
	.align	2
l579:
	.byte	118
	.byte	105
	.byte	101
	.byte	119
	.byte	104
	.byte	101
	.byte	105
	.byte	103
	.byte	104
	.byte	116
	.byte	0
	.tocd
	.align	2
@_l580:
	.long	l580
	.section	.rodata
	.align	2
	.type	l580,@object
	.size	l580,12
	.align	2
l580:
	.byte	100
	.byte	97
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	69
	.byte	118
	.byte	101
	.byte	110
	.byte	116
	.byte	0
	.tocd
	.align	2
@_l581:
	.long	l581
	.section	.rodata
	.align	2
	.type	l581,@object
	.size	l581,10
	.align	2
l581:
	.byte	100
	.byte	97
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	89
	.byte	97
	.byte	119
	.byte	0
	.tocd
	.align	2
@_l582:
	.long	l582
	.section	.rodata
	.align	2
	.type	l582,@object
	.size	l582,12
	.align	2
l582:
	.byte	100
	.byte	97
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	80
	.byte	105
	.byte	116
	.byte	99
	.byte	104
	.byte	0
	.tocd
	.align	2
@_l583:
	.long	l583
	.section	.rodata
	.align	2
	.type	l583,@object
	.size	l583,12
	.align	2
l583:
	.byte	100
	.byte	97
	.byte	109
	.byte	97
	.byte	103
	.byte	101
	.byte	67
	.byte	111
	.byte	117
	.byte	110
	.byte	116
	.byte	0
	.tocd
	.align	2
@_l584:
	.long	l584
	.section	.rodata
	.align	2
	.type	l584,@object
	.size	l584,9
	.align	2
l584:
	.byte	103
	.byte	101
	.byte	110
	.byte	101
	.byte	114
	.byte	105
	.byte	99
	.byte	49
	.byte	0
	.tocd
	.align	2
@_l585:
	.long	l585
	.section	.rodata
	.align	2
	.type	l585,@object
	.size	l585,8
	.align	2
l585:
	.byte	112
	.byte	109
	.byte	95
	.byte	116
	.byte	121
	.byte	112
	.byte	101
	.byte	0
	.tocd
	.align	2
@_l586:
	.long	l586
	.section	.rodata
	.align	2
	.type	l586,@object
	.size	l586,16
	.align	2
l586:
	.byte	100
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	95
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l587:
	.long	l587
	.section	.rodata
	.align	2
	.type	l587,@object
	.size	l587,16
	.align	2
l587:
	.byte	100
	.byte	101
	.byte	108
	.byte	116
	.byte	97
	.byte	95
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l588:
	.long	l588
	.section	.rodata
	.align	2
	.type	l588,@object
	.size	l588,11
	.align	2
l588:
	.byte	116
	.byte	111
	.byte	114
	.byte	115
	.byte	111
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	114
	.byte	0
	.tocd
	.align	2
@_l589:
	.long	l589
	.section	.rodata
	.align	2
	.type	l589,@object
	.size	l589,14
	.align	2
l589:
	.byte	101
	.byte	118
	.byte	101
	.byte	110
	.byte	116
	.byte	80
	.byte	97
	.byte	114
	.byte	109
	.byte	115
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l590:
	.long	l590
	.section	.rodata
	.align	2
	.type	l590,@object
	.size	l590,14
	.align	2
l590:
	.byte	101
	.byte	118
	.byte	101
	.byte	110
	.byte	116
	.byte	80
	.byte	97
	.byte	114
	.byte	109
	.byte	115
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l591:
	.long	l591
	.section	.rodata
	.align	2
	.type	l591,@object
	.size	l591,10
	.align	2
l591:
	.byte	99
	.byte	108
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	78
	.byte	117
	.byte	109
	.byte	0
	.tocd
	.align	2
@_l592:
	.long	l592
	.section	.rodata
	.align	2
	.type	l592,@object
	.size	l592,7
	.align	2
l592:
	.byte	119
	.byte	101
	.byte	97
	.byte	112
	.byte	111
	.byte	110
	.byte	0
	.tocd
	.align	2
@_l593:
	.long	l593
	.section	.rodata
	.align	2
	.type	l593,@object
	.size	l593,14
	.align	2
l593:
	.byte	118
	.byte	105
	.byte	101
	.byte	119
	.byte	97
	.byte	110
	.byte	103
	.byte	108
	.byte	101
	.byte	115
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l594:
	.long	l594
	.section	.rodata
	.align	2
	.type	l594,@object
	.size	l594,16
	.align	2
l594:
	.byte	103
	.byte	114
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	101
	.byte	80
	.byte	111
	.byte	105
	.byte	110
	.byte	116
	.byte	91
	.byte	48
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l595:
	.long	l595
	.section	.rodata
	.align	2
	.type	l595,@object
	.size	l595,16
	.align	2
l595:
	.byte	103
	.byte	114
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	101
	.byte	80
	.byte	111
	.byte	105
	.byte	110
	.byte	116
	.byte	91
	.byte	49
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l596:
	.long	l596
	.section	.rodata
	.align	2
	.type	l596,@object
	.size	l596,16
	.align	2
l596:
	.byte	103
	.byte	114
	.byte	97
	.byte	112
	.byte	112
	.byte	108
	.byte	101
	.byte	80
	.byte	111
	.byte	105
	.byte	110
	.byte	116
	.byte	91
	.byte	50
	.byte	93
	.byte	0
	.tocd
	.align	2
@_l597:
	.long	l597
	.section	.rodata
	.align	2
	.type	l597,@object
	.size	l597,12
	.align	2
l597:
	.byte	106
	.byte	117
	.byte	109
	.byte	112
	.byte	112
	.byte	97
	.byte	100
	.byte	95
	.byte	101
	.byte	110
	.byte	116
	.byte	0
	.tocd
	.align	2
@_l598:
	.long	l598
	.section	.rodata
	.align	2
	.type	l598,@object
	.size	l598,10
	.align	2
l598:
	.byte	108
	.byte	111
	.byte	111
	.byte	112
	.byte	83
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	0
	.tocd
	.align	2
	.type	l5,@object
	.size	l5,4
	.align	2
l5:
	.4byte	0
	.tocd
	.align	2
@_l4:
	.long	l4
	.lcomm	l4,57400
	.tocd
	.align	2
	.align	2
l477:
	.long	0x00000000
	.align	3
l290:
	.long	0x3f768000,0x00000000
	.align	3
l289:
	.long	0x43300000,0x80000000
	.align	2
l231:
	.long	0xbf800000
	.align	2
l208:
	.long	0x47800000
	.align	2
l205:
	.long	0x43b40000
	.align	2
l204:
	.long	0x43800000
