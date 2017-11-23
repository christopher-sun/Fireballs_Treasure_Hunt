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
	.global	goToStart
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L3
	mov	lr, pc
	bx	r3
	ldr	r4, .L3+4
	mov	r2, #117440512
	ldr	r1, .L3+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L3+12
	ldr	r3, .L3+16
	mov	lr, pc
	bx	r3
	mov	r3, #1280
	mov	r2, #100663296
	ldr	r1, .L3+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L3+24
	ldr	r1, .L3+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #912
	ldr	r2, .L3+32
	ldr	r1, .L3+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L3+40
	ldr	r1, .L3+44
	mov	r3, #1024
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L3+48
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L3+52
	ldr	r2, .L3+56
	str	r3, [r1]
	str	r3, [r2]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
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
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #7936
	mov	r1, #4864
	ldr	r2, .L6
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	b	goToStart
.L7:
	.align	2
.L6:
	.word	7684
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
	ldr	r0, .L10
	strh	r3, [r2]	@ movhi
	ldr	r3, .L10+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L10+8
	mov	r3, #448
	mov	r2, #100663296
	ldr	r1, .L10+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L10+16
	ldr	r1, .L10+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L10+24
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L11:
	.align	2
.L10:
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
	ldr	r3, .L18
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L18+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	b	goToStart
.L19:
	.align	2
.L18:
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
	ldr	r0, .L22
	strh	r3, [r2]	@ movhi
	ldr	r3, .L22+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L22+8
	mov	r3, #736
	mov	r2, #100663296
	ldr	r1, .L22+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L22+16
	ldr	r1, .L22+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L22+24
	ldr	r1, .L22+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L22+32
	ldr	r1, .L22+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L22+40
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L23:
	.align	2
.L22:
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
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L38
	ldr	r3, [r1]
	ldr	r2, .L38+4
	add	r3, r3, #1
	smull	ip, r0, r2, r3
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L38+8
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
	ldr	r5, .L38+12
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L38+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L27
	ldr	r2, .L38+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L36
.L27:
	tst	r3, #4
	beq	.L24
	ldr	r3, .L38+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L37
.L24:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L37:
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToInstructions
.L36:
	ldr	r0, [r4]
	ldr	r3, .L38+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L38+28
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L27
.L39:
	.align	2
.L38:
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
	ldr	r3, .L42
	mov	lr, pc
	bx	r3
	ldr	r4, .L42+4
	mov	r2, #117440512
	ldr	r1, .L42+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L42+12
	ldr	r3, .L42+16
	mov	lr, pc
	bx	r3
	mov	r3, #96
	mov	r2, #100663296
	ldr	r1, .L42+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L42+24
	mov	r3, #1024
	ldr	r1, .L42+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L42+32
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L42+36
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	pausebgPal
	.word	loadPalette
	.word	pausebgTiles
	.word	100726784
	.word	pausebgMap
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
	ldr	r3, .L56
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L45
	ldr	r2, .L56+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L54
.L45:
	tst	r3, #4
	beq	.L44
	ldr	r3, .L56+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L55
.L44:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L55:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L54:
	ldr	r0, .L56+12
	ldr	r3, .L56+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L56+20
	mov	r3, #736
	mov	r2, #100663296
	ldr	r1, .L56+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L56+28
	ldr	r1, .L56+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L56+36
	ldr	r1, .L56+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L56+44
	ldr	r1, .L56+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L56+52
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
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
	ldr	r5, .L60
	mov	lr, pc
	bx	r5
	ldr	r4, .L60+4
	mov	r2, #117440512
	ldr	r1, .L60+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L60+12
	ldr	r3, .L60+16
	mov	lr, pc
	bx	r3
	mov	r3, #384
	mov	r2, #100663296
	ldr	r1, .L60+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L60+24
	mov	r3, #1024
	ldr	r1, .L60+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L60+32
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L60+36
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r5, .L64
	mov	lr, pc
	bx	r5
	ldr	r4, .L64+4
	mov	r2, #117440512
	ldr	r1, .L64+8
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L64+12
	ldr	r3, .L64+16
	mov	lr, pc
	bx	r3
	mov	r3, #416
	mov	r2, #100663296
	ldr	r1, .L64+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L64+24
	mov	r3, #1024
	ldr	r1, .L64+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L64+32
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L64+36
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r3, .L86
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L67
	ldr	r2, .L86+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L85
.L67:
	ldr	r2, .L86+20
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L68
	ldr	r2, .L86+24
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L68
	ldr	r2, .L86+28
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L70
	tst	r3, #4
	beq	.L66
	ldr	r3, .L86+16
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L66
.L70:
	ldmfd	sp!, {r4, lr}
	b	goToWin
.L68:
	ldmfd	sp!, {r4, lr}
	b	goToLose
.L66:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L85:
	ldmfd	sp!, {r4, lr}
	b	goToPause
.L87:
	.align	2
.L86:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	youLose
	.word	lives
	.word	enemysRemaining
	.size	game, .-game
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L95
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L88
	ldr	r3, .L95+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L94
.L88:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L94:
	mov	r2, #67108864
	ldrh	r3, [r2]
	eor	r3, r3, #256
	strh	r3, [r2]	@ movhi
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L96:
	.align	2
.L95:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
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
	mov	r3, #67108864
	mov	r0, #7936
	mov	r1, #4864
	ldr	r2, .L110
	stmfd	sp!, {r4, r7, fp, lr}
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L110+4
	mov	lr, pc
	bx	r3
	ldr	r8, .L110+8
	ldr	r6, .L110+12
	ldr	r5, .L110+16
	ldr	fp, .L110+20
	ldr	r10, .L110+24
	ldr	r9, .L110+28
	ldr	r7, .L110+32
	ldr	r4, .L110+36
.L98:
	ldrh	r3, [r8]
	ldr	r2, [r6]
.L99:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L99
.L101:
	.word	.L100
	.word	.L102
	.word	.L103
	.word	.L104
	.word	.L106
	.word	.L106
.L106:
	mov	lr, pc
	bx	r7
	b	.L98
.L104:
	ldr	r3, .L110+40
	mov	lr, pc
	bx	r3
	b	.L98
.L103:
	mov	lr, pc
	bx	r9
	b	.L98
.L102:
	mov	lr, pc
	bx	r10
	b	.L98
.L100:
	mov	lr, pc
	bx	fp
	b	.L98
.L111:
	.align	2
.L110:
	.word	7684
	.word	goToStart
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
