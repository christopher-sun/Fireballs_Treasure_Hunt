	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"main.c"
	.text
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L2
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L6+8
	ldr	r2, [r2]
	ldr	r7, .L6+12
	mov	r8, r1
	mov	r9, r0
	mov	r10, r3
	str	r5, [r2, #20]
	mov	r1, r0
	ldr	r2, .L6+16
	mov	r3, #910163968
	mov	r0, #1
	ldr	r4, .L6+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #2]	@ movhi
	mov	r1, r6
	ldr	r3, .L6+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r3, #128
	rsb	r0, r0, #0
	ldr	r4, .L6+28
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r7]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	mov	r0, r8
	ldr	r7, .L6+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	mov	lr, pc
	bx	r7
	ldr	r8, .L6+36
	adr	r3, .L6
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L6+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L6+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r0, [r4, #20]
	str	r5, [r4, #28]
	str	r10, [r4, #16]
	str	r3, [r4, #12]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	.align	3
.L6:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109024
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L10+8
	ldr	r2, [r2]
	ldr	r7, .L10+12
	mov	r8, r1
	mov	r9, r0
	mov	r10, r3
	str	r5, [r2, #32]
	mov	r1, r0
	ldr	r2, .L10+16
	mov	r3, #910163968
	mov	r0, #2
	ldr	r4, .L10+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #6]	@ movhi
	mov	r1, r6
	ldr	r3, .L10+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r3, #128
	rsb	r0, r0, #0
	ldr	r4, .L10+28
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r7, #4]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	mov	r0, r8
	ldr	r7, .L10+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	mov	lr, pc
	bx	r7
	ldr	r8, .L10+36
	adr	r3, .L10
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L10+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L10+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r0, [r4, #20]
	str	r5, [r4, #28]
	str	r10, [r4, #16]
	str	r3, [r4, #12]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L11:
	.align	3
.L10:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109028
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L32
	ldrh	r1, [r3, #2]
	tst	r1, #1
	strh	r2, [r3, #8]	@ movhi
	beq	.L26
	ldr	r0, .L32+4
	ldr	r3, [r0, #12]
	cmp	r3, r2
	stmfd	sp!, {r4, lr}
	beq	.L15
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #20]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #28]
	beq	.L28
.L15:
	ldr	r0, .L32+8
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #20]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #28]
	beq	.L29
.L19:
	mov	r2, #1
	ldr	r3, .L32
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #1
	ldr	r3, .L32
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L26:
	mov	r2, #1
	ldr	r3, .L32
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L28:
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L30
	ldr	r1, .L32+12
	ldr	r2, .L32+16
	ldr	r1, [r1]
	str	r3, [r0, #12]
	str	r3, [r1, #20]
	strh	r3, [r2, #2]	@ movhi
	b	.L15
.L29:
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L31
	ldr	r1, .L32+12
	ldr	r2, .L32+16
	ldr	r1, [r1]
	str	r3, [r0, #12]
	str	r3, [r1, #32]
	strh	r3, [r2, #6]	@ movhi
	b	.L19
.L30:
	ldmia	r0, {r0, r1, r2}
	bl	playSoundA
	b	.L15
.L31:
	ldmia	r0, {r0, r1, r2}
	bl	playSoundB
	b	.L19
.L33:
	.align	2
.L32:
	.word	67109376
	.word	soundA
	.word	soundB
	.word	dma
	.word	67109120
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L43
	ldr	r2, [r3, #12]
	cmp	r2, #0
	movne	r2, #0
	ldrne	r1, .L43+4
	strne	r2, [r3, #12]
	ldr	r3, .L43+8
	strneh	r2, [r1, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	movne	r2, #0
	ldrne	r1, .L43+4
	strne	r2, [r3, #12]
	strneh	r2, [r1, #6]	@ movhi
	bx	lr
.L44:
	.align	2
.L43:
	.word	soundA
	.word	67109120
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L48
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r0, #1
	moveq	r1, #128
	streq	r0, [r3, #12]
	ldreq	r2, .L48+4
	ldr	r3, .L48+8
	streqh	r1, [r2, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r0, #1
	moveq	r1, #128
	ldreq	r2, .L48+4
	streq	r0, [r3, #12]
	streqh	r1, [r2, #6]	@ movhi
	bx	lr
.L49:
	.align	2
.L48:
	.word	soundA
	.word	67109120
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L59
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L51
	mov	r2, #0
	ldr	r0, .L59+4
	ldr	r1, .L59+8
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #2]	@ movhi
.L51:
	ldr	r3, .L59+12
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bxeq	lr
	mov	r2, #0
	ldr	r0, .L59+4
	ldr	r1, .L59+8
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
	bx	lr
.L60:
	.align	2
.L59:
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.size	stopSound, .-stopSound
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	stmfd	sp!, {r4, lr}
	mov	r4, #1
	ldr	r3, .L63
	ldrh	r1, [r0, #4]
	ldrh	r2, [r3]
	ldr	lr, .L63+4
	ldr	ip, .L63+8
	orr	r2, r2, r4
	orr	r1, r1, #8
	strh	r1, [r0, #4]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	str	lr, [ip, #4092]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	67109376
	.word	interruptHandler
	.word	50360320
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	goToStart
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	ldr	r4, .L67+4
	mov	r2, #117440512
	ldr	r1, .L67+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L67+12
	ldr	r3, .L67+16
	mov	lr, pc
	bx	r3
	mov	r3, #1616
	mov	r2, #100663296
	ldr	r1, .L67+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L67+24
	ldr	r1, .L67+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #912
	ldr	r2, .L67+32
	ldr	r1, .L67+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L67+40
	ldr	r1, .L67+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mov	r3, #67108864
	ldr	r5, .L67+48
	ldr	r2, .L67+52
	str	r4, [r5]
	strh	r4, [r3, #22]	@ movhi
	strh	r4, [r3, #80]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	strh	r4, [r3, #82]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r2, .L67+56
	ldr	r3, .L67+60
	str	r4, [r5, #4]
	str	r4, [r2]
	str	r4, [r3]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	startbgPal
	.word	loadPalette
	.word	startbgTiles
	.word	100724736
	.word	startbgMap
	.word	100679680
	.word	starttopbgTiles
	.word	100720640
	.word	starttopbgMap
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	state
	.word	seed
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #67108864
	mov	r4, #40448
	mov	lr, #128
	mov	r3, #1
	mov	r6, #4864
	mov	r5, #0
	ldr	r1, .L71
	ldrh	r0, [r1]
	strh	r4, [r2, #10]	@ movhi
	ldr	r4, .L71+4
	strh	r4, [r2, #8]	@ movhi
	ldr	r4, .L71+8
	ldrh	ip, [r2, #4]
	strh	lr, [r2, #132]	@ movhi
	strh	r4, [r2, #130]	@ movhi
	ldr	lr, .L71+12
	ldr	r4, .L71+16
	orr	r0, r0, r3
	orr	ip, ip, #8
	strh	r6, [r2]	@ movhi
	strh	r5, [r2, #128]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #8]	@ movhi
	ldr	r2, .L71+20
	str	r4, [lr, #4092]
	ldr	r1, .L71+24
	ldr	r0, .L71+28
	bl	playSoundA
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L72:
	.align	2
.L71:
	.word	67109376
	.word	-25596
	.word	-1266
	.word	50360320
	.word	interruptHandler
	.word	11025
	.word	2170025
	.word	knocknock
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	stmfd	sp!, {r4, lr}
	ldr	r0, .L75
	strh	r3, [r2]	@ movhi
	ldr	r3, .L75+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L75+8
	ldr	r3, .L75+12
	mov	r2, #100663296
	ldr	r1, .L75+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L75+20
	ldr	r1, .L75+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #0
	mov	r2, #1
	ldr	r1, .L75+28
	ldr	r3, .L75+32
	str	r0, [r1]
	str	r2, [r3]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L76:
	.align	2
.L75:
	.word	instructionsbgPal
	.word	loadPalette
	.word	DMANow
	.word	5744
	.word	instructionsbgTiles
	.word	100724736
	.word	instructionsbgMap
	.word	.LANCHOR0
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	instructions
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L99
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r1, .L99+4
	ldrh	r3, [r1, #48]
	ldr	r2, .L99+8
	tst	r3, #128
	ldr	r3, [r2]
	bne	.L79
	cmp	r3, #30
	bgt	.L80
	add	r3, r3, #1
	str	r3, [r2]
.L79:
	ldr	r1, .L99+4
	ldrh	r1, [r1, #48]
	tst	r1, #64
	bne	.L81
	cmp	r3, #0
	blt	.L81
.L85:
	sub	r3, r3, #1
	str	r3, [r2]
.L81:
	mov	r2, #67108864
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #22]	@ movhi
	ldr	r3, .L99+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L82
	ldr	r2, .L99+16
	ldrh	r2, [r2]
	tst	r2, #4
	bne	.L82
.L83:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L82:
	tst	r3, #8
	beq	.L77
	ldr	r3, .L99+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L83
.L77:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L80:
	ldrh	r1, [r1, #48]
	tst	r1, #64
	beq	.L85
	b	.L81
.L100:
	.align	2
.L99:
	.word	waitForVBlank
	.word	67109120
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L103
	ldr	r3, .L103+4
	ldr	r4, .L103+8
	mov	lr, pc
	bx	r3
	mov	r3, #32
	ldr	r2, .L103+12
	ldr	r1, .L103+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L103+20
	ldr	r1, .L103+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #384
	mov	r2, #100663296
	ldr	r1, .L103+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L103+32
	ldr	r1, .L103+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L103+40
	ldr	r1, .L103+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L103+48
	ldr	r1, .L103+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L103+56
	ldr	r1, .L103+60
	ldr	r0, .L103+64
	bl	playSoundA
	mov	r2, #2
	ldr	r3, .L103+68
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L104:
	.align	2
.L103:
	.word	gamebgPal
	.word	loadPalette
	.word	DMANow
	.word	100679680
	.word	gametopbgTiles
	.word	100720640
	.word	gametopbgMap
	.word	gamebgTiles
	.word	100724736
	.word	gamebgMap
	.word	100728832
	.word	spritesTiles
	.word	83886592
	.word	spritesPal
	.word	11025
	.word	2294088
	.word	likey
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L133
	ldr	r3, [r4, #8]
	ldr	r2, .L133+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	ldr	r5, .L133+8
	mov	r2, r3, asr #31
	rsb	r2, r2, r1, asr #2
	ldr	r1, [r5]
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, asl #1
	add	r2, r1, #1
	str	r2, [r5]
	mov	r2, #67108864
	str	r3, [r4, #8]
	ldr	r3, [r4, #12]
	addeq	r3, r3, #1
	streq	r3, [r4, #12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r6, .L133+12
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L133+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	tst	r3, #32
	beq	.L108
	ldr	r2, .L133+20
	ldrh	r2, [r2]
	ands	r7, r2, #32
	beq	.L128
.L108:
	tst	r3, #16
	beq	.L109
	ldr	r2, .L133+20
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L129
.L109:
	tst	r3, #8
	beq	.L110
	ldr	r2, .L133+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L130
.L110:
	tst	r3, #4
	beq	.L105
	ldr	r3, .L133+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L131
.L105:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L130:
	ldr	r2, [r4, #4]
	cmp	r2, #0
	beq	.L132
	cmp	r2, #1
	bne	.L110
	bl	goToInstructions
	ldrh	r3, [r6]
	b	.L110
.L131:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	goToInstructions
.L129:
	ldr	r0, .L133+24
	ldr	r3, .L133+28
	mov	lr, pc
	bx	r3
	ldr	r7, .L133+32
	mov	r3, #1616
	mov	r2, #100663296
	ldr	r1, .L133+36
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #1024
	ldr	r2, .L133+40
	ldr	r1, .L133+44
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r2, #1
	ldrh	r3, [r6]
	str	r2, [r4, #4]
	b	.L109
.L128:
	ldr	r0, .L133+48
	ldr	r3, .L133+28
	mov	lr, pc
	bx	r3
	ldr	r8, .L133+32
	mov	r3, #1616
	mov	r2, #100663296
	ldr	r1, .L133+52
	mov	r0, #3
	mov	lr, pc
	bx	r8
	mov	r3, #1024
	ldr	r2, .L133+40
	ldr	r1, .L133+56
	mov	r0, #3
	mov	lr, pc
	bx	r8
	str	r7, [r4, #4]
	ldrh	r3, [r6]
	b	.L108
.L132:
	ldr	r0, [r5]
	ldr	r3, .L133+60
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L133+64
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	b	.L110
.L134:
	.align	2
.L133:
	.word	.LANCHOR0
	.word	1717986919
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	startbg2Pal
	.word	loadPalette
	.word	DMANow
	.word	startbg2Tiles
	.word	100724736
	.word	startbg2Map
	.word	startbgPal
	.word	startbgTiles
	.word	startbgMap
	.word	srand
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L137
	mov	lr, pc
	bx	r3
	ldr	r4, .L137+4
	mov	r2, #117440512
	ldr	r1, .L137+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L137+12
	ldr	r3, .L137+16
	mov	lr, pc
	bx	r3
	mov	r3, #96
	mov	r2, #100663296
	ldr	r1, .L137+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L137+32
	ldr	r1, .L137+36
	ldr	r0, .L137+40
	bl	playSoundB
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldr	r3, .L137+44
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L137+48
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L138:
	.align	2
.L137:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	pausebgPal
	.word	loadPalette
	.word	pausebgTiles
	.word	100724736
	.word	pausebgMap
	.word	11025
	.word	2182590
	.word	pauseaudio
	.word	waitForVBlank
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L153
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L153+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L140
	ldr	r2, .L153+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L151
.L140:
	tst	r3, #4
	beq	.L139
	ldr	r3, .L153+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L152
.L139:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L152:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	bl	stopSound
	mov	r3, #1
	ldr	r2, .L153+12
	ldr	r1, .L153+16
	ldr	r0, .L153+20
	bl	playSoundA
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L151:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldr	r0, .L153+24
	ldr	r3, .L153+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L153+32
	mov	r3, #384
	mov	r2, #100663296
	ldr	r1, .L153+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L153+40
	ldr	r1, .L153+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L153+48
	ldr	r1, .L153+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r1, .L153+56
	mov	r0, #3
	mov	r3, #256
	ldr	r2, .L153+60
	mov	lr, pc
	bx	r4
	bl	stopSound
	ldr	r3, .L153+64
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r0, #1
	moveq	r1, #128
	streq	r0, [r3, #12]
	ldreq	r2, .L153+68
	ldr	r3, .L153+72
	streqh	r1, [r2, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r0, #1
	moveq	r1, #128
	ldreq	r2, .L153+68
	streq	r0, [r3, #12]
	streqh	r1, [r2, #6]	@ movhi
	mov	r2, #2
	ldr	r3, .L153+76
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L154:
	.align	2
.L153:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	2170025
	.word	knocknock
	.word	gamebgPal
	.word	loadPalette
	.word	DMANow
	.word	gamebgTiles
	.word	100724736
	.word	gamebgMap
	.word	100728832
	.word	spritesTiles
	.word	spritesPal
	.word	83886592
	.word	soundA
	.word	67109120
	.word	soundB
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L157
	mov	lr, pc
	bx	r5
	ldr	r4, .L157+4
	mov	r2, #117440512
	ldr	r1, .L157+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L157+12
	ldr	r3, .L157+16
	mov	lr, pc
	bx	r3
	mov	r3, #384
	mov	r2, #100663296
	ldr	r1, .L157+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L157+24
	ldr	r1, .L157+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldr	r1, .L157+32
	ldr	r2, .L157+36
	mov	r3, #1
	ldr	r0, .L157+40
	bl	playSoundA
	ldr	r3, .L157+44
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L157+48
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L158:
	.align	2
.L157:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	winbgPal
	.word	loadPalette
	.word	winbgTiles
	.word	100724736
	.word	winbgMap
	.word	2249917
	.word	11025
	.word	cheerup
	.word	waitForVBlank
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L161
	mov	lr, pc
	bx	r5
	ldr	r4, .L161+4
	mov	r2, #117440512
	ldr	r1, .L161+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L161+12
	ldr	r3, .L161+16
	mov	lr, pc
	bx	r3
	mov	r3, #416
	mov	r2, #100663296
	ldr	r1, .L161+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L161+24
	ldr	r1, .L161+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldr	r1, .L161+32
	ldr	r2, .L161+36
	mov	r3, #1
	ldr	r0, .L161+40
	bl	playSoundA
	ldr	r3, .L161+44
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L161+48
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L162:
	.align	2
.L161:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	losebgPal
	.word	loadPalette
	.word	losebgTiles
	.word	100724736
	.word	losebgMap
	.word	2311783
	.word	11025
	.word	tt
	.word	waitForVBlank
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L188
	mov	lr, pc
	bx	r3
	ldr	r3, .L188+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L188+8
	mov	lr, pc
	bx	r3
	mov	ip, #67108864
	mov	r0, #0
	ldr	r3, .L188+12
	ldr	r3, [r3]
	rsb	r3, r3, #80
	mov	r2, r3, asl #16
	ldr	r1, .L188+16
	mov	r2, r2, lsr #16
	str	r3, [r1]
	strh	r2, [ip, #18]	@ movhi
	ldr	r3, .L188+20
	strh	r0, [ip, #16]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	str	r0, [r1, #12]
	beq	.L164
	ldr	r2, .L188+24
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L186
.L164:
	ldr	r2, .L188+28
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L187
	ldr	r2, .L188+32
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L168
	tst	r3, #4
	beq	.L163
	ldr	r3, .L188+24
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L163
.L168:
	ldmfd	sp!, {r4, lr}
	b	goToWin
.L186:
	ldr	r3, .L188+36
	ldr	r1, [r3, #12]
	cmp	r1, r0
	strne	r2, [r3, #12]
	ldrne	r1, .L188+40
	ldr	r3, .L188+44
	strneh	r2, [r1, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	movne	r2, #0
	ldrne	r1, .L188+40
	strne	r2, [r3, #12]
	ldmfd	sp!, {r4, lr}
	strneh	r2, [r1, #6]	@ movhi
	b	goToPause
.L163:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L187:
	ldmfd	sp!, {r4, lr}
	b	goToLose
.L189:
	.align	2
.L188:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	player
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	lives
	.word	enemysRemaining
	.word	soundA
	.word	67109120
	.word	soundB
	.size	game, .-game
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L197
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L190
	ldr	r3, .L197+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L196
.L190:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L196:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	bl	stopSound
	mov	r3, #1
	ldr	r2, .L197+12
	ldr	r1, .L197+16
	ldr	r0, .L197+20
	bl	playSoundA
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L198:
	.align	2
.L197:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	2170025
	.word	knocknock
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r7, fp, lr}
	ldr	r3, .L212
	mov	lr, pc
	bx	r3
	ldr	r8, .L212+4
	ldr	r6, .L212+8
	ldr	r5, .L212+12
	ldr	fp, .L212+16
	ldr	r10, .L212+20
	ldr	r9, .L212+24
	ldr	r7, .L212+28
	ldr	r4, .L212+32
.L200:
	ldrh	r3, [r8]
	ldr	r2, [r6]
.L201:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L201
.L203:
	.word	.L202
	.word	.L204
	.word	.L205
	.word	.L206
	.word	.L208
	.word	.L208
.L208:
	mov	lr, pc
	bx	r7
	b	.L200
.L206:
	ldr	r3, .L212+36
	mov	lr, pc
	bx	r3
	b	.L200
.L205:
	mov	lr, pc
	bx	r9
	b	.L200
.L204:
	mov	lr, pc
	bx	r10
	b	.L200
.L202:
	mov	lr, pc
	bx	fp
	b	.L200
.L213:
	.align	2
.L212:
	.word	initialize
	.word	buttons
	.word	state
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	lose
	.word	67109120
	.word	pause
	.size	main, .-main
	.text
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	win, .-win
	.global	which
	.global	slower
	.global	vOff
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	seed,4,4
	.comm	state,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	which, %object
	.size	which, 4
which:
	.space	4
	.type	slower, %object
	.size	slower, 4
slower:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
