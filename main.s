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
	stmfd	sp!, {r4, lr}
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
	mov	r3, #1280
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
	ldr	r2, .L67+40
	ldr	r1, .L67+44
	mov	r3, #1024
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+48
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L67+52
	ldr	r2, .L67+56
	str	r3, [r1]
	str	r3, [r2]
	ldmfd	sp!, {r4, lr}
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
	.word	100726784
	.word	startbgMap
	.word	100679680
	.word	starttopbgTiles
	.word	100724736
	.word	starttopbgMap
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
	mov	r4, #7936
	mov	lr, #128
	mov	r3, #1
	mov	r6, #4864
	mov	r5, #0
	ldr	r1, .L71
	ldrh	r0, [r1]
	strh	r4, [r2, #10]	@ movhi
	sub	r4, r4, #252
	strh	r4, [r2, #8]	@ movhi
	ldr	r4, .L71+4
	ldrh	ip, [r2, #4]
	strh	lr, [r2, #132]	@ movhi
	strh	r4, [r2, #130]	@ movhi
	ldr	lr, .L71+8
	ldr	r4, .L71+12
	orr	r0, r0, r3
	orr	ip, ip, #8
	strh	r6, [r2]	@ movhi
	strh	r5, [r2, #128]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #8]	@ movhi
	ldr	r2, .L71+16
	str	r4, [lr, #4092]
	ldr	r1, .L71+20
	ldr	r0, .L71+24
	bl	playSoundA
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L72:
	.align	2
.L71:
	.word	67109376
	.word	-1266
	.word	50360320
	.word	interruptHandler
	.word	11025
	.word	2294088
	.word	likey
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
	mov	r3, #448
	mov	r2, #100663296
	ldr	r1, .L75+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L75+16
	ldr	r1, .L75+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L75+24
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L76:
	.align	2
.L75:
	.word	instructionsbgPal
	.word	loadPalette
	.word	DMANow
	.word	instructionsbgTiles
	.word	100726784
	.word	instructionsbgMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	instructions
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L82
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L82+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	b	goToStart
.L83:
	.align	2
.L82:
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
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	stmfd	sp!, {r4, lr}
	ldr	r0, .L86
	strh	r3, [r2]	@ movhi
	ldr	r3, .L86+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L86+8
	mov	r3, #736
	mov	r2, #100663296
	ldr	r1, .L86+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L86+16
	ldr	r1, .L86+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L86+24
	ldr	r1, .L86+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L86+32
	ldr	r1, .L86+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L86+40
	ldr	r1, .L86+44
	ldr	r0, .L86+48
	bl	playSoundA
	mov	r2, #2
	ldr	r3, .L86+52
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L87:
	.align	2
.L86:
	.word	gamebgPal
	.word	loadPalette
	.word	DMANow
	.word	gamebgTiles
	.word	100726784
	.word	gamebgMap
	.word	100728832
	.word	spritesTiles
	.word	83886592
	.word	spritesPal
	.word	11025
	.word	2454604
	.word	POWER_EXO_8_bits
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L102
	ldr	r3, [r1]
	ldr	r2, .L102+4
	add	r3, r3, #1
	smull	ip, r0, r2, r3
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L102+8
	mov	r2, r3, asr #31
	rsb	r2, r2, r0, asr #2
	ldr	r0, [r4]
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, asl #1
	add	r2, r0, #1
	str	r2, [r4]
	mov	r2, #67108864
	str	r3, [r1]
	ldr	r3, [r1, #4]
	addeq	r3, r3, #1
	streq	r3, [r1, #4]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r5, .L102+12
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L102+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L91
	ldr	r2, .L102+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L100
.L91:
	tst	r3, #4
	beq	.L88
	ldr	r3, .L102+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L101
.L88:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L101:
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToInstructions
.L100:
	ldr	r0, [r4]
	ldr	r3, .L102+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L102+28
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L91
.L103:
	.align	2
.L102:
	.word	.LANCHOR0
	.word	1717986919
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
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
	ldr	r3, .L106
	mov	lr, pc
	bx	r3
	ldr	r4, .L106+4
	mov	r2, #117440512
	ldr	r1, .L106+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L106+12
	ldr	r3, .L106+16
	mov	lr, pc
	bx	r3
	mov	r3, #96
	mov	r2, #100663296
	ldr	r1, .L106+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L106+24
	ldr	r1, .L106+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L106+32
	mov	r3, #1
	ldr	r1, .L106+36
	ldr	r0, .L106+40
	bl	playSoundB
	ldr	r3, .L106+44
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L106+48
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L107:
	.align	2
.L106:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	pausebgPal
	.word	loadPalette
	.word	pausebgTiles
	.word	100726784
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
	ldr	r3, .L122
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L122+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L109
	ldr	r2, .L122+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L120
.L109:
	tst	r3, #4
	beq	.L108
	ldr	r3, .L122+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L121
.L108:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L121:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	bl	stopSound
	mov	r3, #1
	ldr	r2, .L122+12
	ldr	r1, .L122+16
	ldr	r0, .L122+20
	bl	playSoundA
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L120:
	ldr	r0, .L122+24
	ldr	r3, .L122+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L122+32
	mov	r3, #736
	mov	r2, #100663296
	ldr	r1, .L122+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L122+40
	ldr	r1, .L122+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L122+48
	ldr	r1, .L122+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r1, .L122+56
	mov	r0, #3
	mov	r3, #256
	ldr	r2, .L122+60
	mov	lr, pc
	bx	r4
	bl	stopSound
	ldr	r3, .L122+64
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r0, #1
	moveq	r1, #128
	streq	r0, [r3, #12]
	ldreq	r2, .L122+68
	ldr	r3, .L122+72
	streqh	r1, [r2, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r0, #1
	moveq	r1, #128
	ldreq	r2, .L122+68
	streq	r0, [r3, #12]
	streqh	r1, [r2, #6]	@ movhi
	mov	r2, #2
	ldr	r3, .L122+76
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L123:
	.align	2
.L122:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	2294088
	.word	likey
	.word	gamebgPal
	.word	loadPalette
	.word	DMANow
	.word	gamebgTiles
	.word	100726784
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
	ldr	r5, .L126
	mov	lr, pc
	bx	r5
	ldr	r4, .L126+4
	mov	r2, #117440512
	ldr	r1, .L126+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L126+12
	ldr	r3, .L126+16
	mov	lr, pc
	bx	r3
	mov	r3, #384
	mov	r2, #100663296
	ldr	r1, .L126+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L126+24
	mov	r3, #1024
	ldr	r1, .L126+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L126+32
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L126+36
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L127:
	.align	2
.L126:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	winbgPal
	.word	loadPalette
	.word	winbgTiles
	.word	100726784
	.word	winbgMap
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
	ldr	r5, .L130
	mov	lr, pc
	bx	r5
	ldr	r4, .L130+4
	mov	r2, #117440512
	ldr	r1, .L130+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L130+12
	ldr	r3, .L130+16
	mov	lr, pc
	bx	r3
	mov	r3, #416
	mov	r2, #100663296
	ldr	r1, .L130+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L130+24
	mov	r3, #1024
	ldr	r1, .L130+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L130+32
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L130+36
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L131:
	.align	2
.L130:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	losebgPal
	.word	loadPalette
	.word	losebgTiles
	.word	100726784
	.word	losebgMap
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
	ldr	r3, .L160
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L133
	ldr	r2, .L160+16
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L159
.L133:
	ldr	r2, .L160+20
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L136
	ldr	r2, .L160+24
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L136
	ldr	r2, .L160+28
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L138
	tst	r3, #4
	beq	.L132
	ldr	r3, .L160+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L138
.L132:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L136:
	ldmfd	sp!, {r4, lr}
	b	goToLose
.L159:
	ldr	r3, .L160+32
	ldr	r1, [r3, #12]
	cmp	r1, #0
	strne	r2, [r3, #12]
	ldrne	r1, .L160+36
	ldr	r3, .L160+40
	strneh	r2, [r1, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	movne	r2, #0
	ldrne	r1, .L160+36
	strne	r2, [r3, #12]
	ldmfd	sp!, {r4, lr}
	strneh	r2, [r1, #6]	@ movhi
	b	goToPause
.L138:
	ldmfd	sp!, {r4, lr}
	b	goToWin
.L161:
	.align	2
.L160:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	youLose
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
	ldr	r3, .L169
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L169+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L162
	ldr	r3, .L169+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L168
.L162:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L168:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	bl	stopSound
	mov	r3, #1
	ldr	r2, .L169+12
	ldr	r1, .L169+16
	ldr	r0, .L169+20
	bl	playSoundA
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L170:
	.align	2
.L169:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	2294088
	.word	likey
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
	ldr	r3, .L184
	mov	lr, pc
	bx	r3
	ldr	r8, .L184+4
	ldr	r6, .L184+8
	ldr	r5, .L184+12
	ldr	fp, .L184+16
	ldr	r10, .L184+20
	ldr	r9, .L184+24
	ldr	r7, .L184+28
	ldr	r4, .L184+32
.L172:
	ldrh	r3, [r8]
	ldr	r2, [r6]
.L173:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L173
.L175:
	.word	.L174
	.word	.L176
	.word	.L177
	.word	.L178
	.word	.L180
	.word	.L180
.L180:
	mov	lr, pc
	bx	r7
	b	.L172
.L178:
	ldr	r3, .L184+36
	mov	lr, pc
	bx	r3
	b	.L172
.L177:
	mov	lr, pc
	bx	r9
	b	.L172
.L176:
	mov	lr, pc
	bx	r10
	b	.L172
.L174:
	mov	lr, pc
	bx	fp
	b	.L172
.L185:
	.align	2
.L184:
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
	.global	slower
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
	.type	slower, %object
	.size	slower, 4
slower:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
