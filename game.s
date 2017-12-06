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
	.file	"game.c"
	.text
	.align	2
	.type	updateEnemyBullet.part.1, %function
updateEnemyBullet.part.1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L7
	ldr	ip, [r0, #8]
	ldr	r2, [r0]
	ldr	r3, [r1]
	add	r2, ip, r2
	cmp	r2, r3
	str	lr, [sp, #-4]!
	bgt	.L2
	ldr	r2, [r0, #12]
	ldr	lr, [r0, #20]
	add	r2, r2, lr
	sub	r2, r2, #1
	cmp	r2, #237
	bls	.L6
.L2:
	mov	r2, #0
	ldr	ip, .L7+4
	sub	r3, r3, #10
	str	r3, [r1]
	str	r2, [r0, #24]
	str	r2, [ip]
	ldr	lr, [sp], #4
	bx	lr
.L6:
	ldr	r3, [r0, #16]
	add	ip, r3, ip
	str	ip, [r0, #8]
	ldr	lr, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
	.word	.LANCHOR0
	.size	updateEnemyBullet.part.1, .-updateEnemyBullet.part.1
	.global	__aeabi_idivmod
	.align	2
	.type	updateEnemy.part.3, %function
updateEnemy.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r3, [r0, #28]
	ldr	r2, .L26
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	mov	r2, r3, asr #31
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, asl #1
	sub	sp, sp, #20
	str	r3, [r5, #28]
	bne	.L10
	ldr	r0, [r5, #32]
	ldr	r3, .L26+4
	add	r0, r0, #1
	ldr	r1, [r5, #36]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #32]
.L10:
	ldr	r1, [r5, #4]
	cmp	r1, #239
	movgt	r3, #0
	ldr	r2, .L26+8
	add	r0, r2, #20
	ldmia	r0, {r0, r4}
	strgt	r3, [r5, #24]
	ldmib	r2, {ip, lr}
	ldr	r3, [r5, #20]
	ldr	r2, [r5, #16]
	str	r0, [sp, #12]
	ldr	r7, .L26+12
	ldr	r0, [r5]
	str	r4, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L12
	mov	r1, #0
	ldr	r2, .L26+16
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r5, #24]
.L12:
	mov	r10, #0
	mov	fp, #1
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #12]
	ldr	r4, .L26+20
	add	r3, r3, r2
	str	r3, [r5, #4]
	ldr	r9, .L26+24
	ldr	r8, .L26+28
	add	r6, r4, #144
.L16:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L25
.L14:
	add	r4, r4, #48
	cmp	r4, r6
	bne	.L16
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L25:
	ldmia	r4, {ip, lr}
	add	r2, r5, #16
	ldmia	r2, {r2, r3}
	ldmia	r5, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r4, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L14
	ldr	r2, [r9]
	ldr	r3, [r8]
	add	r2, r2, #2
	sub	r3, r3, #1
	str	r10, [r4, #24]
	str	r2, [r9]
	str	r10, [r5, #24]
	str	fp, [r5, #44]
	str	r3, [r8]
	b	.L14
.L27:
	.align	2
.L26:
	.word	1717986919
	.word	__aeabi_idivmod
	.word	player
	.word	collision
	.word	lives
	.word	bullets
	.word	totalScore
	.word	enemysRemaining
	.size	updateEnemy.part.3, .-updateEnemy.part.3
	.align	2
	.type	updateTreasure.part.4, %function
updateTreasure.part.4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, .L42
	ldr	ip, [r4, #4]
	ldr	r2, [r0]
	cmp	ip, r2
	sub	sp, sp, #16
	ldr	r5, .L42+4
	blt	.L29
.L32:
	ldr	lr, [r4, #24]
	add	ip, r2, lr
	str	ip, [r4, #4]
.L30:
	ldr	r1, [r4, #72]
	ldr	r3, .L42+8
	add	r1, r1, #1
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	rsb	r3, r2, r3, asr #5
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	cmp	r1, r3, asl #2
	moveq	r3, #1
	streq	r3, [r4, #76]
	cmp	r1, #600
	moveq	r3, #0
	str	r1, [r4, #72]
	streq	r3, [r4, #56]
	ldr	r2, [r0, #24]
	ldr	r3, [r0, #20]
	ldmib	r0, {r0, r1}
	str	lr, [sp, #8]
	ldr	lr, [r4, #20]
	str	ip, [sp]
	ldr	ip, [r4, #8]
	ldr	r6, .L42+12
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L35
	mov	r0, #0
	mov	r1, #1
	ldr	r2, .L42+16
	ldr	r3, [r2]
	add	r3, r3, #5
	str	r3, [r2]
	str	r0, [r4, #56]
	str	r1, [r4, #12]
.L35:
	ldr	r2, [r5, #4]
	ldr	r3, .L42+20
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, asl #1
	ldreq	r3, [r4, #40]
	addeq	r3, r3, #1
	streq	r3, [r4, #40]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L29:
	ldr	r1, [r5, #4]
	ldr	r3, .L42+24
	smull	lr, r3, r1, r3
	sub	r3, r3, r1, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r1, r3
	bne	.L41
	ldr	r3, [r4, #12]
	sub	r3, r3, #1
	rsb	ip, r3, ip
	cmp	r2, ip
	str	ip, [r4, #4]
	str	r3, [r4, #12]
	ble	.L32
.L41:
	ldr	lr, [r4, #24]
	b	.L30
.L43:
	.align	2
.L42:
	.word	player
	.word	.LANCHOR0
	.word	458129845
	.word	collision
	.word	totalScore
	.word	1717986919
	.word	1431655766
	.size	updateTreasure.part.4, .-updateTreasure.part.4
	.align	2
	.global	drawScore
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L46
	ldr	r2, .L46+4
	ldr	r1, [r3]
	smull	r0, r3, r2, r1
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	ip, #150
	mov	r6, #215
	mov	r5, #223
	mov	r4, #231
	mov	lr, #328
	mov	r0, r1, asr #31
	rsb	r3, r0, r3, asr #2
	smull	r7, r8, r2, r3
	ldr	r7, .L46+8
	smull	r2, r7, r1, r7
	mov	r2, r3, asr #31
	rsb	r2, r2, r8, asr #2
	add	r2, r2, r2, lsl #2
	add	r8, r3, r3, lsl #2
	sub	r2, r3, r2, asl #1
	ldr	r3, .L46+12
	sub	r1, r1, r8, asl #1
	rsb	r0, r0, r7, asr #5
	add	r2, r2, #416
	add	r7, r3, #404
	add	r1, r1, #416
	strh	r2, [r7]	@ movhi
	add	r2, r3, #412
	strh	r1, [r2]	@ movhi
	add	r0, r0, #416
	add	r2, r3, #396
	strh	r0, [r2]	@ movhi
	add	r2, r3, #392
	strh	r6, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	ldr	r7, .L46+16
	add	r2, r3, #400
	ldr	r0, .L46+20
	strh	r5, [r2, #2]	@ movhi
	add	r1, r3, #408
	strh	ip, [r2]	@ movhi
	add	r2, r3, #440
	add	r3, r3, #444
	strh	r4, [r1, #2]	@ movhi
	strh	r7, [r2]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	totalScore
	.word	1717986919
	.word	1374389535
	.word	shadowOAM
	.word	16534
	.word	16385
	.size	drawScore, .-drawScore
	.align	2
	.global	drawPowerReady
	.type	drawPowerReady, %function
drawPowerReady:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L54
	ldr	r3, .L54+4
	ldr	r1, [r2, #68]
	ldr	r3, [r3]
	cmp	r1, #0
	movne	r3, #0
	andeq	r3, r3, #1
	cmp	r3, #0
	bne	.L53
	mov	r2, #512
	ldr	r3, .L54+8
	strh	r2, [r3], #8	@ movhi
	strh	r2, [r3]	@ movhi
	bx	lr
.L53:
	ldr	r1, .L54+8
	mov	r0, r1
	stmfd	sp!, {r4, lr}
	mov	ip, #172
	mov	lr, #168
	ldr	r3, [r2]
	add	r3, r3, #16
	orr	r3, r3, #17408
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r4, .L54+12
	strh	r3, [r0, #8]!	@ movhi
	ldr	r2, .L54+16
	strh	r4, [r0, #2]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #12]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	player
	.word	specialCollected
	.word	shadowOAM+416
	.word	16504
	.word	16472
	.size	drawPowerReady, .-drawPowerReady
	.align	2
	.type	updateSpecial.part.5, %function
updateSpecial.part.5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, .L71
	ldr	ip, [r4, #4]
	ldr	r2, [r0]
	cmp	ip, r2
	sub	sp, sp, #16
	ldr	r5, .L71+4
	blt	.L57
.L60:
	ldr	lr, [r4, #24]
	add	ip, r2, lr
	str	ip, [r4, #4]
.L58:
	ldr	r3, [r4, #72]
	add	r3, r3, #1
	cmp	r3, #300
	str	r3, [r4, #72]
	moveq	r3, #1
	streq	r3, [r4, #76]
	beq	.L62
	cmp	r3, #600
	moveq	r3, #0
	streq	r3, [r4, #56]
.L62:
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldmib	r0, {r0, r1}
	str	lr, [sp, #8]
	ldr	lr, [r4, #20]
	str	ip, [sp]
	ldr	ip, [r4, #8]
	ldr	r6, .L71+8
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L70
.L63:
	ldr	r2, [r5, #4]
	ldr	r3, .L71+12
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, asl #1
	ldreq	r3, [r4, #40]
	addeq	r3, r3, #1
	streq	r3, [r4, #40]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L57:
	ldr	r1, [r5, #4]
	ldr	r3, .L71+16
	smull	lr, r3, r1, r3
	sub	r3, r3, r1, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r1, r3
	bne	.L69
	ldr	r3, [r4, #12]
	sub	r3, r3, #1
	rsb	ip, r3, ip
	cmp	r2, ip
	str	ip, [r4, #4]
	str	r3, [r4, #12]
	ble	.L60
.L69:
	ldr	lr, [r4, #24]
	b	.L58
.L70:
	mov	r2, #1
	mov	ip, #0
	ldr	r1, .L71+20
	ldr	r3, [r1]
	ldr	r0, .L71+24
	add	r3, r3, #5
	str	ip, [r4, #56]
	str	r2, [r4, #12]
	str	r3, [r1]
	str	r2, [r0]
	bl	drawPowerReady
	b	.L63
.L72:
	.align	2
.L71:
	.word	player
	.word	.LANCHOR0
	.word	collision
	.word	1717986919
	.word	1431655766
	.word	totalScore
	.word	specialCollected
	.size	updateSpecial.part.5, .-updateSpecial.part.5
	.align	2
	.global	drawLives
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	ip, #150
	mov	r6, #24
	ldr	r2, .L77
	ldr	lr, [r2]
	ldr	r3, .L77+4
	add	r2, lr, #384
	mov	r1, r3
	mov	r0, r3
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	cmp	lr, #2
	mov	r5, #32
	mov	r4, #40
	strh	r2, [r3, #4]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	strh	r2, [r3, #68]	@ movhi
	strh	r6, [r3, #2]	@ movhi
	strh	ip, [r3]	@ movhi
	moveq	r3, #512
	strh	ip, [r1, #64]!	@ movhi
	strh	ip, [r0, #56]!	@ movhi
	strh	r4, [r1, #2]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	streqh	r3, [r1]	@ movhi
	beq	.L73
	cmp	lr, #1
	moveq	r3, #512
	streqh	r3, [r1]	@ movhi
	streqh	r3, [r0]	@ movhi
.L73:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	lives
	.word	shadowOAM+320
	.size	drawLives, .-drawLives
	.align	2
	.global	drawBulletCounter
	.type	drawBulletCounter, %function
drawBulletCounter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L102
	ldr	r3, [r3, #68]
	cmp	r3, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	beq	.L80
	ldr	r3, .L102+4
	mov	r1, #150
	mov	r4, r3
	mov	lr, r3
	mov	ip, r3
	mov	r0, r3
	mov	r2, #74
	mov	r9, #100
	mov	r8, #108
	mov	r7, #116
	mov	r6, #124
	mov	r5, #132
	strh	r1, [r4, #8]!	@ movhi
	strh	r1, [lr, #16]!	@ movhi
	strh	r1, [ip, #24]!	@ movhi
	strh	r1, [r0, #32]!	@ movhi
	strh	r9, [r3, #2]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r8, [r4, #2]	@ movhi
	strh	r7, [lr, #2]	@ movhi
	strh	r6, [ip, #2]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	strh	r2, [r3, #36]	@ movhi
.L80:
	ldr	r3, .L102+8
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L79
	mov	r1, #512
	ldr	r2, .L102+12
	cmp	r3, #1
	strh	r1, [r2]	@ movhi
	beq	.L79
	cmp	r3, #2
	strh	r1, [r2, #-8]	@ movhi
	beq	.L79
	cmp	r3, #3
	strh	r1, [r2, #-16]	@ movhi
	beq	.L79
	cmp	r3, #4
	strh	r1, [r2, #-24]	@ movhi
	strneh	r1, [r2, #-32]	@ movhi
.L79:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L103:
	.align	2
.L102:
	.word	player
	.word	shadowOAM+448
	.word	superFired
	.word	shadowOAM+480
	.size	drawBulletCounter, .-drawBulletCounter
	.align	2
	.global	initPlayer
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #130
	stmfd	sp!, {r4, r5, lr}
	mov	r2, #0
	mov	r5, #11
	mov	r4, #16
	mov	lr, #20
	mov	r1, #2
	mov	ip, #112
	ldr	r3, .L106
	str	r0, [r3]
	str	r0, [r3, #4]
	ldr	r0, .L106+4
	str	r5, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r3, #12]
	str	ip, [r3, #8]
	str	r1, [r3, #16]
	str	r1, [r3, #44]
	str	r2, [r3, #68]
	str	r2, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r0]
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L107:
	.align	2
.L106:
	.word	player
	.word	tired
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L143
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, [r3, #68]
	ldr	r1, .L143+4
	cmp	r4, #0
	ldr	r2, [r3, #8]
	ldr	r1, [r1]
	bne	.L109
	ldr	r4, .L143+8
	ldr	r0, [r3, #4]
	orr	r2, r2, #16384
	cmp	r1, #3
	strh	r2, [r4, #2]	@ movhi
	strh	r0, [r4]	@ movhi
	beq	.L138
	cmp	r1, #2
	beq	.L139
	cmp	r1, #1
	beq	.L140
.L108:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L109:
	ldr	r5, .L143+8
	ldr	r0, [r3, #4]
	orr	r2, r2, #16384
	cmp	r1, #3
	strh	r2, [r5, #2]	@ movhi
	strh	r0, [r5]	@ movhi
	beq	.L141
	cmp	r1, #2
	beq	.L142
	cmp	r1, #1
	bne	.L108
	add	r0, r3, #40
	ldr	r2, .L143+12
	ldmia	r0, {r0, r1}
	mov	lr, pc
	bx	r2
	ldr	r0, .L143+16
	add	r3, r1, #4
	ldr	r1, [r0]
	cmp	r1, #0
	add	r2, r4, r3, lsl #5
	addne	r3, r4, r3, lsl #4
	movne	r3, r3, asl #2
	mov	r2, r2, asl #1
	orr	r2, r2, #1024
	orrne	r3, r3, #1024
	strh	r2, [r5, #4]	@ movhi
	strneh	r3, [r5, #4]	@ movhi
	b	.L108
.L141:
	add	r0, r3, #40
	ldr	r2, .L143+12
	ldmia	r0, {r0, r1}
	mov	lr, pc
	bx	r2
	ldr	r3, .L143+16
	add	r4, r4, r1, lsl #5
	ldr	r2, [r3]
	mov	r3, r4, asl #1
	orr	r3, r3, #1024
	cmp	r2, #0
	strh	r3, [r5, #4]	@ movhi
	subne	r4, r4, r1, asl #4
	movne	r4, r4, asl #2
	orrne	r4, r4, #1024
	strneh	r4, [r5, #4]	@ movhi
	b	.L108
.L138:
	add	r0, r3, #40
	ldr	r2, .L143+12
	ldmia	r0, {r0, r1}
	mov	lr, pc
	bx	r2
	ldr	r3, .L143+16
.L136:
	ldr	r2, [r3]
	mov	r1, r1, asl #22
	mov	r1, r1, lsr #16
	orr	r3, r1, #1024
	cmp	r2, #0
	strh	r3, [r4, #4]	@ movhi
	beq	.L108
	add	r1, r1, #6
	orr	r1, r1, #1024
	strh	r1, [r4, #4]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L140:
	add	r0, r3, #40
	ldr	r2, .L143+12
	ldmia	r0, {r0, r1}
	mov	lr, pc
	bx	r2
	ldr	r3, .L143+16
	add	r1, r1, #4
	b	.L136
.L142:
	add	r0, r3, #40
	ldr	r2, .L143+12
	ldmia	r0, {r0, r1}
	mov	lr, pc
	bx	r2
	ldr	r2, .L143+16
	add	r1, r1, #2
	add	r3, r4, r1, lsl #5
	ldr	r2, [r2]
	mov	r3, r3, asl #1
	orr	r3, r3, #1024
	cmp	r2, #0
	strh	r3, [r5, #4]	@ movhi
	addne	r3, r4, r1, lsl #4
	movne	r3, r3, asl #2
	orrne	r3, r3, #1024
	strneh	r3, [r5, #4]	@ movhi
	b	.L108
.L139:
	add	r0, r3, #40
	ldr	r2, .L143+12
	ldmia	r0, {r0, r1}
	mov	lr, pc
	bx	r2
	ldr	r3, .L143+16
	add	r1, r1, #2
	b	.L136
.L144:
	.align	2
.L143:
	.word	player
	.word	lives
	.word	shadowOAM
	.word	__aeabi_idivmod
	.word	tired
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullets
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r1, #8
	mvn	r4, #7
	mov	r2, #0
	mvn	lr, #1
	mov	ip, #2
	ldr	r3, .L151
	add	r0, r3, #144
.L146:
	str	r1, [r3]
	str	r2, [r3, #12]
	str	lr, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #44]
	str	r2, [r3, #32]
	str	ip, [r3, #36]
	stmib	r3, {r1, r4}
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L146
	mov	r2, #0
	mov	r4, #16
	mov	r1, r2
	mov	lr, #9
	mov	ip, #1
	ldr	r3, .L151+4
.L147:
	str	r2, [r3, #40]
	add	r2, r2, #1
	cmp	r2, #5
	stmia	r3, {r4, lr}
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	mov	r0, #0
	add	r3, r3, #48
	bne	.L147
	ldr	r3, .L151+8
	ldmfd	sp!, {r4, lr}
	str	r0, [r3]
	bx	lr
.L152:
	.align	2
.L151:
	.word	bullets
	.word	enemyBullets
	.word	.LANCHOR0
	.size	initBullets, .-initBullets
	.align	2
	.global	initSuperBullets
	.type	initSuperBullets, %function
initSuperBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	str	lr, [sp, #-4]!
	mov	r0, #8
	mov	r2, r1
	mvn	lr, #3
	mov	ip, #2
	ldr	r3, .L157
.L154:
	str	r1, [r3, #40]
	add	r1, r1, #1
	cmp	r1, #5
	str	r0, [r3]
	stmib	r3, {r0, r2}
	str	r2, [r3, #12]
	str	lr, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #32]
	str	ip, [r3, #36]
	add	r3, r3, #48
	bne	.L154
	ldr	lr, [sp], #4
	bx	lr
.L158:
	.align	2
.L157:
	.word	superBullets
	.size	initSuperBullets, .-initSuperBullets
	.align	2
	.global	updateEnemyBullet
	.type	updateEnemyBullet, %function
updateEnemyBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateEnemyBullet.part.1
	.size	updateEnemyBullet, .-updateEnemyBullet
	.align	2
	.global	drawBullet
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, #512
	ldr	r3, .L168
	ldr	r4, .L168+4
	ldr	r6, [r3, #68]
	ldr	r5, .L168+8
	ldr	r8, .L168+12
	add	r9, r4, #144
.L165:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	streqh	r7, [r5, #216]	@ movhi
	beq	.L164
	ldr	r3, [r4, #12]
	ldrb	r2, [r4, #8]	@ zero_extendqisi2
	bic	r3, r3, #65024
	add	r0, r4, #32
	cmp	r6, #0
	strh	r3, [r5, #218]	@ movhi
	strh	r2, [r5, #216]	@ movhi
	ldmia	r0, {r0, r1}
	beq	.L163
	mov	lr, pc
	bx	r8
	mov	r1, r1, asl #5
	add	r1, r1, #10
	orr	r1, r1, #1024
	strh	r1, [r5, #220]	@ movhi
.L164:
	add	r4, r4, #48
	cmp	r4, r9
	add	r5, r5, #8
	bne	.L165
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L163:
	mov	lr, pc
	bx	r8
	mov	r1, r1, asl #5
	add	r1, r1, #9
	orr	r1, r1, #1024
	strh	r1, [r5, #220]	@ movhi
	b	.L164
.L169:
	.align	2
.L168:
	.word	player
	.word	bullets
	.word	shadowOAM
	.word	__aeabi_idivmod
	.size	drawBullet, .-drawBullet
	.align	2
	.global	fireBullet
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L178
	ldr	ip, [r3, #24]
	cmp	ip, #0
	stmfd	sp!, {r4, r5, r6, lr}
	beq	.L171
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L176
	mov	r1, #1
	ldr	r0, [r3, #120]
	ldr	r2, .L178+4
	cmp	r0, #0
	str	r1, [r2]
	moveq	ip, #2
	beq	.L171
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L176:
	mov	ip, #1
.L171:
	mov	r5, #1
	ldr	r0, .L178+8
	ldr	r4, [r0, #68]
	cmp	r4, #0
	movne	r4, r5
	add	ip, ip, ip, lsl #1
	add	ip, r3, ip, lsl #4
	ldr	lr, [r0, #20]
	ldr	r2, [r0, #8]
	ldr	r1, [ip, #4]
	add	lr, lr, lr, lsr #31
	add	r3, r2, lr, asr r5
	ldr	r0, [r0, #4]
	add	r1, r1, r1, lsr #31
	sub	lr, r3, r1, asr r5
	str	r0, [ip, #8]
	str	lr, [ip, #12]
	ldr	r6, .L178+12
	str	r4, [ip, #44]
	str	r5, [ip, #24]
	mov	r3, #0
	ldr	r2, .L178+16
	ldr	r1, .L178+20
	ldr	r0, .L178+24
	mov	lr, pc
	bx	r6
	ldmfd	sp!, {r4, r5, r6, lr}
	b	drawBullet
.L179:
	.align	2
.L178:
	.word	bullets
	.word	tired
	.word	player
	.word	playSoundB
	.word	11025
	.word	5103
	.word	poof
	.size	fireBullet, .-fireBullet
	.align	2
	.global	drawEnemyBullet
	.type	drawEnemyBullet, %function
drawEnemyBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #512
	ldr	r3, .L186
	ldr	r2, .L186+4
	ldr	lr, .L186+8
	add	r0, r3, #40
.L183:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	ldrne	r1, [r2, #12]
	movne	r1, r1, asl #23
	movne	r1, r1, lsr #23
	ldrneb	ip, [r2, #8]	@ zero_extendqisi2
	orrne	r1, r1, #16384
	strneh	lr, [r3, #2]	@ movhi
	strneh	r1, [r3]	@ movhi
	strneh	ip, [r3, #-2]	@ movhi
	streqh	r4, [r3, #-2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #48
	bne	.L183
	ldmfd	sp!, {r4, lr}
	bx	lr
.L187:
	.align	2
.L186:
	.word	shadowOAM+258
	.word	enemyBullets
	.word	1037
	.size	drawEnemyBullet, .-drawEnemyBullet
	.align	2
	.global	fireEnemyBullet
	.type	fireEnemyBullet, %function
fireEnemyBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r7, .L194
	mov	r4, #0
	mov	r5, r7
	ldr	r6, .L194+4
.L190:
	mov	lr, pc
	bx	r6
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L193
	add	r4, r4, #1
	cmp	r4, #5
	add	r5, r5, #48
	bne	.L190
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L193:
	mov	r1, #1
	ldr	r3, .L194+8
	smull	r2, r3, r0, r3
	add	r4, r4, r4, lsl #1
	add	r2, r3, r0
	mov	r4, r4, asl #4
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #7
	add	r2, r7, r4
	ldr	ip, [r7, r4]
	rsb	r3, r3, r3, lsl #4
	ldr	r4, [r2, #4]
	sub	r0, r0, r3, asl #4
	ldr	lr, .L194+12
	rsb	r0, r4, r0
	rsb	r3, ip, #0
	str	r1, [lr]
	str	r3, [r2, #8]
	str	r0, [r2, #12]
	str	r1, [r2, #24]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	drawEnemyBullet
.L195:
	.align	2
.L194:
	.word	enemyBullets
	.word	rand
	.word	-2004318071
	.word	.LANCHOR0
	.size	fireEnemyBullet, .-fireEnemyBullet
	.align	2
	.global	initEnemys
	.type	initEnemys, %function
initEnemys:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #8
	mov	r4, #30
	mov	r2, #0
	mov	r1, #1
	mov	lr, #4
	ldr	r3, .L200
	add	ip, r3, #240
.L197:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r4, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	lr, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	add	r3, r3, #48
	cmp	r3, ip
	bne	.L197
	ldmfd	sp!, {r4, lr}
	bx	lr
.L201:
	.align	2
.L200:
	.word	enemys
	.size	initEnemys, .-initEnemys
	.align	2
	.global	updateEnemy
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #24]
	cmp	r2, #0
	bne	updateEnemy.part.3
.L203:
	ldr	r2, [r0, #44]
	cmp	r2, #0
	ldrne	r2, [r0, #40]
	addne	r2, r2, #1
	strne	r2, [r0, #40]
	bx	lr
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	drawEnemy
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r1, #1
	mov	lr, #512
	mov	r5, #139
	ldr	r2, .L215
	ldr	r3, .L215+4
	ldr	r4, .L215+8
.L212:
	ldr	r0, [r3, #-8]
	cmp	r0, #0
	beq	.L209
	ldr	r0, [r3]
	ldr	ip, [r3, #-28]
	mov	r0, r0, asl #5
	ldrb	r6, [r3, #-32]	@ zero_extendqisi2
	add	r0, r0, #11
	bic	ip, ip, #65024
	strh	r0, [r2, #12]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r6, [r2, #8]	@ movhi
.L210:
	add	r1, r1, #1
	cmp	r1, #6
	add	r2, r2, #8
	add	r3, r3, #48
	bne	.L212
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L209:
	ldr	r0, [r3, #12]
	cmp	r0, #0
	streqh	lr, [r2, #8]	@ movhi
	beq	.L210
	ldr	r6, [r3, #8]
	smull	ip, r0, r4, r6
	mov	ip, r6, asr #31
	rsb	r0, ip, r0, asr #4
	add	r0, r0, r0, lsl #2
	ldr	ip, [r3, #-32]
	add	r0, r0, r0, lsl #2
	ldr	r7, [r3, #-28]
	subs	r0, r6, r0, asl #1
	orr	ip, ip, #1024
	strh	ip, [r2, #8]	@ movhi
	strh	r5, [r2, #12]	@ movhi
	strh	r7, [r2, #10]	@ movhi
	streqh	lr, [r2, #8]	@ movhi
	streq	r0, [r3, #12]
	b	.L210
.L216:
	.align	2
.L215:
	.word	shadowOAM
	.word	enemys+32
	.word	1374389535
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	fireEnemy
	.type	fireEnemy, %function
fireEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L221
	stmfd	sp!, {r4, r5, r6, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+4
	smull	r1, r2, r3, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r0
	add	r2, r3, r3, lsl #1
	ldr	r0, .L221+8
	mov	r2, r2, asl #4
	add	r1, r0, r2
	ldr	ip, [r1, #24]
	cmp	ip, #0
	beq	.L220
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L220:
	mov	r4, #1
	ldr	ip, .L221+12
	rsb	r5, r3, r3, lsl #29
	ldr	lr, [ip]
	ldr	ip, [r1, #20]
	rsb	r3, r3, r5, lsl #2
	add	r3, lr, r3, lsl #1
	rsb	ip, ip, #0
	str	r4, [r1, #24]
	str	r3, [r0, r2]
	str	ip, [r1, #4]
	ldmfd	sp!, {r4, r5, r6, lr}
	b	drawEnemy
.L222:
	.align	2
.L221:
	.word	rand
	.word	1717986919
	.word	enemys
	.word	player
	.size	fireEnemy, .-fireEnemy
	.align	2
	.global	initTreasure
	.type	initTreasure, %function
initTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	stmfd	sp!, {r4, lr}
	mov	r2, r1
	mov	r4, #1
	mov	r0, #8
	mov	lr, #4
	ldr	ip, .L227
	ldr	r3, .L227+4
	ldr	ip, [ip]
.L224:
	str	r1, [r3, #60]
	add	r1, r1, #1
	cmp	r1, #5
	str	ip, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r4, [r3, #12]
	str	r2, [r3, #16]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	lr, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #72]
	str	r2, [r3, #76]
	add	r3, r3, #80
	bne	.L224
	ldmfd	sp!, {r4, lr}
	bx	lr
.L228:
	.align	2
.L227:
	.word	player
	.word	treasures
	.size	initTreasure, .-initTreasure
	.align	2
	.global	updateTreasure
	.type	updateTreasure, %function
updateTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	cmp	r3, #0
	bxeq	lr
	b	updateTreasure.part.4
	.size	updateTreasure, .-updateTreasure
	.align	2
	.global	drawTreasure
	.type	drawTreasure, %function
drawTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, #0
	mov	r5, #41
	mov	r8, #512
	ldr	r4, .L239
	ldr	r10, .L239+4
	ldr	r7, .L239+8
.L236:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	addeq	r3, r6, #328
	streqh	r8, [r10, r3]	@ movhi
	beq	.L235
	ldr	r3, [r4, #76]
	cmp	r3, #0
	ldrne	r3, [r4, #4]
	add	r2, r6, #328
	ldreq	r2, [r4, #4]
	orrne	r3, r3, #1024
	addeq	r3, r6, #328
	strneh	r3, [r10, r2]	@ movhi
	streqh	r2, [r10, r3]	@ movhi
	ldr	r3, [r4, #8]
	add	r9, r10, r5, lsl #3
	add	r0, r4, #40
	ldmia	r0, {r0, r1}
	strh	r3, [r9, #2]	@ movhi
	mov	lr, pc
	bx	r7
	mov	r1, r1, asl #5
	add	r1, r1, #8
	orr	r1, r1, #1024
	strh	r1, [r9, #4]	@ movhi
.L235:
	add	r5, r5, #1
	cmp	r5, #46
	add	r4, r4, #80
	add	r6, r6, #8
	bne	.L236
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L240:
	.align	2
.L239:
	.word	treasures
	.word	shadowOAM
	.word	__aeabi_idivmod
	.size	drawTreasure, .-drawTreasure
	.align	2
	.global	fireTreasure
	.type	fireTreasure, %function
fireTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L247
	mov	r3, #0
	mov	r2, ip
.L243:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L246
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #80
	bne	.L243
	bx	lr
.L246:
	stmfd	sp!, {r4, lr}
	mov	lr, #1
	ldr	r2, .L247+4
	add	r0, r0, r0, lsl #1
	add	r0, r2, r0, lsl #4
	ldr	r4, [r0, #8]
	add	r3, r3, r3, lsl #2
	ldr	r2, [r0, #12]
	add	r3, ip, r3, lsl #4
	str	r4, [r3, #4]
	str	lr, [r3, #56]
	str	r1, [r3, #64]
	str	r1, [r3, #76]
	str	r1, [r3, #72]
	str	r2, [r3, #8]
	ldmfd	sp!, {r4, lr}
	b	drawTreasure
.L248:
	.align	2
.L247:
	.word	treasures
	.word	enemyBullets
	.size	fireTreasure, .-fireTreasure
	.align	2
	.global	initSpecial
	.type	initSpecial, %function
initSpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r2, #0
	mov	lr, #1
	mov	r1, #8
	mov	ip, #4
	ldr	r0, .L251
	ldr	r3, .L251+4
	ldr	r4, [r0]
	ldr	r0, .L251+8
	str	r4, [r3]
	str	lr, [r3, #12]
	str	ip, [r3, #44]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #72]
	str	r2, [r3, #76]
	str	r2, [r0]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L252:
	.align	2
.L251:
	.word	player
	.word	specials
	.word	specialActive
	.size	initSpecial, .-initSpecial
	.align	2
	.global	initGame
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #130
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #2
	mov	r4, #0
	mov	lr, #16
	mov	ip, #20
	mov	r0, #112
	mov	r5, #11
	ldr	r3, .L257
	str	r1, [r3]
	str	r1, [r3, #4]
	ldr	r1, .L257+4
	str	r5, [r3, #20]
	str	lr, [r3, #24]
	str	ip, [r3, #12]
	str	r0, [r3, #8]
	str	r2, [r3, #16]
	str	r2, [r3, #44]
	str	r4, [r3, #68]
	str	r4, [r3, #40]
	str	r4, [r3, #28]
	str	r4, [r1]
	mov	r5, #30
	bl	initBullets
	mov	r2, r4
	mov	r0, #8
	mov	r1, #1
	mov	lr, #4
	ldr	r3, .L257+8
	add	ip, r3, #240
.L254:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	lr, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	add	r3, r3, #48
	cmp	r3, ip
	mov	r4, #0
	bne	.L254
	bl	initTreasure
	bl	initSpecial
	ldr	r3, .L257+12
	mov	lr, pc
	bx	r3
	mov	r3, #5
	mov	r1, #67108864
	mov	r0, #14144
	mov	lr, #3
	ldr	r2, .L257+16
	ldr	r5, .L257+20
	strh	r0, [r1, #80]	@ movhi
	ldr	ip, .L257+24
	str	r3, [r2]
	str	r3, [r5]
	ldr	r0, .L257+28
	ldr	r1, .L257+32
	ldr	r2, .L257+36
	ldr	r3, .L257+40
	str	lr, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L258:
	.align	2
.L257:
	.word	player
	.word	tired
	.word	enemys
	.word	hideSprites
	.word	enemysRemaining
	.word	superFired
	.word	lives
	.word	enemyBulletTimer
	.word	specialCollected
	.word	totalScore
	.word	blend
	.size	initGame, .-initGame
	.align	2
	.global	updatePlayer
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L304
	ldr	r3, [r5, #28]
	ldr	r2, .L304+4
	add	r3, r3, #1
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	add	r2, r2, r3
	rsb	r2, r1, r2, asr #4
	rsb	r2, r2, r2, lsl #4
	cmp	r3, r2, asl #1
	str	r3, [r5, #28]
	ldreq	r3, [r5, #40]
	addeq	r3, r3, #1
	streq	r3, [r5, #40]
	ldr	r3, .L304+8
	ldr	r2, [r3]
	cmp	r2, #5
	sub	sp, sp, #16
	beq	.L299
.L261:
	ldr	r4, .L304+12
	ldrh	r2, [r4]
	tst	r2, #1
	beq	.L262
	ldr	r3, .L304+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L300
.L262:
	ldr	r3, .L304+20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L263
	ldr	r3, [r5, #8]
	ldr	r1, .L304
	cmp	r3, #0
	ldrgt	r0, [r1, #16]
	rsbgt	r3, r0, r3
	strgt	r3, [r1, #8]
.L263:
	ldr	r3, .L304+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L264
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #20]
	add	r3, r1, r3
	cmp	r3, #238
	ldr	r3, .L304
	ldrle	r0, [r3, #16]
	addle	r1, r0, r1
	strle	r1, [r3, #8]
.L264:
	tst	r2, #64
	beq	.L267
	ldr	r3, .L304+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L301
.L267:
	ldmia	r5, {r0, r3}
.L266:
	cmp	r0, r3
	ble	.L268
	ldr	ip, .L304+24
	ldr	r1, .L304+28
	ldr	ip, [ip, #4]
	smull	lr, r1, ip, r1
	sub	r1, r1, ip, asr #31
	add	r1, r1, r1, lsl #1
	cmp	ip, r1
	bne	.L269
	ldr	r1, [r5, #12]
	sub	r1, r1, #1
	rsb	r3, r1, r3
	tst	r2, #2
	str	r3, [r5, #4]
	str	r1, [r5, #12]
	beq	.L270
.L278:
	ldr	r3, .L304+16
	ldrh	r3, [r3]
	tst	r3, #2
	subeq	r0, r0, #10
	streq	r0, [r5]
.L270:
	ldr	r3, [r5, #4]
	cmp	r3, r0
	bge	.L279
.L271:
	tst	r2, #128
	beq	.L272
	ldr	r2, .L304+16
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L302
.L272:
	cmp	r3, #21
	movle	r2, #0
	mov	r9, #0
	ldrle	r3, .L304+32
	ldr	r4, .L304+36
	strle	r2, [r3]
	ldr	r7, .L304+40
	ldr	r8, .L304+32
	ldr	r10, .L304+24
	add	r6, r4, #240
.L277:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L303
.L275:
	add	r4, r4, #48
	cmp	r6, r4
	bne	.L277
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L268:
	tst	r2, #2
	bne	.L278
.L279:
	mov	r3, r0
	str	r0, [r5, #4]
	b	.L271
.L303:
	ldmia	r4, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r4, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #8]
	ldr	r3, [r5, #20]
	ldr	r2, [r5, #24]
	ldmib	r5, {r0, r1}
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	subne	r3, r3, #1
	strne	r9, [r4, #24]
	strne	r9, [r10]
	strne	r3, [r8]
	b	.L275
.L302:
	ldr	r2, .L304+44
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L272
	ldr	r2, [r5, #68]
	cmp	r2, #0
	moveq	r1, #1
	ldr	r2, .L304
	streq	r1, [r2, #68]
	b	.L272
.L269:
	tst	r2, #2
	beq	.L271
	b	.L278
.L301:
	ldmia	r5, {r0, r3}
	cmp	r3, r0
	moveq	ip, #7
	ldr	r1, .L304
	subeq	r3, r3, #7
	streq	r3, [r1, #4]
	streq	ip, [r1, #12]
	b	.L266
.L300:
	bl	fireBullet
	ldrh	r2, [r4]
	b	.L262
.L299:
	mov	r2, #0
	ldr	r0, .L304+44
	ldr	r1, .L304+48
	str	r2, [r5, #68]
	str	r2, [r3]
	str	r2, [r0]
	str	r2, [r1]
	bl	initSpecial
	b	.L261
.L305:
	.align	2
.L304:
	.word	player
	.word	-2004318071
	.word	superFired
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	.LANCHOR0
	.word	1431655766
	.word	lives
	.word	enemyBullets
	.word	collision
	.word	specialCollected
	.word	specialActive
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateSpecial
	.type	updateSpecial, %function
updateSpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	cmp	r3, #0
	bxeq	lr
	b	updateSpecial.part.5
	.size	updateSpecial, .-updateSpecial
	.align	2
	.global	drawSpecial
	.type	drawSpecial, %function
drawSpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L317
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L309
	mov	r2, #512
	ldr	r3, .L317+4
	strh	r2, [r3]	@ movhi
	bx	lr
.L309:
	ldr	r2, [r3, #76]
	cmp	r2, #0
	stmfd	sp!, {r4, lr}
	bne	.L311
	ldr	r2, .L317+4
	ldr	r1, [r3, #4]
	strh	r1, [r2]	@ movhi
.L313:
	ldr	ip, [r3, #8]
	add	r0, r3, #40
	ldr	r4, .L317+8
	ldmia	r0, {r0, r1}
	strh	ip, [r2, #2]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r1, r1, asl #5
	add	r1, r1, #15
	ldr	r3, .L317+12
	orr	r1, r1, #1024
	strh	r1, [r3]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L311:
	ldr	r1, [r3, #4]
	ldr	r2, .L317+4
	orr	r1, r1, #1024
	strh	r1, [r2]	@ movhi
	b	.L313
.L318:
	.align	2
.L317:
	.word	specials
	.word	shadowOAM+368
	.word	__aeabi_idivmod
	.word	shadowOAM+372
	.size	drawSpecial, .-drawSpecial
	.align	2
	.global	drawGame
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	drawPlayer
	bl	drawEnemy
	bl	drawBullet
	bl	drawEnemyBullet
	bl	drawScore
	bl	drawLives
	bl	drawTreasure
	bl	drawSpecial
	bl	drawPowerReady
	bl	drawBulletCounter
	ldr	r3, .L321
	mov	lr, pc
	bx	r3
	ldr	r2, .L321+4
	ldr	r3, [r2, #4]
	add	r3, r3, #1
	str	r3, [r2, #4]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L322:
	.align	2
.L321:
	.word	waitForVBlank
	.word	.LANCHOR0
	.size	drawGame, .-drawGame
	.align	2
	.global	fireSpecial
	.type	fireSpecial, %function
fireSpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L326
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bxne	lr
	mov	r1, #1
	ldr	r2, .L326+4
	add	r0, r0, r0, lsl #1
	add	r0, r2, r0, lsl #4
	str	lr, [sp, #-4]!
	ldr	r2, .L326+8
	ldr	lr, [r0, #8]
	ldr	ip, [r0, #12]
	ldr	r0, .L326+12
	str	lr, [r2, #4]
	str	ip, [r2, #8]
	str	r3, [r2, #76]
	str	r3, [r2, #72]
	str	r1, [r2, #56]
	ldr	lr, [sp], #4
	str	r1, [r0]
	b	drawSpecial
.L327:
	.align	2
.L326:
	.word	treasures
	.word	enemyBullets
	.word	specials
	.word	specialActive
	.size	fireSpecial, .-fireSpecial
	.align	2
	.type	updateBullet.part.6, %function
updateBullet.part.6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r0, #44]
	cmp	r3, #0
	sub	sp, sp, #20
	mov	r6, r0
	beq	.L364
	ldr	r2, [r0, #8]
	ldr	r3, [r0]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L331
	ldr	r1, .L368
	ldr	r3, [r1]
	cmp	r2, r3
	bgt	.L331
	ldr	r0, [r0, #12]
	ldr	r3, [r6, #20]
	add	r3, r0, r3
	sub	r3, r3, #1
	cmp	r3, #237
	bhi	.L331
	mvn	r4, #1
	mov	r5, #0
	mov	r7, #2
	ldr	r3, .L368+4
	ldr	ip, [r1, #68]
	add	lr, r3, #240
.L341:
	cmp	ip, #0
	streq	ip, [r6, #24]
	ldr	r1, [r3, #24]
	cmp	r1, #0
	beq	.L336
	str	r4, [r6, #16]
	str	r5, [r6, #20]
	ldr	r1, [r3, #8]
	cmp	r2, r1
	strlt	r7, [r6, #16]
	blt	.L338
	streq	r5, [r6, #16]
.L338:
	ldr	r1, [r3, #12]
	cmp	r0, r1
	strgt	r4, [r6, #20]
	bgt	.L336
	strne	r7, [r6, #20]
.L336:
	add	r3, r3, #48
	cmp	r3, lr
	bne	.L341
	ldr	r1, [r6, #20]
	ldr	r3, [r6, #16]
	add	r0, r1, r0
	add	r2, r3, r2
	str	r0, [r6, #12]
	str	r2, [r6, #8]
	b	.L332
.L364:
	ldr	r1, [r0, #8]
	ldr	r2, [r0]
	add	r2, r1, r2
	cmp	r2, #0
	ldr	r3, .L368
	ble	.L331
	ldr	r3, [r3]
	cmp	r1, r3
	ble	.L365
.L331:
	mov	r3, #0
	str	r3, [r6, #24]
.L332:
	mov	r5, #0
	ldr	r4, .L368+4
	ldr	r7, .L368+8
	ldr	r8, .L368+12
	ldr	r9, .L368+16
	ldr	fp, .L368
	ldr	r10, .L368+20
.L333:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L366
.L343:
	add	r5, r5, #1
	cmp	r5, #5
	add	r4, r4, #48
	bne	.L333
	ldr	r1, [r7, #4]
	ldr	r3, .L368+24
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #3
	rsb	r3, r3, r3, lsl #4
	cmp	r1, r3
	ldreq	r3, [r6, #32]
	addeq	r3, r3, #1
	streq	r3, [r6, #32]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L366:
	ldmia	r4, {ip, lr}
	add	r0, r6, #8
	ldmia	r6, {r2, r3}
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r4, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L343
	mov	r2, #0
	ldr	r3, [r9]
	ldr	r1, [fp, #68]
	add	r3, r3, #1
	cmp	r1, r2
	str	r3, [r9]
	ldrne	r3, [r10]
	addne	r3, r3, #1
	strne	r3, [r10]
	str	r2, [r6, #24]
	ldr	r3, .L368+28
	str	r2, [r4, #24]
	str	r2, [r7]
	mov	lr, pc
	bx	r3
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r0, r3, r0, lsr #31
	cmp	r0, #1
	mov	r0, r5
	beq	.L367
.L346:
	bl	fireTreasure
	b	.L343
.L367:
	ldr	r3, .L368+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L346
	bl	fireSpecial
	b	.L343
.L365:
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	sub	r3, r3, #1
	cmp	r3, #237
	bhi	.L331
	mvn	r3, #1
	add	r1, r1, r3
	str	r1, [r0, #8]
	str	r3, [r0, #16]
	b	.L332
.L369:
	.align	2
.L368:
	.word	player
	.word	enemyBullets
	.word	.LANCHOR0
	.word	collision
	.word	totalScore
	.word	superFired
	.word	-2004318071
	.word	rand
	.word	specialActive
	.size	updateBullet.part.6, .-updateBullet.part.6
	.align	2
	.global	updateBullet
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bne	updateBullet.part.6
.L371:
	ldr	r2, .L372
	str	r3, [r2]
	bx	lr
.L373:
	.align	2
.L372:
	.word	tired
	.size	updateBullet, .-updateBullet
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L414
	bl	updatePlayer
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #100
	ldr	r5, .L414+4
	str	r3, [r4]
	beq	.L407
.L375:
	ldr	r3, [r5, #8]
	ldr	r4, .L414+8
	add	r3, r3, #1
	mov	r0, r3
	ldr	r1, [r4]
	ldr	r2, .L414+12
	str	r3, [r5, #8]
	mov	lr, pc
	bx	r2
	cmp	r1, #0
	bne	.L377
	ldr	r2, [r4, #4]
	subs	r2, r2, #1
	movmi	r2, #16
	rsbpl	r3, r2, #16
	orrpl	r3, r2, r3, asl #8
	strpl	r2, [r4, #4]
	movmi	r3, r2
	strmi	r2, [r4, #4]
	mov	r2, #67108864
	movpl	r3, r3, asl #16
	movpl	r3, r3, lsr #16
	strh	r3, [r2, #82]	@ movhi
.L377:
	ldr	r4, .L414+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L414+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, .L414+24
	ldr	r6, .L414+28
	add	r5, r4, #144
.L382:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	streq	r3, [r6]
	bne	.L408
.L381:
	add	r4, r4, #48
	cmp	r5, r4
	bne	.L382
	ldr	r4, .L414+32
	add	r5, r4, #240
.L385:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L409
	ldr	r3, [r4, #44]
	cmp	r3, #0
	ldrne	r3, [r4, #40]
	addne	r3, r3, #1
	strne	r3, [r4, #40]
.L384:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L385
	ldr	r4, .L414+36
	add	r5, r4, #240
.L387:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L410
.L386:
	add	r4, r4, #48
	cmp	r5, r4
	bne	.L387
	ldr	r4, .L414+40
	add	r5, r4, #400
.L389:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L411
.L388:
	add	r4, r4, #80
	cmp	r5, r4
	bne	.L389
	ldr	r0, .L414+44
	ldr	r3, [r0, #56]
	cmp	r3, #0
	bne	.L412
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L411:
	mov	r0, r4
	bl	updateTreasure.part.4
	b	.L388
.L410:
	mov	r0, r4
	bl	updateEnemyBullet.part.1
	b	.L386
.L409:
	mov	r0, r4
	bl	updateEnemy.part.3
	b	.L384
.L408:
	mov	r0, r4
	bl	updateBullet.part.6
	b	.L381
.L412:
	ldmfd	sp!, {r4, r5, r6, lr}
	b	updateSpecial.part.5
.L407:
	bl	fireEnemy
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L413
.L376:
	mov	r3, #0
	str	r3, [r4]
	b	.L375
.L413:
	bl	fireEnemyBullet
	b	.L376
.L415:
	.align	2
.L414:
	.word	enemyBulletTimer
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.word	DMANow
	.word	shadowOAM
	.word	bullets
	.word	tired
	.word	enemys
	.word	enemyBullets
	.word	treasures
	.word	specials
	.size	updateGame, .-updateGame
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	shadowOAM,1024,4
	.global	changeBlending
	.global	counter
	.global	ghost_blend
	.comm	blend,4,4
	.global	accel
	.global	vblankCount
	.global	alreadyDrop
	.comm	tired,4,4
	.comm	groundLevel,4,4
	.comm	specialActive,4,4
	.comm	specialCollected,4,4
	.comm	superFired,4,4
	.comm	totalScore,4,4
	.comm	scoreCol2,4,4
	.comm	scoreCol1,4,4
	.comm	specials,80,4
	.comm	special,80,4
	.comm	treasures,400,4
	.comm	treasure,80,4
	.comm	player,80,4
	.comm	enemyBulletTimer,4,4
	.comm	lives,4,4
	.comm	superBullets,240,4
	.comm	enemysRemaining,4,4
	.comm	enemys,240,4
	.comm	enemyBullets,240,4
	.comm	bullets,144,4
	.section	.rodata
	.align	2
	.type	accel, %object
	.size	accel, 4
accel:
	.word	-1
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	changeBlending, %object
	.size	changeBlending, 4
changeBlending:
	.word	5
	.type	ghost_blend, %object
	.size	ghost_blend, 4
ghost_blend:
	.word	16
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	alreadyDrop, %object
	.size	alreadyDrop, 4
alreadyDrop:
	.space	4
	.type	vblankCount, %object
	.size	vblankCount, 4
vblankCount:
	.space	4
	.type	counter, %object
	.size	counter, 4
counter:
	.space	4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
