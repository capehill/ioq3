	.text
	.align	2
	.sdreg	r2
	.align	4
	.global _myGlMultMatrix

_myGlMultMatrix:
	li 	r9,0
.L63:
	li 	r7,4
	mtctr 	r7
	slwi 	r0,r9,4
	addi 	r8,r9,1
	add 	r10,r0,r3
	add 	r11,r0,r5
	mr 	r9,r4
.L465:
	lfs 	f13,16(r9)
	lfs 	f0,4(r10)
	lfs 	f10,0(r9)
	fmuls 	f0,f0,f13
	lfsx 	f12,r3,r0
	lfs 	f9,32(r9)
	lfs 	f13,8(r10)
	fmadds 	f12,f12,f10,f0
	lfs 	f11,48(r9)
	lfs 	f0,12(r10)
	addi 	r9,r9,4
	fmadds 	f13,f13,f9,f12
	fmadds 	f0,f0,f11,f13
	stfs 	f0,0(r11)
	addi 	r11,r11,4
	bdnz 	.L465
	mr 	r9,r8
	cmpwi 	cr0,r9,3
	bc 	4,1,.L63
	blr

	.type	_myGlMultMatrix,@function
	.size	_myGlMultMatrix,$-_myGlMultMatrix

	.text
	.align	2
	.sdreg	r2
	.align	4
	.global _R_TransformModelToClip

_R_TransformModelToClip:
	li 	r0,4
	mtctr 	r0
	li 	r9,0
.L464:
	lfs 	f0,16(r4)
	lfs 	f13,4(r3)
	lfs 	f10,0(r4)
	fmuls 	f13,f13,f0
	lfs 	f12,0(r3)
	lfs 	f9,32(r4)
	lfs 	f0,8(r3)
	fmadds 	f12,f12,f10,f13
	lfs 	f11,48(r4)
	addi 	r4,r4,4
	fmadds 	f0,f0,f9,f12
	fadds 	f0,f0,f11
	stfsx 	f0,r9,r6
	addi 	r9,r9,4
	bdnz 	.L464
	li 	r0,4
	mtctr 	r0
	li 	r9,0
.L463:
	lfs 	f13,16(r5)
	lfs 	f0,4(r6)
	lfs 	f10,0(r5)
	fmuls 	f0,f0,f13
	lfs 	f12,0(r6)
	lfs 	f9,32(r5)
	lfs 	f13,8(r6)
	fmadds 	f12,f12,f10,f0
	lfs 	f11,48(r5)
	lfs 	f0,12(r6)
	addi 	r5,r5,4
	fmadds 	f13,f13,f9,f12
	fmadds 	f0,f0,f11,f13
	stfsx 	f0,r9,r7
	addi 	r9,r9,4
	bdnz 	.L463
	blr

	.type	_R_TransformModelToClip,@function
	.size	_R_TransformModelToClip,$-_R_TransformModelToClip
