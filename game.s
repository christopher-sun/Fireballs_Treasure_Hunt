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
	.type	updateEnemyBullet.part.0, %function
updateEnemyBullet.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L7
	str	lr, [sp, #-4]!
	ldr	r1, [r0]
	ldr	lr, [r0, #8]
	ldr	r3, [ip]
	ldr	r2, [ip, #24]
	add	r1, lr, r1
	add	r2, r3, r2
	cmp	r1, r2
	bgt	.L2
	ldr	r2, [r0, #12]
	ldr	r1, [r0, #20]
	add	r2, r2, r1
	sub	r2, r2, #1
	cmp	r2, #237
	bls	.L6
.L2:
	mov	r2, #0
	ldr	r1, .L7+4
	sub	r3, r3, #10
	str	r3, [ip]
	str	r2, [r0, #24]
	str	r2, [r1]
	ldr	lr, [sp], #4
	bx	lr
.L6:
	ldr	r3, [r0, #16]
	add	lr, r3, lr
	str	lr, [r0, #8]
	ldr	lr, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
	.word	.LANCHOR0
	.size	updateEnemyBullet.part.0, .-updateEnemyBullet.part.0
	.global	__aeabi_idivmod
	.align	2
	.type	updateEnemy.part.3, %function
updateEnemy.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	ldr	r3, [r0, #28]
	ldr	r2, .L26
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	mov	r2, r3, asr #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, asl #2
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
	mov	r8, #0
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #12]
	ldr	r4, .L26+20
	add	r3, r3, r2
	str	r3, [r5, #4]
	ldr	r9, .L26+24
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
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
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
	ldrne	r3, [r9]
	subne	r3, r3, #1
	strne	r8, [r4, #24]
	strne	r3, [r9]
	strne	r8, [r5, #24]
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
	.word	enemysRemaining
	.size	updateEnemy.part.3, .-updateEnemy.part.3
	.align	2
	.type	updateTreasure.part.5, %function
updateTreasure.part.5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L41
	ldr	ip, [r4, #4]
	ldr	r2, [r0]
	cmp	ip, r2
	sub	sp, sp, #20
	blt	.L29
.L32:
	ldr	lr, [r4, #24]
	add	ip, r2, lr
	str	ip, [r4, #4]
.L30:
	ldr	r3, [r4, #72]
	add	r3, r3, #1
	cmp	r3, #300
	str	r3, [r4, #72]
	moveq	r3, #1
	streq	r3, [r4, #76]
	beq	.L34
	cmp	r3, #600
	moveq	r3, #0
	streq	r3, [r4, #56]
.L34:
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r5, [r4, #20]
	ldmib	r0, {r0, r1}
	str	lr, [sp, #8]
	ldr	lr, [r4, #8]
	str	r5, [sp, #12]
	str	ip, [sp]
	str	lr, [sp, #4]
	ldr	r5, .L41+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #0
	movne	r3, #1
	strne	r2, [r4, #56]
	strne	r3, [r4, #12]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L29:
	ldr	r1, .L41+8
	ldr	r3, .L41+12
	ldr	r1, [r1, #4]
	smull	lr, r3, r1, r3
	sub	r3, r3, r1, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r1, r3
	bne	.L40
	ldr	r3, [r4, #12]
	sub	r3, r3, #1
	rsb	ip, r3, ip
	cmp	r2, ip
	str	ip, [r4, #4]
	str	r3, [r4, #12]
	ble	.L32
.L40:
	ldr	lr, [r4, #24]
	b	.L30
.L42:
	.align	2
.L41:
	.word	player
	.word	collision
	.word	.LANCHOR0
	.word	1431655766
	.size	updateTreasure.part.5, .-updateTreasure.part.5
	.align	2
	.type	updateSpecial.part.6, %function
updateSpecial.part.6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L56
	ldr	ip, [r4, #4]
	ldr	r2, [r0]
	cmp	ip, r2
	sub	sp, sp, #20
	blt	.L44
.L47:
	ldr	lr, [r4, #24]
	add	ip, r2, lr
	str	ip, [r4, #4]
.L45:
	ldr	r3, [r4, #72]
	add	r3, r3, #1
	cmp	r3, #300
	str	r3, [r4, #72]
	moveq	r3, #1
	streq	r3, [r4, #76]
	beq	.L49
	cmp	r3, #600
	moveq	r3, #0
	streq	r3, [r4, #56]
.L49:
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r5, [r4, #20]
	ldmib	r0, {r0, r1}
	str	lr, [sp, #8]
	ldr	lr, [r4, #8]
	str	r5, [sp, #12]
	str	ip, [sp]
	str	lr, [sp, #4]
	ldr	r5, .L56+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L43
	mov	r3, #1
	mov	r1, #0
	ldr	r2, .L56+8
	str	r1, [r4, #56]
	str	r3, [r4, #12]
	str	r3, [r2]
.L43:
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L44:
	ldr	r1, .L56+12
	ldr	r3, .L56+16
	ldr	r1, [r1, #4]
	smull	lr, r3, r1, r3
	sub	r3, r3, r1, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r1, r3
	bne	.L55
	ldr	r3, [r4, #12]
	sub	r3, r3, #1
	rsb	ip, r3, ip
	cmp	r2, ip
	str	ip, [r4, #4]
	str	r3, [r4, #12]
	ble	.L47
.L55:
	ldr	lr, [r4, #24]
	b	.L45
.L57:
	.align	2
.L56:
	.word	player
	.word	collision
	.word	specialCollected
	.word	.LANCHOR0
	.word	1431655766
	.size	updateSpecial.part.6, .-updateSpecial.part.6
	.align	2
	.global	drawScore
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r0, #0
	mov	lr, #73
	mov	ip, #78
	ldr	r3, .L60
	ldr	r2, .L60+4
	ldr	r1, [r3]
	ldr	r3, .L60+8
	ldr	r2, [r2]
	add	r5, r3, #308
	add	r1, r1, #416
	add	r4, r3, #316
	strh	r1, [r5]	@ movhi
	add	r2, r2, #416
	add	r1, r3, #304
	add	r3, r3, #312
	strh	r2, [r4]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	scoreCol1
	.word	scoreCol2
	.word	shadowOAM
	.size	drawScore, .-drawScore
	.align	2
	.global	drawLives
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	ip, #232
	mov	r4, #0
	ldr	r2, .L66
	ldr	lr, [r2]
	ldr	r3, .L66+4
	add	r2, lr, #384
	mov	r1, r3
	mov	r0, r3
	mov	r6, #10
	mov	r5, #20
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	cmp	lr, #2
	strh	r2, [r3, #4]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	strh	r2, [r3, #68]	@ movhi
	strh	r4, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	moveq	r3, #512
	strh	r5, [r1, #64]!	@ movhi
	strh	r6, [r0, #56]!	@ movhi
	strh	ip, [r1, #2]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	streqh	r3, [r1]	@ movhi
	beq	.L62
	cmp	lr, #1
	moveq	r3, #512
	streqh	r3, [r1]	@ movhi
	streqh	r3, [r0]	@ movhi
.L62:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	lives
	.word	shadowOAM+320
	.size	drawLives, .-drawLives
	.align	2
	.global	initPlayer
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r2, #0
	mov	ip, #140
	mov	r5, #20
	mov	r4, #112
	mov	r0, #16
	mov	r1, #2
	ldr	r3, .L70
	ldr	lr, .L70+4
	str	r5, [r3, #12]
	str	r4, [r3, #8]
	str	r2, [lr]
	str	ip, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #44]
	str	r2, [r3, #68]
	str	r2, [r3, #40]
	str	r2, [r3, #28]
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L71:
	.align	2
.L70:
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
	ldr	r3, .L79
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, [r3, #68]
	ldr	r2, .L79+4
	cmp	r4, #0
	ldr	r2, [r2]
	bne	.L73
	cmp	r2, #0
	ldr	r2, [r3, #8]
	ldr	r4, .L79+8
	ldr	ip, [r3, #4]
	orr	r2, r2, #16384
	add	r0, r3, #40
	ldr	r5, .L79+12
	ldmia	r0, {r0, r1}
	strh	r2, [r4, #2]	@ movhi
	strh	ip, [r4]	@ movhi
	beq	.L74
	mov	lr, pc
	bx	r5
	mov	r1, r1, asl #6
	add	r1, r1, #6
	strh	r1, [r4, #4]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L73:
	cmp	r2, #0
	ldr	r2, [r3, #8]
	ldr	r5, .L79+8
	ldr	ip, [r3, #4]
	orr	r2, r2, #16384
	add	r0, r3, #40
	ldr	r6, .L79+12
	ldmia	r0, {r0, r1}
	strh	r2, [r5, #2]	@ movhi
	strh	ip, [r5]	@ movhi
	bne	.L78
	mov	lr, pc
	bx	r6
	add	r1, r4, r1, lsl #5
	mov	r1, r1, asl #1
	strh	r1, [r5, #4]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L74:
	mov	lr, pc
	bx	r5
	mov	r1, r1, asl #6
	strh	r1, [r4, #4]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L78:
	mov	lr, pc
	bx	r6
	add	r1, r4, r1, lsl #4
	mov	r1, r1, asl #2
	strh	r1, [r5, #4]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	player
	.word	tired
	.word	shadowOAM
	.word	__aeabi_idivmod
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullets
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #8
	mvn	lr, #7
	mov	r2, #0
	mvn	ip, #1
	ldr	r3, .L87
	add	r0, r3, #144
.L82:
	str	r1, [r3]
	str	r2, [r3, #12]
	str	ip, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #44]
	stmib	r3, {r1, lr}
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L82
	mov	r2, #0
	mov	r0, #8
	mov	r1, r2
	mov	lr, #1
	ldr	r3, .L87+4
.L83:
	str	r2, [r3, #40]
	add	r2, r2, #1
	cmp	r2, #5
	str	r0, [r3]
	stmib	r3, {r0, r1}
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	mov	ip, #0
	add	r3, r3, #48
	bne	.L83
	ldr	r3, .L87+8
	ldr	lr, [sp], #4
	str	ip, [r3]
	bx	lr
.L88:
	.align	2
.L87:
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
	@ link register save eliminated.
	mov	r2, #0
	mov	r0, #8
	mov	r1, r2
	mvn	ip, #3
	ldr	r3, .L92
.L90:
	str	r2, [r3, #40]
	add	r2, r2, #1
	cmp	r2, #5
	str	r0, [r3]
	stmib	r3, {r0, r1}
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	add	r3, r3, #48
	bne	.L90
	ldr	r3, .L92+4
	str	r2, [r3]
	bx	lr
.L93:
	.align	2
.L92:
	.word	superBullets
	.word	scoreCol2
	.size	initSuperBullets, .-initSuperBullets
	.align	2
	.global	fireEnemyBullet
	.type	fireEnemyBullet, %function
fireEnemyBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r6, .L105
	mov	r4, #0
	mov	r8, r6
	mov	r5, r6
	ldr	r7, .L105+4
.L99:
	mov	lr, pc
	bx	r7
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L104
	add	r4, r4, #1
	cmp	r4, #5
	add	r5, r5, #48
	bne	.L99
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L104:
	mov	lr, #1
	mov	ip, #512
	mov	r1, #13
	ldr	r2, .L105+8
	smull	r5, r2, r0, r2
	add	r5, r2, r0
	mov	r2, r0, asr #31
	add	r4, r4, r4, lsl #1
	rsb	r2, r2, r5, asr #7
	add	r4, r8, r4, lsl #4
	rsb	r2, r2, r2, lsl #4
	sub	r0, r0, r2, asl #4
	ldr	r2, [r4, #4]
	rsb	r0, r2, r0
	ldr	r2, .L105+12
	str	r3, [r4, #8]
	ldr	r3, .L105+16
	str	lr, [r4, #24]
	str	lr, [r2]
	str	r0, [r4, #12]
	add	r0, r3, #40
.L98:
	ldr	r2, [r6, #24]
	cmp	r2, #0
	ldrne	r2, [r6, #12]
	ldrne	lr, [r6, #8]
	orrne	r2, r2, #16384
	strneh	r1, [r3, #2]	@ movhi
	strneh	r2, [r3]	@ movhi
	strneh	lr, [r3, #-2]	@ movhi
	streqh	ip, [r3, #-2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r6, r6, #48
	bne	.L98
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	enemyBullets
	.word	rand
	.word	-2004318071
	.word	.LANCHOR0
	.word	shadowOAM+258
	.size	fireEnemyBullet, .-fireEnemyBullet
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
	b	updateEnemyBullet.part.0
	.size	updateEnemyBullet, .-updateEnemyBullet
	.align	2
	.global	drawBullet
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r7, #512
	mov	r6, #9
	mov	r5, #10
	ldr	r2, .L116
	ldr	r3, .L116+4
	ldr	r4, [r2, #68]
	ldr	r2, .L116+8
	add	ip, r3, #24
.L113:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	streqh	r7, [r3, #216]	@ movhi
	beq	.L112
	cmp	r4, #0
	moveq	r0, r6
	movne	r0, r5
	ldr	r1, [r2, #12]
	ldrb	lr, [r2, #8]	@ zero_extendqisi2
	bic	r1, r1, #65024
	strh	r0, [r3, #220]	@ movhi
	strh	r1, [r3, #218]	@ movhi
	strh	lr, [r3, #216]	@ movhi
.L112:
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #48
	bne	.L113
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	player
	.word	shadowOAM
	.word	bullets
	.size	drawBullet, .-drawBullet
	.align	2
	.global	fireBullet
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L126
	ldr	ip, [r3, #24]
	cmp	ip, #0
	stmfd	sp!, {r4, r5, r6, lr}
	beq	.L119
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L124
	mov	r1, #1
	ldr	r0, [r3, #120]
	ldr	r2, .L126+4
	cmp	r0, #0
	str	r1, [r2]
	moveq	ip, #2
	beq	.L119
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L124:
	mov	ip, #1
.L119:
	mov	r5, #1
	ldr	r0, .L126+8
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
	ldr	r6, .L126+12
	str	r4, [ip, #44]
	str	r5, [ip, #24]
	mov	r3, #0
	ldr	r2, .L126+16
	ldr	r1, .L126+20
	ldr	r0, .L126+24
	mov	lr, pc
	bx	r6
	ldmfd	sp!, {r4, r5, r6, lr}
	b	drawBullet
.L127:
	.align	2
.L126:
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
	mov	lr, #13
	ldr	r3, .L134
	ldr	r2, .L134+4
	add	r0, r3, #40
.L131:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	ldrne	r1, [r2, #12]
	ldrne	ip, [r2, #8]
	orrne	r1, r1, #16384
	strneh	lr, [r3, #2]	@ movhi
	strneh	r1, [r3]	@ movhi
	strneh	ip, [r3, #-2]	@ movhi
	streqh	r4, [r3, #-2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #48
	bne	.L131
	ldmfd	sp!, {r4, lr}
	bx	lr
.L135:
	.align	2
.L134:
	.word	shadowOAM+258
	.word	enemyBullets
	.size	drawEnemyBullet, .-drawEnemyBullet
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
	mov	lr, #2
	ldr	r3, .L140
	add	ip, r3, #200
.L137:
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
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L137
	ldmfd	sp!, {r4, lr}
	bx	lr
.L141:
	.align	2
.L140:
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
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateEnemy.part.3
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	fireEnemy
	.type	fireEnemy, %function
fireEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L152
	mov	lr, pc
	bx	r3
	ldr	r3, .L152+4
	smull	r1, r2, r3, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r0
	add	r0, r3, r3, lsl #2
	ldr	lr, .L152+8
	mov	r0, r0, asl #3
	add	ip, lr, r0
	ldr	r2, [ip, #24]
	cmp	r2, #0
	bne	.L144
	mov	r6, #1
	mov	r2, lr
	mov	r1, r6
	mov	r5, #512
	mov	r4, #11
	rsb	r7, r3, r3, lsl #29
	rsb	r3, r3, r7, lsl #2
	mov	r3, r3, asl r6
	add	r3, r3, #150
	str	r3, [lr, r0]
	str	r6, [ip, #4]
	str	r6, [ip, #24]
	ldr	r3, .L152+12
.L148:
	ldr	r0, [r2, #24]
	cmp	r0, #0
	ldrne	ip, [r2]
	ldrne	r0, [r2, #4]
	add	r1, r1, #1
	strneh	r4, [r3, #12]	@ movhi
	strneh	ip, [r3, #8]	@ movhi
	strneh	r0, [r3, #10]	@ movhi
	streqh	r5, [r3, #8]	@ movhi
	cmp	r1, #6
	add	r2, r2, #40
	add	r3, r3, #8
	bne	.L148
.L144:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L153:
	.align	2
.L152:
	.word	rand
	.word	1717986919
	.word	enemys
	.word	shadowOAM
	.size	fireEnemy, .-fireEnemy
	.align	2
	.global	drawEnemy
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r1, #1
	mov	r4, #512
	mov	lr, #11
	ldr	r3, .L160
	ldr	r2, .L160+4
.L157:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldrne	ip, [r3]
	ldrne	r0, [r3, #4]
	add	r1, r1, #1
	strneh	lr, [r2, #12]	@ movhi
	strneh	ip, [r2, #8]	@ movhi
	strneh	r0, [r2, #10]	@ movhi
	streqh	r4, [r2, #8]	@ movhi
	cmp	r1, #6
	add	r3, r3, #40
	add	r2, r2, #8
	bne	.L157
	ldmfd	sp!, {r4, lr}
	bx	lr
.L161:
	.align	2
.L160:
	.word	enemys
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	initTreasure
	.type	initTreasure, %function
initTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	mov	ip, #1
	mov	r2, r1
	mov	r0, #8
	str	lr, [sp, #-4]!
	ldr	lr, .L166
	ldr	r3, .L166+4
	ldr	lr, [lr]
.L163:
	str	r1, [r3, #60]
	add	r1, r1, #1
	cmp	r1, #5
	str	lr, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #16]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	ip, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #72]
	str	r2, [r3, #76]
	add	r3, r3, #80
	bne	.L163
	ldr	lr, [sp], #4
	bx	lr
.L167:
	.align	2
.L166:
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
	b	updateTreasure.part.5
	.size	updateTreasure, .-updateTreasure
	.align	2
	.global	drawTreasure
	.type	drawTreasure, %function
drawTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r1, #0
	mov	r2, #41
	mov	r5, #512
	mov	r4, #8
	ldr	r3, .L178
	ldr	ip, .L178+4
.L175:
	ldr	r0, [r3, #56]
	cmp	r0, #0
	addeq	r0, r1, #328
	streqh	r5, [ip, r0]	@ movhi
	beq	.L174
	ldr	r0, [r3, #76]
	cmp	r0, #0
	ldrne	r0, [r3, #4]
	add	lr, r1, #328
	ldreq	lr, [r3, #4]
	orrne	r0, r0, #1024
	addeq	r0, r1, #328
	strneh	r0, [ip, lr]	@ movhi
	streqh	lr, [ip, r0]	@ movhi
	ldr	lr, [r3, #8]
	add	r0, ip, r2, lsl #3
	strh	lr, [r0, #2]	@ movhi
	strh	r4, [r0, #4]	@ movhi
.L174:
	add	r2, r2, #1
	cmp	r2, #46
	add	r3, r3, #80
	add	r1, r1, #8
	bne	.L175
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L179:
	.align	2
.L178:
	.word	treasures
	.word	shadowOAM
	.size	drawTreasure, .-drawTreasure
	.align	2
	.global	fireTreasure
	.type	fireTreasure, %function
fireTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L186
	mov	r3, #0
	mov	r2, ip
.L182:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L185
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #80
	bne	.L182
	bx	lr
.L185:
	stmfd	sp!, {r4, lr}
	mov	lr, #1
	ldr	r2, .L186+4
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
	str	r2, [r3, #8]
	ldmfd	sp!, {r4, lr}
	b	drawTreasure
.L187:
	.align	2
.L186:
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
	mov	r2, #0
	mov	r0, #1
	mov	r1, #8
	ldr	ip, .L190
	str	lr, [sp, #-4]!
	ldr	r3, .L190+4
	ldr	lr, [ip]
	ldr	ip, .L190+8
	str	lr, [r3]
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
	str	r2, [ip]
	str	r0, [r3, #12]
	str	r0, [r3, #44]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L191:
	.align	2
.L190:
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
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r1, #140
	mov	r4, #0
	mov	r2, #16
	mov	r5, #2
	mov	lr, #20
	mov	ip, #112
	ldr	r3, .L196
	ldr	r0, .L196+4
	stmib	r3, {r1, ip, lr}
	str	r1, [r3]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r5, [r3, #16]
	str	r5, [r3, #44]
	str	r4, [r3, #68]
	str	r4, [r3, #40]
	str	r4, [r3, #28]
	str	r4, [r0]
	bl	initBullets
	mov	ip, r5
	mov	r2, r4
	mov	r0, #8
	mov	r5, #30
	mov	r1, #1
	ldr	r3, .L196+8
	add	lr, r3, #200
.L193:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	ip, [r3, #36]
	add	r3, r3, #40
	cmp	r3, lr
	mov	r4, #0
	bne	.L193
	bl	initTreasure
	bl	initSpecial
	ldr	r3, .L196+12
	mov	lr, pc
	bx	r3
	mov	r3, #5
	mov	r0, #67108864
	mov	ip, #13120
	mov	r5, #3
	ldr	r1, .L196+16
	ldr	r2, .L196+20
	strh	ip, [r0, #80]	@ movhi
	ldr	lr, .L196+24
	str	r3, [r1]
	str	r3, [r2]
	ldr	ip, .L196+28
	ldr	r0, .L196+32
	ldr	r1, .L196+36
	ldr	r2, .L196+40
	ldr	r3, .L196+44
	str	r5, [lr]
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L197:
	.align	2
.L196:
	.word	player
	.word	tired
	.word	enemys
	.word	hideSprites
	.word	enemysRemaining
	.word	scoreCol2
	.word	lives
	.word	enemyBulletTimer
	.word	scoreCol1
	.word	superFired
	.word	specialCollected
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
	ldr	r5, .L249
	ldr	r3, [r5, #28]
	ldr	r2, .L249+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	mov	r2, r3, asr #31
	rsb	r2, r2, r1, asr #4
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, asl #3
	str	r3, [r5, #28]
	ldreq	r3, [r5, #40]
	addeq	r3, r3, #1
	streq	r3, [r5, #40]
	ldr	r3, .L249+8
	ldr	r2, [r3]
	cmp	r2, #5
	sub	sp, sp, #16
	beq	.L244
.L200:
	ldr	r4, .L249+12
	ldrh	r2, [r4]
	tst	r2, #1
	beq	.L201
	ldr	r3, .L249+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L245
.L201:
	ldr	r3, .L249+20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L202
	ldr	r3, [r5, #8]
	ldr	r1, .L249
	cmp	r3, #0
	ldrgt	r0, [r1, #16]
	rsbgt	r3, r0, r3
	strgt	r3, [r1, #8]
.L202:
	ldr	r3, .L249+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L203
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #20]
	add	r3, r1, r3
	cmp	r3, #239
	ldr	r3, .L249
	ldrle	r0, [r3, #16]
	addle	r1, r0, r1
	strle	r1, [r3, #8]
.L203:
	tst	r2, #64
	beq	.L206
	ldr	r3, .L249+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L246
.L206:
	ldmia	r5, {r0, r3}
.L205:
	cmp	r0, r3
	ble	.L207
	ldr	ip, .L249+24
	ldr	r1, .L249+28
	ldr	ip, [ip, #4]
	smull	lr, r1, ip, r1
	sub	r1, r1, ip, asr #31
	add	r1, r1, r1, lsl #1
	cmp	ip, r1
	bne	.L208
	ldr	r1, [r5, #12]
	sub	r1, r1, #1
	rsb	r3, r1, r3
	tst	r2, #2
	str	r3, [r5, #4]
	str	r1, [r5, #12]
	beq	.L209
.L219:
	ldr	r3, .L249+16
	ldrh	r3, [r3]
	tst	r3, #2
	subeq	r0, r0, #10
	streq	r0, [r5]
.L209:
	ldr	r3, [r5, #4]
	cmp	r3, r0
	bge	.L220
.L210:
	tst	r2, #128
	beq	.L211
	ldr	r2, .L249+16
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L247
.L211:
	cmp	r3, #1
	movle	r2, #0
	mov	r9, #0
	ldrle	r3, .L249+32
	ldr	r4, .L249+36
	strle	r2, [r3]
	ldr	r7, .L249+40
	ldr	r8, .L249+32
	ldr	r10, .L249+24
	add	r6, r4, #240
.L217:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L248
.L215:
	add	r4, r4, #48
	cmp	r6, r4
	bne	.L217
	ldr	r3, .L249+44
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L198
	ldr	r2, .L249+48
	ldr	r1, [r2, #120]
	cmp	r1, #0
	beq	.L198
	ldr	r2, [r2, #24]
	cmp	r2, #0
	streq	r2, [r3]
.L198:
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L207:
	tst	r2, #2
	bne	.L219
.L220:
	mov	r3, r0
	str	r0, [r5, #4]
	b	.L210
.L248:
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
	b	.L215
.L247:
	ldr	r2, .L249+52
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L211
	ldr	r2, [r5, #68]
	cmp	r2, #0
	moveq	r1, #1
	ldr	r2, .L249
	streq	r1, [r2, #68]
	mov	r1, #5
	ldr	r2, .L249+56
	str	r1, [r2]
	b	.L211
.L208:
	tst	r2, #2
	beq	.L210
	b	.L219
.L246:
	ldmia	r5, {r0, r3}
	cmp	r3, r0
	moveq	ip, #7
	ldr	r1, .L249
	subeq	r3, r3, #7
	streq	r3, [r1, #4]
	streq	ip, [r1, #12]
	b	.L205
.L245:
	bl	fireBullet
	ldrh	r2, [r4]
	b	.L201
.L244:
	mov	r2, #0
	ldr	r0, .L249+52
	ldr	r1, .L249+60
	str	r2, [r5, #68]
	str	r2, [r3]
	str	r2, [r0]
	str	r2, [r1]
	bl	initSpecial
	b	.L200
.L250:
	.align	2
.L249:
	.word	player
	.word	1717986919
	.word	superFired
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	.LANCHOR0
	.word	1431655766
	.word	lives
	.word	enemyBullets
	.word	collision
	.word	tired
	.word	bullets
	.word	specialCollected
	.word	scoreCol2
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
	b	updateSpecial.part.6
	.size	updateSpecial, .-updateSpecial
	.align	2
	.global	drawSpecial
	.type	drawSpecial, %function
drawSpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L261
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L254
	mov	r2, #512
	ldr	r3, .L261+4
	strh	r2, [r3]	@ movhi
	bx	lr
.L254:
	ldr	r2, [r3, #76]
	cmp	r2, #0
	bne	.L256
	ldr	r2, .L261+4
	ldr	r1, [r3, #4]
	strh	r1, [r2]	@ movhi
.L258:
	mov	r1, #15
	ldr	r0, [r3, #8]
	ldr	r3, .L261+8
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r3]	@ movhi
	bx	lr
.L256:
	ldr	r1, [r3, #4]
	ldr	r2, .L261+4
	orr	r1, r1, #1024
	strh	r1, [r2]	@ movhi
	b	.L258
.L262:
	.align	2
.L261:
	.word	specials
	.word	shadowOAM+368
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
	mov	r4, #512
	mov	r1, #1
	mov	lr, #11
	ldr	r3, .L273
	ldr	r2, .L273+4
.L266:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldrne	ip, [r3]
	ldrne	r0, [r3, #4]
	add	r1, r1, #1
	strneh	lr, [r2, #12]	@ movhi
	strneh	ip, [r2, #8]	@ movhi
	strneh	r0, [r2, #10]	@ movhi
	streqh	r4, [r2, #8]	@ movhi
	cmp	r1, #6
	add	r3, r3, #40
	add	r2, r2, #8
	bne	.L266
	bl	drawBullet
	mov	r4, #512
	mov	lr, #13
	ldr	r3, .L273+8
	ldr	r2, .L273+12
	add	r0, r3, #40
.L269:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	ldrne	r1, [r2, #12]
	ldrne	ip, [r2, #8]
	orrne	r1, r1, #16384
	strneh	lr, [r3, #2]	@ movhi
	strneh	r1, [r3]	@ movhi
	strneh	ip, [r3, #-2]	@ movhi
	streqh	r4, [r3, #-2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #48
	bne	.L269
	ldr	r3, .L273+16
	mov	ip, #0
	mov	r2, r3
	mov	lr, #78
	mov	r4, #73
	ldr	r0, .L273+20
	ldr	r1, .L273+24
	ldr	r0, [r0]
	ldr	r1, [r1]
	strh	ip, [r2, #8]!	@ movhi
	add	r0, r0, #416
	add	r1, r1, #416
	strh	lr, [r2, #2]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	strh	ip, [r3]	@ movhi
	bl	drawLives
	bl	drawTreasure
	bl	drawSpecial
	ldr	r3, .L273+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L273+32
	ldr	r3, [r2, #4]
	add	r3, r3, #1
	str	r3, [r2, #4]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L274:
	.align	2
.L273:
	.word	enemys
	.word	shadowOAM
	.word	shadowOAM+258
	.word	enemyBullets
	.word	shadowOAM+304
	.word	scoreCol1
	.word	scoreCol2
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
	ldr	r3, .L278
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bxne	lr
	mov	r1, #1
	ldr	r2, .L278+4
	add	r0, r0, r0, lsl #1
	add	r0, r2, r0, lsl #4
	str	lr, [sp, #-4]!
	ldr	r2, .L278+8
	ldr	lr, [r0, #8]
	ldr	ip, [r0, #12]
	ldr	r0, .L278+12
	str	lr, [r2, #4]
	str	ip, [r2, #8]
	str	r3, [r2, #76]
	str	r1, [r2, #56]
	ldr	lr, [sp], #4
	str	r1, [r0]
	b	drawSpecial
.L279:
	.align	2
.L278:
	.word	treasures
	.word	enemyBullets
	.word	specials
	.word	specialActive
	.size	fireSpecial, .-fireSpecial
	.align	2
	.type	updateBullet.part.7, %function
updateBullet.part.7:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r0, #44]
	cmp	r3, #0
	sub	sp, sp, #20
	mov	r6, r0
	beq	.L317
	ldr	r2, [r0, #8]
	ldr	r3, [r0]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L283
	ldr	r1, .L321
	ldr	r3, [r1]
	cmp	r2, r3
	bgt	.L283
	ldr	r0, [r0, #12]
	ldr	r3, [r6, #20]
	add	r3, r0, r3
	sub	r3, r3, #1
	cmp	r3, #237
	bhi	.L283
	mvn	r4, #1
	mov	r5, #2
	mov	r7, #0
	ldr	r3, .L321+4
	ldr	ip, [r1, #68]
	add	lr, r3, #240
.L292:
	cmp	ip, #0
	streq	ip, [r6, #24]
	ldr	r1, [r3, #24]
	cmp	r1, #0
	beq	.L287
	str	r4, [r6, #16]
	ldr	r1, [r3, #8]
	cmp	r2, r1
	bgt	.L288
	streq	r7, [r6, #16]
	strne	r5, [r6, #16]
.L288:
	ldr	r1, [r3, #12]
	cmp	r0, r1
	strgt	r4, [r6, #20]
	bgt	.L287
	streq	r7, [r6, #20]
	strne	r5, [r6, #20]
.L287:
	add	r3, r3, #48
	cmp	r3, lr
	bne	.L292
	ldr	r1, [r6, #20]
	ldr	r3, [r6, #16]
	add	r0, r1, r0
	add	r2, r3, r2
	str	r0, [r6, #12]
	str	r2, [r6, #8]
	b	.L284
.L317:
	ldr	r1, [r0, #8]
	ldr	r2, [r0]
	add	r2, r1, r2
	cmp	r2, #0
	ldr	r3, .L321
	ble	.L283
	ldr	r3, [r3]
	cmp	r1, r3
	ble	.L318
.L283:
	mov	r3, #0
	str	r3, [r6, #24]
.L284:
	mov	r5, #0
	ldr	r4, .L321+4
	ldr	r7, .L321+8
	ldr	fp, .L321+12
	ldr	r10, .L321
	ldr	r9, .L321+16
	ldr	r8, .L321+20
.L285:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L319
.L294:
	add	r5, r5, #1
	cmp	r5, #5
	add	r4, r4, #48
	bne	.L285
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L319:
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
	bx	r7
	cmp	r0, #0
	beq	.L294
	mov	r3, #0
	ldr	r2, [r10, #68]
	cmp	r2, r3
	str	r3, [r6, #24]
	str	r3, [fp]
	str	r3, [r4, #24]
	beq	.L296
	ldr	r3, [r8]
	ldr	r2, .L321+24
	add	r3, r3, #1
	str	r3, [r8]
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
.L296:
	mov	lr, pc
	bx	r9
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r0, r3, r0, lsr #31
	cmp	r0, #1
	mov	r0, r5
	beq	.L320
.L297:
	bl	fireTreasure
	b	.L294
.L320:
	ldr	r3, .L321+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L297
	bl	fireSpecial
	b	.L294
.L318:
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	sub	r3, r3, #1
	cmp	r3, #237
	bhi	.L283
	mvn	r3, #1
	add	r1, r1, r3
	str	r1, [r0, #8]
	str	r3, [r0, #16]
	b	.L284
.L322:
	.align	2
.L321:
	.word	player
	.word	enemyBullets
	.word	collision
	.word	.LANCHOR0
	.word	rand
	.word	superFired
	.word	scoreCol2
	.word	specialActive
	.size	updateBullet.part.7, .-updateBullet.part.7
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
	bxeq	lr
	b	updateBullet.part.7
	.size	updateBullet, .-updateBullet
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L366
	bl	updatePlayer
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #100
	ldr	r5, .L366+4
	str	r3, [r4]
	beq	.L359
.L326:
	ldr	r3, [r5, #8]
	ldr	r4, .L366+8
	add	r3, r3, #1
	mov	r0, r3
	ldr	r1, [r4]
	ldr	r2, .L366+12
	str	r3, [r5, #8]
	mov	lr, pc
	bx	r2
	cmp	r1, #0
	bne	.L328
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
.L328:
	ldr	r4, .L366+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L366+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, .L366+24
	add	r5, r4, #144
.L332:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L360
.L331:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L332
	ldr	r4, .L366+28
	add	r5, r4, #200
.L334:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L361
.L333:
	add	r4, r4, #40
	cmp	r4, r5
	bne	.L334
	ldr	r4, .L366+32
	add	r5, r4, #240
.L336:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L362
.L335:
	add	r4, r4, #48
	cmp	r5, r4
	bne	.L336
	ldr	r4, .L366+36
	add	r5, r4, #400
.L338:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L363
.L337:
	add	r4, r4, #80
	cmp	r5, r4
	bne	.L338
	ldr	r0, .L366+40
	ldr	r3, [r0, #56]
	cmp	r3, #0
	bne	.L364
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L363:
	mov	r0, r4
	bl	updateTreasure.part.5
	b	.L337
.L362:
	mov	r0, r4
	bl	updateEnemyBullet.part.0
	b	.L335
.L361:
	mov	r0, r4
	bl	updateEnemy.part.3
	b	.L333
.L360:
	mov	r0, r4
	bl	updateBullet.part.7
	b	.L331
.L364:
	ldmfd	sp!, {r4, r5, r6, lr}
	b	updateSpecial.part.6
.L359:
	bl	fireEnemy
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L365
.L327:
	mov	r3, #0
	str	r3, [r4]
	b	.L326
.L365:
	bl	fireEnemyBullet
	b	.L327
.L367:
	.align	2
.L366:
	.word	enemyBulletTimer
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.word	DMANow
	.word	shadowOAM
	.word	bullets
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
	.comm	enemys,200,4
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
