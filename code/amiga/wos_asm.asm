
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global _rint

_rint:
	lfs	f13,two23(r2)
	fabs	f0,f1
	fsub	f12,f13,f13	# generate 0.0 
	fcmpu	cr7,f0,f13	# if (fabs(x) > TWO23)

	bgelr	cr7

	fcmpu	cr7,f1,f12	# if (x > 0.0) 
	ble	cr7, .lessthanzero
	#mtfsb0	4*cr7+lt	# Disable FE_INEXACT exception 
	fadds	f0,f1,f13	# x+= TWO23 
	fsubs	f1,f0,f13	# x-= TWO23 
	#mtfsb0	4*cr1+eq	# Clear any FE_INEXACT exception 
	blr			# x = 0.0; 

.lessthanzero:
	bgelr	cr7		# if (x < 0.0) 
	#mtfsb0	4*cr7+lt
	fsubs	f0,f13,f1	# x -= TWO23 
	fsubs	f0,f0,f13	# x += TWO23 
	fneg	f1,f0		# if (x == 0.0) 
	#mtfsb0	4*cr1+eq
	blr			# x = -0.0;

	.type	_rint,@function
	.size	_rint,$-_rint

	.tocd
	.align	2
	.section	.rodata
	.align	2

two23:
	.long   0x4B000000



