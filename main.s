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
	ldr	r3, .L67+20
	mov	r2, #100663296
	ldr	r1, .L67+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L67+28
	ldr	r1, .L67+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #912
	ldr	r2, .L67+36
	ldr	r1, .L67+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L67+44
	ldr	r1, .L67+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mov	r3, #67108864
	ldr	r5, .L67+52
	ldr	r2, .L67+56
	str	r4, [r5]
	strh	r4, [r3, #22]	@ movhi
	strh	r4, [r3, #80]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	strh	r4, [r3, #82]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r2, .L67+60
	ldr	r3, .L67+64
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
	.word	4912
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
	mov	r2, #67108864
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #128
	mov	r5, #0
	mov	r3, #1
	mov	r6, #4864
	ldr	r1, .L71
	ldr	lr, .L71+4
	ldrh	r0, [r1]
	strh	lr, [r2, #12]	@ movhi
	add	lr, lr, #1016
	strh	lr, [r2, #10]	@ movhi
	ldr	lr, .L71+8
	ldrh	ip, [r2, #4]
	strh	lr, [r2, #8]	@ movhi
	strh	r5, [r2, #128]	@ movhi
	strh	r4, [r2, #132]	@ movhi
	ldr	lr, .L71+12
	ldr	r5, .L71+16
	ldr	r4, .L71+20
	orr	r0, r0, r3
	orr	ip, ip, #8
	strh	r6, [r2]	@ movhi
	strh	r5, [r2, #130]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #8]	@ movhi
	ldr	r2, .L71+24
	str	r4, [lr, #4092]
	ldr	r1, .L71+28
	ldr	r0, .L71+32
	bl	playSoundA
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L72:
	.align	2
.L71:
	.word	67109376
	.word	-26103
	.word	-25596
	.word	50360320
	.word	-1266
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
	mov	r3, #2048
	ldr	r2, .L75+20
	ldr	r1, .L75+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #1
	ldr	r4, .L75+28
	ldr	lr, .L75+32
	ldr	ip, .L75+36
	ldr	r0, .L75+40
	ldr	r2, .L75+44
	str	r3, [r4]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L76:
	.align	2
.L75:
	.word	instructionsbgPal
	.word	loadPalette
	.word	DMANow
	.word	4432
	.word	instructionsbgTiles
	.word	100724736
	.word	instructionsbgMap
	.word	instState
	.word	instPage
	.word	isDemo
	.word	demoHor
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	demo
	.type	demo, %function
demo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L84
	ldr	r3, [r3]
	cmp	r3, #0
	stmfd	sp!, {r4, r5, r6, lr}
	beq	.L81
	ldr	r3, .L84+4
	ldrh	r2, [r3, #48]
	tst	r2, #16
	beq	.L83
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L81
	ldr	r2, .L84+8
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	b	.L79
.L81:
	ldr	r3, .L84+8
	ldr	r3, [r3]
.L79:
	mov	lr, #0
	mov	r6, #100
	ldr	r4, .L84+12
	add	r3, r3, #120
	orr	ip, r3, #16384
	ldr	r5, .L84+16
	mov	r3, #16384
	ldr	r2, .L84+20
	ldr	r1, .L84+24
	mov	r0, #3
	strh	ip, [r4, #2]	@ movhi
	strh	lr, [r4, #4]	@ movhi
	strh	r6, [r4]	@ movhi
	mov	lr, pc
	bx	r5
	mov	r3, #256
	ldr	r2, .L84+28
	ldr	r1, .L84+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L83:
	ldr	r2, .L84+8
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	.L79
.L85:
	.align	2
.L84:
	.word	isDemo
	.word	67109120
	.word	demoHor
	.word	shadowOAM
	.word	DMANow
	.word	100728832
	.word	spritesTiles
	.word	83886592
	.word	spritesPal
	.size	demo, .-demo
	.align	2
	.global	instructions
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L145
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L87
	ldr	r3, .L145+4
	ldrh	r3, [r3]
	ands	r5, r3, #8
	beq	.L135
.L87:
	ldr	r3, .L145+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L97
	cmp	r3, #2
	ldreq	r6, .L145+12
	beq	.L94
	cmp	r3, #0
	beq	.L92
.L96:
	ldr	r3, .L145+16
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L135:
	ldr	r6, .L145+12
	ldr	r7, [r6]
	cmp	r7, #0
	beq	.L136
	cmp	r7, #1
	beq	.L137
	cmp	r7, #2
	beq	.L138
	cmp	r7, #3
	beq	.L139
	cmp	r7, #4
	beq	.L140
	cmp	r7, #5
	bne	.L87
	ldr	r0, .L145+20
	ldr	r3, .L145+24
	mov	lr, pc
	bx	r3
	ldr	r5, .L145+28
	mov	r3, #1792
	mov	r2, #100663296
	ldr	r1, .L145+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L145+36
	ldr	r1, .L145+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #3
	mov	r2, #1
	ldr	r3, .L145+8
	str	r1, [r6]
	str	r2, [r3]
.L97:
	ldrh	r3, [r4]
	tst	r3, #16
	ldr	r5, .L145
	beq	.L101
	ldr	r2, .L145+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L141
.L101:
	tst	r3, #64
	beq	.L102
	ldr	r2, .L145+4
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L142
.L102:
	tst	r3, #32
	beq	.L103
	ldr	r2, .L145+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L143
.L103:
	tst	r3, #128
	beq	.L96
	ldr	r3, .L145+4
	ldrh	r3, [r3]
	tst	r3, #128
	bne	.L96
	ldr	r6, .L145+12
	ldr	r3, [r6]
	cmp	r3, #3
	bne	.L96
.L104:
	ldr	r0, .L145+44
	ldr	r3, .L145+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L145+28
	mov	r3, #1792
	mov	r2, #100663296
	ldr	r1, .L145+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L145+36
	ldr	r1, .L145+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r3, [r6]
	b	.L96
.L139:
	ldr	r2, .L145+56
	ldr	r3, [r2]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2]
	bl	demo
	mov	r2, #2
	ldr	r3, .L145+8
	str	r2, [r3]
.L94:
	ldr	r0, .L145+20
	ldr	r3, .L145+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L145+28
	mov	r3, #1792
	mov	r2, #100663296
	ldr	r1, .L145+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L145+36
	ldr	r1, .L145+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #5
	str	r3, [r6]
	bl	demo
	b	.L96
.L138:
	ldr	r0, .L145+60
	ldr	r3, .L145+24
	mov	lr, pc
	bx	r3
	ldr	r7, .L145+28
	ldr	r3, .L145+64
	mov	r2, #100663296
	ldr	r1, .L145+68
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #2048
	ldr	r2, .L145+36
	ldr	r1, .L145+72
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	lr, #512
	ldr	ip, .L145+76
	mov	r3, lr
	str	r5, [r6]
	mov	r1, ip
	mov	r2, #117440512
	mov	r0, #3
	strh	lr, [ip]	@ movhi
	mov	lr, pc
	bx	r7
	ldr	r3, .L145+8
	str	r5, [r3]
.L92:
	ldrh	r3, [r4]
	tst	r3, #16
	ldr	r4, .L145
	beq	.L98
	ldr	r2, .L145+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L144
.L98:
	tst	r3, #32
	beq	.L96
	ldr	r3, .L145+4
	ldrh	r3, [r3]
	ands	r4, r3, #32
	bne	.L96
	ldr	r0, .L145+60
	ldr	r3, .L145+24
	mov	lr, pc
	bx	r3
	ldr	r5, .L145+28
	ldr	r3, .L145+64
	mov	r2, #100663296
	ldr	r1, .L145+68
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L145+36
	ldr	r1, .L145+72
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L145+12
	str	r4, [r3]
	b	.L96
.L136:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	bl	goToStart
	b	.L87
.L143:
	ldr	r6, .L145+12
	b	.L104
.L144:
	ldr	r0, .L145+80
	ldr	r3, .L145+24
	mov	lr, pc
	bx	r3
	ldr	r5, .L145+28
	ldr	r3, .L145+64
	mov	r2, #100663296
	ldr	r1, .L145+84
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L145+36
	ldr	r1, .L145+88
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #1
	ldr	r2, .L145+12
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L98
.L141:
	ldr	r0, .L145+92
	ldr	r3, .L145+24
	mov	lr, pc
	bx	r3
	ldr	r6, .L145+28
	mov	r3, #1792
	mov	r2, #100663296
	ldr	r1, .L145+96
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #2048
	ldr	r2, .L145+36
	ldr	r1, .L145+100
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r2, #4
	ldr	r6, .L145+12
	ldrh	r3, [r5]
	str	r2, [r6]
	b	.L101
.L142:
	ldr	r0, .L145+20
	ldr	r3, .L145+24
	mov	lr, pc
	bx	r3
	ldr	r5, .L145+28
	mov	r3, #1792
	mov	r2, #100663296
	ldr	r1, .L145+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L145+36
	ldr	r1, .L145+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #3
	ldr	r6, .L145+12
	ldrh	r3, [r4]
	str	r2, [r6]
	b	.L102
.L137:
	ldr	r0, .L145+44
	ldr	r3, .L145+24
	mov	lr, pc
	bx	r3
	ldr	r5, .L145+28
	mov	r3, #1792
	mov	r2, #100663296
	ldr	r1, .L145+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L145+36
	ldr	r1, .L145+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L145+8
	str	r7, [r3]
	b	.L97
.L140:
	mov	lr, #512
	ldr	ip, .L145+76
	mov	r3, lr
	mov	r2, #117440512
	mov	r1, ip
	mov	r0, #3
	ldr	r4, .L145+28
	strh	lr, [ip]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L145+8
	str	r2, [r3]
	b	.L96
.L146:
	.align	2
.L145:
	.word	oldButtons
	.word	buttons
	.word	instState
	.word	instPage
	.word	waitForVBlank
	.word	instructions4bgPal
	.word	loadPalette
	.word	DMANow
	.word	instructions4bgTiles
	.word	100724736
	.word	instructions4bgMap
	.word	instructions3bgPal
	.word	instructions3bgTiles
	.word	instructions3bgMap
	.word	isDemo
	.word	instructionsbgPal
	.word	4432
	.word	instructionsbgTiles
	.word	instructionsbgMap
	.word	shadowOAM
	.word	instructions2bgPal
	.word	instructions2bgTiles
	.word	instructions2bgMap
	.word	instructions5bgPal
	.word	instructions5bgTiles
	.word	instructions5bgMap
	.size	instructions, .-instructions
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #0
	ldrh	r2, [r3]
	eor	r2, r2, #1024
	stmfd	sp!, {r4, lr}
	ldr	r0, .L149
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	ldr	r3, .L149+4
	ldr	r4, .L149+8
	mov	lr, pc
	bx	r3
	mov	r3, #1184
	mov	r2, #100663296
	ldr	r1, .L149+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L149+16
	ldr	r1, .L149+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2080
	ldr	r2, .L149+24
	ldr	r1, .L149+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L149+32
	ldr	r1, .L149+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #7296
	ldr	r2, .L149+40
	ldr	r1, .L149+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L149+48
	ldr	r1, .L149+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L149+56
	ldr	r1, .L149+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L149+64
	ldr	r1, .L149+68
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L149+72
	ldr	r1, .L149+76
	ldr	r0, .L149+80
	bl	playSoundA
	mov	r2, #2
	ldr	r3, .L149+84
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L150:
	.align	2
.L149:
	.word	cavebgPal
	.word	loadPalette
	.word	DMANow
	.word	gamegroundbgTiles
	.word	100724736
	.word	gamegroundbgMap
	.word	100679680
	.word	gametopbgTiles
	.word	100720640
	.word	gametopbgMap
	.word	100696064
	.word	cavebgTiles
	.word	100716544
	.word	cavebgMap
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
	ldr	r4, .L179
	ldr	r3, [r4, #8]
	ldr	r2, .L179+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	ldr	r5, .L179+8
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
	ldr	r6, .L179+12
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L179+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	tst	r3, #32
	beq	.L154
	ldr	r2, .L179+20
	ldrh	r2, [r2]
	ands	r7, r2, #32
	beq	.L174
.L154:
	tst	r3, #16
	beq	.L155
	ldr	r2, .L179+20
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L175
.L155:
	tst	r3, #8
	beq	.L156
	ldr	r2, .L179+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L176
.L156:
	tst	r3, #4
	beq	.L151
	ldr	r3, .L179+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L177
.L151:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L176:
	ldr	r2, [r4, #4]
	cmp	r2, #0
	beq	.L178
	cmp	r2, #1
	bne	.L156
	bl	goToInstructions
	ldrh	r3, [r6]
	b	.L156
.L177:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	goToInstructions
.L175:
	ldr	r0, .L179+24
	ldr	r3, .L179+28
	mov	lr, pc
	bx	r3
	ldr	r7, .L179+32
	ldr	r3, .L179+36
	mov	r2, #100663296
	ldr	r1, .L179+40
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #2048
	ldr	r2, .L179+44
	ldr	r1, .L179+48
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r2, #1
	ldrh	r3, [r6]
	str	r2, [r4, #4]
	b	.L155
.L174:
	ldr	r0, .L179+52
	ldr	r3, .L179+28
	mov	lr, pc
	bx	r3
	ldr	r8, .L179+32
	ldr	r3, .L179+36
	mov	r2, #100663296
	ldr	r1, .L179+56
	mov	r0, #3
	mov	lr, pc
	bx	r8
	mov	r3, #2048
	ldr	r2, .L179+44
	ldr	r1, .L179+60
	mov	r0, #3
	mov	lr, pc
	bx	r8
	str	r7, [r4, #4]
	ldrh	r3, [r6]
	b	.L154
.L178:
	ldr	r0, [r5]
	ldr	r3, .L179+64
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L179+68
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	b	.L156
.L180:
	.align	2
.L179:
	.word	.LANCHOR0
	.word	1717986919
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	startbg2Pal
	.word	loadPalette
	.word	DMANow
	.word	4912
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
	ldr	r3, .L183
	mov	lr, pc
	bx	r3
	ldr	r4, .L183+4
	ldr	r1, .L183+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L183+12
	ldr	r0, .L183+16
	strh	r2, [r3]	@ movhi
	ldr	r3, .L183+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L183+24
	mov	r3, #1
	ldr	r1, .L183+28
	ldr	r0, .L183+32
	bl	playSoundB
	ldr	r3, .L183+36
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L183+40
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L184:
	.align	2
.L183:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	1027
	.word	pausebgBitmap
	.word	drawFullscreenImage3
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
	ldr	r3, .L199
	stmfd	sp!, {r4, r5, r6, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L199+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L186
	ldr	r2, .L199+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L197
.L186:
	tst	r3, #4
	beq	.L185
	ldr	r3, .L199+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L198
.L185:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L198:
	mov	r4, #67108864
	mov	r2, #4096
	ldr	r1, .L199+12
	strh	r2, [r4]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	r3, #512
	ldr	r5, .L199+16
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	eor	r3, r3, #768
	strh	r3, [r4]	@ movhi
	bl	stopSound
	mov	r3, #1
	ldr	r2, .L199+20
	ldr	r1, .L199+24
	ldr	r0, .L199+28
	bl	playSoundA
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L197:
	mov	r5, #67108864
	mov	r2, #5120
	ldr	r4, .L199+16
	strh	r2, [r5]	@ movhi
	ldr	r1, .L199+12
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	eor	r3, r3, #768
	strh	r3, [r5]	@ movhi
	ldr	r0, .L199+32
	ldr	r3, .L199+36
	mov	lr, pc
	bx	r3
	mov	r3, #2080
	ldr	r2, .L199+40
	ldr	r1, .L199+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L199+48
	ldr	r1, .L199+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1184
	mov	r2, #100663296
	ldr	r1, .L199+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L199+60
	ldr	r1, .L199+64
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #7296
	ldr	r2, .L199+68
	ldr	r1, .L199+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L199+76
	ldr	r1, .L199+80
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L199+84
	ldr	r1, .L199+88
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r1, .L199+92
	mov	r0, #3
	mov	r3, #256
	ldr	r2, .L199+96
	mov	lr, pc
	bx	r4
	bl	stopSound
	ldr	r3, .L199+100
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r0, #1
	moveq	r1, #128
	streq	r0, [r3, #12]
	ldreq	r2, .L199+104
	ldr	r3, .L199+108
	streqh	r1, [r2, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r0, #1
	moveq	r1, #128
	ldreq	r2, .L199+104
	streq	r0, [r3, #12]
	streqh	r1, [r2, #6]	@ movhi
	mov	r2, #2
	ldr	r3, .L199+112
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L200:
	.align	2
.L199:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	shadowOAM
	.word	DMANow
	.word	11025
	.word	2170025
	.word	knocknock
	.word	cavebgPal
	.word	loadPalette
	.word	100679680
	.word	gametopbgTiles
	.word	100720640
	.word	gametopbgMap
	.word	gamegroundbgTiles
	.word	100724736
	.word	gamegroundbgMap
	.word	100696064
	.word	cavebgTiles
	.word	100716544
	.word	cavebgMap
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L204
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r3, .L204+4
	ldr	r2, .L204+8
	ldr	r0, [r3, #16]
	ldr	r10, [r2]
	cmp	r10, r0
	movgt	r0, r10
	ldr	r2, .L204+12
	strgt	r10, [r3, #16]
	smull	r3, lr, r2, r0
	mov	r1, r0, asr #31
	smull	r3, fp, r2, r10
	ldr	r3, .L204+16
	rsb	lr, r1, lr, asr #2
	str	r1, [sp]
	smull	r4, r9, r3, r0
	smull	r1, r4, r3, r10
	smull	r1, r3, r2, lr
	str	r3, [sp, #4]
	mov	r3, r10, asr #31
	rsb	fp, r3, fp, asr #2
	smull	r1, r2, fp, r2
	ldr	r1, [sp]
	ldr	ip, .L204+20
	rsb	r1, r1, r9, asr #5
	add	r1, r1, #416
	ldr	r9, [sp, #4]
	strh	r1, [ip, #4]	@ movhi
	mov	r1, lr, asr #31
	rsb	r9, r1, r9, asr #2
	mov	r1, #43	@ movhi
	mov	r8, ip
	mov	r7, #29
	strh	r1, [ip, #2]	@ movhi
	add	r1, lr, lr, lsl #2
	sub	r1, r0, r1, asl #1
	mov	r0, #48	@ movhi
	strh	r7, [ip]	@ movhi
	mov	r6, ip
	strh	r7, [r8, #8]!	@ movhi
	strh	r0, [r8, #2]	@ movhi
	mov	r0, #53	@ movhi
	add	r9, r9, r9, lsl #2
	sub	r9, lr, r9, asl #1
	add	r9, r9, #416
	strh	r9, [ip, #12]	@ movhi
	strh	r7, [r6, #16]!	@ movhi
	add	r1, r1, #416
	strh	r0, [r6, #2]	@ movhi
	mov	r5, ip
	strh	r1, [ip, #20]	@ movhi
	mov	r1, #75	@ movhi
	strh	r1, [r5, #-24]!	@ movhi
	mov	r1, #43	@ movhi
	rsb	r3, r3, r4, asr #5
	strh	r1, [r5, #2]	@ movhi
	add	r3, r3, #416
	mov	r1, fp, asr #31
	strh	r3, [ip, #-20]	@ movhi
	rsb	r2, r1, r2, asr #2
	mov	r3, ip
	mov	r1, #75	@ movhi
	strh	r1, [r3, #-16]!	@ movhi
	mov	r1, #48	@ movhi
	add	r2, r2, r2, lsl #2
	sub	r2, fp, r2, asl #1
	add	r2, r2, #416
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [ip, #-12]	@ movhi
	mov	r3, ip
	mov	r2, #75	@ movhi
	strh	r2, [r3, #-8]!	@ movhi
	mov	r5, #53	@ movhi
	mov	lr, r3
	add	fp, fp, fp, lsl #2
	sub	fp, r10, fp, asl #1
	add	fp, fp, #416
	sub	r1, ip, #416
	strh	r5, [lr, #2]	@ movhi
	ldr	r4, .L204+24
	strh	fp, [ip, #-4]	@ movhi
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L204+28
	ldr	r3, .L204+32
	mov	lr, pc
	bx	r3
	mov	r3, #5888
	ldr	r2, .L204+36
	ldr	r1, .L204+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L204+44
	ldr	r1, .L204+48
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L204
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #768
	strh	r3, [r2]	@ movhi
	ldr	r1, .L204+52
	ldr	r2, .L204+56
	ldr	r0, .L204+60
	mov	r3, #1
	bl	playSoundA
	ldr	r3, .L204+64
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L204+68
	str	r2, [r3]
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L205:
	.align	2
.L204:
	.word	hideSprites
	.word	.LANCHOR0
	.word	totalScore
	.word	1717986919
	.word	1374389535
	.word	shadowOAM+416
	.word	DMANow
	.word	winbgPal
	.word	loadPalette
	.word	100696064
	.word	winbgTiles
	.word	100716544
	.word	winbgMap
	.word	2249917
	.word	11025
	.word	cheerup
	.word	waitForVBlank
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L229
	mov	lr, pc
	bx	r3
	ldr	r3, .L229+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L229+8
	mov	lr, pc
	bx	r3
	mov	ip, #67108864
	mov	r0, #0
	ldr	r3, .L229+12
	ldr	r3, [r3]
	rsb	r3, r3, #80
	mov	r2, r3, asl #16
	ldr	r1, .L229+16
	mov	r2, r2, lsr #16
	str	r3, [r1]
	strh	r2, [ip, #22]	@ movhi
	ldr	r3, .L229+20
	strh	r0, [ip, #20]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	str	r0, [r1, #12]
	beq	.L207
	ldr	r2, .L229+24
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L228
.L207:
	ldr	r2, .L229+28
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L210
	tst	r3, #4
	beq	.L206
	ldr	r3, .L229+24
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L206
.L210:
	ldmfd	sp!, {r4, lr}
	b	goToWin
.L228:
	ldr	r3, .L229+32
	ldr	r1, [r3, #12]
	cmp	r1, r0
	strne	r2, [r3, #12]
	ldrne	r1, .L229+36
	ldr	r3, .L229+40
	strneh	r2, [r1, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	movne	r2, #0
	ldrne	r1, .L229+36
	strne	r2, [r3, #12]
	ldmfd	sp!, {r4, lr}
	strneh	r2, [r1, #6]	@ movhi
	b	goToPause
.L206:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L230:
	.align	2
.L229:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	player
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	lives
	.word	soundA
	.word	67109120
	.word	soundB
	.size	game, .-game
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L238
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L238+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L231
	ldr	r3, .L238+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L237
.L231:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L237:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #1792
	strh	r3, [r2]	@ movhi
	bl	stopSound
	mov	r3, #1
	ldr	r2, .L238+12
	ldr	r1, .L238+16
	ldr	r0, .L238+20
	bl	playSoundA
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L239:
	.align	2
.L238:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	2170025
	.word	knocknock
	.size	win, .-win
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
	ldr	r3, .L252
	mov	lr, pc
	bx	r3
	ldr	r7, .L252+4
	ldr	r6, .L252+8
	ldr	r5, .L252+12
	ldr	fp, .L252+16
	ldr	r10, .L252+20
	ldr	r9, .L252+24
	ldr	r8, .L252+28
	ldr	r4, .L252+32
.L241:
	ldrh	r3, [r7]
	ldr	r2, [r6]
.L242:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L242
.L244:
	.word	.L243
	.word	.L245
	.word	.L246
	.word	.L247
	.word	.L248
.L248:
	ldr	r3, .L252+36
	mov	lr, pc
	bx	r3
	b	.L241
.L247:
	mov	lr, pc
	bx	r8
	b	.L241
.L246:
	mov	lr, pc
	bx	r9
	b	.L241
.L245:
	mov	lr, pc
	bx	r10
	b	.L241
.L243:
	mov	lr, pc
	bx	fp
	b	.L241
.L253:
	.align	2
.L252:
	.word	initialize
	.word	buttons
	.word	state
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	pause
	.word	67109120
	.word	win
	.size	main, .-main
	.global	highScore
	.comm	instPage,4,4
	.comm	demoHor,4,4
	.comm	isDemo,4,4
	.global	which
	.global	slower
	.global	vOff
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	instState,4,4
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
	.type	highScore, %object
	.size	highScore, 4
highScore:
	.space	4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
