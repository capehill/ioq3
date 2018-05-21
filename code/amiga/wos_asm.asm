
	.text
	.align	2
	.sdreg	r2
	.align	4
	.global _rint

_rint:
	lfs	f13,two23(r2)
	fabs	f0,f1
	fsubs	f12,f13,f13	# generate 0.0 
	fcmpu	cr7,f0,f13	# if (fabs(x) > TWO23)
	fcmpu	cr6,f1,f12	# if (x > 0.0) 
	bnllr-	cr7
	bng-	cr6, .lessthanzero

	fadds	f1,f1,f13	# x+= TWO23 
	fsubs	f1,f1,f13	# x-= TWO23
	fabs	f1,f1		# if (x == 0.0)
	blr			# x = 0.0; 

.lessthanzero:
	bnllr-	cr6		# if (x < 0.0) 
	fsubs	f1,f1,f13	# x -= TWO23 
	fadds	f1,f1,f13	# x += TWO23 
	fnabs	f1,f1		# if (x == 0.0) 
	blr			# x = -0.0;

	.type	_rint,@function
	.size	_rint,$-_rint

#
	.tocd
	.align	2
	.section	.rodata
	.align	2

two23:
	.long   0x4B000000

	

