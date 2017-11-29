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
	.type	updateTreasure.part.4, %function
updateTreasure.part.4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L39
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
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r5, [r4, #20]
	ldmib	r0, {r0, r1}
	str	lr, [sp, #8]
	ldr	lr, [r4, #8]
	str	r5, [sp, #12]
	str	ip, [sp]
	str	lr, [sp, #4]
	ldr	r5, .L39+4
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
	ldr	r1, .L39+8
	ldr	r3, .L39+12
	ldr	r1, [r1, #4]
	smull	lr, r3, r1, r3
	sub	r3, r3, r1, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r1, r3
	bne	.L38
	ldr	r3, [r4, #12]
	sub	r3, r3, #1
	rsb	ip, r3, ip
	cmp	r2, ip
	str	ip, [r4, #4]
	str	r3, [r4, #12]
	ble	.L32
.L38:
	ldr	lr, [r4, #24]
	b	.L30
.L40:
	.align	2
.L39:
	.word	player
	.word	collision
	.word	.LANCHOR0
	.word	1431655766
	.size	updateTreasure.part.4, .-updateTreasure.part.4
	.align	2
	.type	updateSpecial.part.6, %function
updateSpecial.part.6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L52
	ldr	ip, [r4, #4]
	ldr	r2, [r0]
	cmp	ip, r2
	sub	sp, sp, #20
	blt	.L42
.L45:
	ldr	lr, [r4, #24]
	add	ip, r2, lr
	str	ip, [r4, #4]
.L43:
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r5, [r4, #20]
	ldmib	r0, {r0, r1}
	str	lr, [sp, #8]
	ldr	lr, [r4, #8]
	str	r5, [sp, #12]
	str	ip, [sp]
	str	lr, [sp, #4]
	ldr	r5, .L52+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L41
	mov	r3, #1
	mov	r1, #0
	ldr	r2, .L52+8
	str	r1, [r4, #56]
	str	r3, [r4, #12]
	str	r3, [r2]
.L41:
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L42:
	ldr	r1, .L52+12
	ldr	r3, .L52+16
	ldr	r1, [r1, #4]
	smull	lr, r3, r1, r3
	sub	r3, r3, r1, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r1, r3
	bne	.L51
	ldr	r3, [r4, #12]
	sub	r3, r3, #1
	rsb	ip, r3, ip
	cmp	r2, ip
	str	ip, [r4, #4]
	str	r3, [r4, #12]
	ble	.L45
.L51:
	ldr	lr, [r4, #24]
	b	.L43
.L53:
	.align	2
.L52:
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
	ldr	r3, .L56
	ldr	r2, .L56+4
	ldr	r1, [r3]
	ldr	r3, .L56+8
	ldr	r2, [r2]
	add	r5, r3, #308
	add	r1, r1, #224
	add	r4, r3, #316
	strh	r1, [r5]	@ movhi
	add	r2, r2, #224
	add	r1, r3, #304
	add	r3, r3, #312
	strh	r2, [r4]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L57:
	.align	2
.L56:
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
	@ link register save eliminated.
	mov	r0, #0
	mov	r1, #232
	ldr	r2, .L59
	ldr	r3, .L59+4
	ldr	r2, [r2]
	add	ip, r3, #324
	add	r2, r2, #224
	add	r3, r3, #320
	strh	r2, [ip]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	bx	lr
.L60:
	.align	2
.L59:
	.word	lives
	.word	shadowOAM
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
	ldr	r3, .L63
	ldr	lr, .L63+4
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
.L64:
	.align	2
.L63:
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
	ldr	r3, .L72
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, [r3, #68]
	ldr	r2, .L72+4
	cmp	r4, #0
	ldr	r2, [r2]
	bne	.L66
	cmp	r2, #0
	ldr	r2, [r3, #8]
	ldr	r4, .L72+8
	ldr	ip, [r3, #4]
	orr	r2, r2, #16384
	add	r0, r3, #40
	ldr	r5, .L72+12
	ldmia	r0, {r0, r1}
	strh	r2, [r4, #2]	@ movhi
	strh	ip, [r4]	@ movhi
	beq	.L67
	mov	lr, pc
	bx	r5
	mov	r1, r1, asl #6
	add	r1, r1, #6
	strh	r1, [r4, #4]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L66:
	cmp	r2, #0
	ldr	r2, [r3, #8]
	ldr	r5, .L72+8
	ldr	ip, [r3, #4]
	orr	r2, r2, #16384
	add	r0, r3, #40
	ldr	r6, .L72+12
	ldmia	r0, {r0, r1}
	strh	r2, [r5, #2]	@ movhi
	strh	ip, [r5]	@ movhi
	bne	.L71
	mov	lr, pc
	bx	r6
	add	r1, r4, r1, lsl #5
	mov	r1, r1, asl #1
	strh	r1, [r5, #4]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L67:
	mov	lr, pc
	bx	r5
	mov	r1, r1, asl #6
	strh	r1, [r4, #4]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L71:
	mov	lr, pc
	bx	r6
	add	r1, r4, r1, lsl #4
	mov	r1, r1, asl #2
	strh	r1, [r5, #4]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r3, .L80
	add	r0, r3, #144
.L75:
	str	r1, [r3]
	str	r2, [r3, #12]
	str	ip, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #44]
	stmib	r3, {r1, lr}
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L75
	mov	r2, #0
	mov	r0, #8
	mov	r1, r2
	mov	lr, #1
	ldr	r3, .L80+4
.L76:
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
	bne	.L76
	ldr	r3, .L80+8
	ldr	lr, [sp], #4
	str	ip, [r3]
	bx	lr
.L81:
	.align	2
.L80:
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
	ldr	r3, .L85
.L83:
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
	bne	.L83
	ldr	r3, .L85+4
	str	r2, [r3]
	bx	lr
.L86:
	.align	2
.L85:
	.word	superBullets
	.word	scoreCol2
	.size	initSuperBullets, .-initSuperBullets
	.align	2
	.global	fireBullet
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L102
	ldr	ip, [r3, #24]
	cmp	ip, #0
	stmfd	sp!, {r4, r5, r6, lr}
	beq	.L88
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L96
	mov	r1, #1
	ldr	r0, [r3, #120]
	ldr	r2, .L102+4
	cmp	r0, #0
	str	r1, [r2]
	beq	.L101
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L101:
	mov	ip, #2
.L88:
	mov	r5, #1
	ldr	r0, .L102+8
	ldr	r4, [r0, #68]
	cmp	r4, #0
	movne	r4, r5
	add	ip, ip, ip, lsl #1
	add	ip, r3, ip, lsl #4
	ldr	lr, [r0, #20]
	ldr	r2, [r0, #8]
	ldr	r1, [ip, #4]
	add	lr, lr, lr, lsr #31
	ldr	r0, [r0, #4]
	add	r3, r2, lr, asr r5
	add	r1, r1, r1, lsr #31
	sub	lr, r3, r1, asr r5
	ldr	r2, .L102+12
	mov	r3, #0
	str	r0, [ip, #8]
	str	lr, [ip, #12]
	ldr	r0, .L102+16
	str	r4, [ip, #44]
	ldr	r1, .L102+20
	ldr	r6, .L102+24
	str	r5, [ip, #24]
	mov	lr, pc
	bx	r6
	mov	r4, #512
	mov	lr, #40
	ldr	r3, .L102+28
	ldr	r2, .L102
	add	r0, r3, #24
.L93:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	ldrne	ip, [r2, #8]
	ldrne	r1, [r2, #12]
	strneh	lr, [r3, #220]	@ movhi
	strneh	ip, [r3, #216]	@ movhi
	strneh	r1, [r3, #218]	@ movhi
	streqh	r4, [r3, #216]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #48
	bne	.L93
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L96:
	mov	ip, #1
	b	.L88
.L103:
	.align	2
.L102:
	.word	bullets
	.word	tired
	.word	player
	.word	11025
	.word	poof
	.word	5103
	.word	playSoundB
	.word	shadowOAM
	.size	fireBullet, .-fireBullet
	.align	2
	.global	fireEnemyBullet
	.type	fireEnemyBullet, %function
fireEnemyBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r6, .L115
	mov	r4, #0
	mov	r8, r6
	mov	r5, r6
	ldr	r7, .L115+4
.L109:
	mov	lr, pc
	bx	r7
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L114
	add	r4, r4, #1
	cmp	r4, #5
	add	r5, r5, #48
	bne	.L109
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L114:
	mov	lr, #1
	mov	ip, #512
	mov	r1, #41
	ldr	r2, .L115+8
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
	ldr	r2, .L115+12
	str	r3, [r4, #8]
	ldr	r3, .L115+16
	str	lr, [r4, #24]
	str	lr, [r2]
	str	r0, [r4, #12]
	add	r0, r3, #40
.L108:
	ldr	r2, [r6, #24]
	cmp	r2, #0
	ldrne	lr, [r6, #8]
	ldrne	r2, [r6, #12]
	strneh	r1, [r3, #2]	@ movhi
	strneh	lr, [r3, #-2]	@ movhi
	strneh	r2, [r3]	@ movhi
	streqh	ip, [r3, #-2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r6, r6, #48
	bne	.L108
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L116:
	.align	2
.L115:
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
	stmfd	sp!, {r4, lr}
	mov	r4, #512
	mov	lr, #40
	ldr	r3, .L125
	ldr	r2, .L125+4
	add	r0, r3, #24
.L122:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	ldrne	ip, [r2, #8]
	ldrne	r1, [r2, #12]
	strneh	lr, [r3, #220]	@ movhi
	strneh	ip, [r3, #216]	@ movhi
	strneh	r1, [r3, #218]	@ movhi
	streqh	r4, [r3, #216]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #48
	bne	.L122
	ldmfd	sp!, {r4, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	shadowOAM
	.word	bullets
	.size	drawBullet, .-drawBullet
	.align	2
	.global	drawEnemyBullet
	.type	drawEnemyBullet, %function
drawEnemyBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #512
	mov	lr, #41
	ldr	r3, .L133
	ldr	r2, .L133+4
	add	r0, r3, #40
.L130:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	ldrne	ip, [r2, #8]
	ldrne	r1, [r2, #12]
	strneh	lr, [r3, #2]	@ movhi
	strneh	ip, [r3, #-2]	@ movhi
	strneh	r1, [r3]	@ movhi
	streqh	r4, [r3, #-2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #48
	bne	.L130
	ldmfd	sp!, {r4, lr}
	bx	lr
.L134:
	.align	2
.L133:
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
	ldr	r3, .L139
	add	ip, r3, #200
.L136:
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
	bne	.L136
	ldmfd	sp!, {r4, lr}
	bx	lr
.L140:
	.align	2
.L139:
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
	.global	drawEnemy
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r6, #512
	ldr	r3, .L155
	ldr	r2, [r3, #72]
	ldr	lr, [r3, #32]
	mov	r2, r2, asl #21
	add	r2, r2, #4784128
	ldr	ip, [r3, #24]
	mov	lr, lr, asl #21
	mov	r4, r2, lsr #16
	ldr	r2, .L155+4
	add	lr, lr, #4849664
	cmp	ip, #0
	mov	lr, lr, lsr #16
	mov	r0, #1
	mov	r1, #0
	streqh	r6, [r2, #8]	@ movhi
	beq	.L149
.L154:
	ldmia	r3, {r5, ip}
	cmp	r1, #0
	strh	r5, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	streqh	lr, [r2, #12]	@ movhi
	beq	.L150
	cmp	r1, #1
	streqh	r4, [r2, #12]	@ movhi
	beq	.L150
	ldr	ip, [r3, #32]
	mov	ip, ip, asl #5
	add	ip, ip, #72
	strh	ip, [r2, #12]	@ movhi
.L149:
	cmp	r0, #5
	beq	.L153
.L150:
	add	r3, r3, #40
	ldr	ip, [r3, #24]
	add	r2, r2, #8
	cmp	ip, #0
	add	r1, r1, #1
	add	r0, r0, #1
	streqh	r6, [r2, #8]	@ movhi
	bne	.L154
	cmp	r0, #5
	bne	.L150
.L153:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L156:
	.align	2
.L155:
	.word	enemys
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	fireEnemy
	.type	fireEnemy, %function
fireEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L161
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L161+4
	smull	r1, r2, r3, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r0
	add	r2, r3, r3, lsl #2
	ldr	r0, .L161+8
	mov	r2, r2, asl #3
	add	r1, r0, r2
	ldr	ip, [r1, #24]
	cmp	ip, #0
	beq	.L160
	ldmfd	sp!, {r4, lr}
	bx	lr
.L160:
	mov	ip, #1
	rsb	lr, r3, r3, lsl #29
	rsb	r3, r3, lr, lsl #2
	mov	r3, r3, asl ip
	add	r3, r3, #150
	str	r3, [r0, r2]
	str	ip, [r1, #4]
	str	ip, [r1, #24]
	ldmfd	sp!, {r4, lr}
	b	drawEnemy
.L162:
	.align	2
.L161:
	.word	rand
	.word	1717986919
	.word	enemys
	.size	fireEnemy, .-fireEnemy
	.align	2
	.global	drawGame
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bl	drawPlayer
	mov	r4, #512
	bl	drawEnemy
	mov	lr, #40
	ldr	r3, .L179
	ldr	r2, .L179+4
	add	r0, r3, #24
.L166:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	ldrne	ip, [r2, #8]
	ldrne	r1, [r2, #12]
	strneh	lr, [r3, #220]	@ movhi
	strneh	ip, [r3, #216]	@ movhi
	strneh	r1, [r3, #218]	@ movhi
	streqh	r4, [r3, #216]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #48
	bne	.L166
	mov	r4, #512
	mov	lr, #41
	ldr	r3, .L179+8
	ldr	r2, .L179+12
	add	r0, r3, #40
.L169:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	ldrne	ip, [r2, #8]
	ldrne	r1, [r2, #12]
	strneh	lr, [r3, #2]	@ movhi
	strneh	ip, [r3, #-2]	@ movhi
	strneh	r1, [r3]	@ movhi
	streqh	r4, [r3, #-2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #48
	bne	.L169
	ldr	r1, .L179+16
	mov	r5, #73
	mov	r2, r1
	mov	r0, #0
	mov	r3, r1
	mov	r7, #78
	mov	r6, #232
	mov	r4, #512
	mov	lr, #8
	ldr	ip, .L179+20
	ldr	ip, [ip]
	add	ip, ip, #224
	strh	r5, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	r5, .L179+24
	ldr	ip, .L179+28
	strh	r0, [r2, #8]!	@ movhi
	ldr	r5, [r5]
	ldr	ip, [ip]
	strh	r0, [r3, #16]!	@ movhi
	add	r5, r5, #224
	add	ip, ip, #224
	strh	r7, [r2, #2]	@ movhi
	ldr	r2, .L179+32
	strh	r5, [r1, #12]	@ movhi
	strh	ip, [r1, #20]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r6, [r3, #2]	@ movhi
	add	r3, r1, #26
	add	r1, r1, #66
.L172:
	ldr	r0, [r2, #56]
	cmp	r0, #0
	ldrne	ip, [r2, #4]
	ldrne	r0, [r2, #8]
	strneh	lr, [r3, #2]	@ movhi
	strneh	ip, [r3, #-2]	@ movhi
	strneh	r0, [r3]	@ movhi
	streqh	r4, [r3, #-2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	add	r2, r2, #72
	bne	.L172
	ldr	r3, .L179+36
	ldr	r2, [r3, #56]
	cmp	r2, #0
	moveq	r2, #512
	movne	r0, #73
	ldrne	r2, .L179+40
	ldmneib	r3, {r1, r3}
	ldreq	r3, .L179+40
	strneh	r3, [r2, #2]	@ movhi
	streqh	r2, [r3]	@ movhi
	strneh	r0, [r2, #4]	@ movhi
	strneh	r1, [r2]	@ movhi
	ldr	r3, .L179+44
	mov	lr, pc
	bx	r3
	ldr	r2, .L179+48
	ldr	r3, [r2, #4]
	add	r3, r3, #1
	str	r3, [r2, #4]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L180:
	.align	2
.L179:
	.word	shadowOAM
	.word	bullets
	.word	shadowOAM+258
	.word	enemyBullets
	.word	shadowOAM+304
	.word	scoreCol1
	.word	scoreCol2
	.word	lives
	.word	treasures
	.word	specials
	.word	shadowOAM+368
	.word	waitForVBlank
	.word	.LANCHOR0
	.size	drawGame, .-drawGame
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
	ldr	lr, .L185
	ldr	r3, .L185+4
	ldr	lr, [lr]
.L182:
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
	add	r3, r3, #72
	bne	.L182
	ldr	lr, [sp], #4
	bx	lr
.L186:
	.align	2
.L185:
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
	.global	fireTreasure
	.type	fireTreasure, %function
fireTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L200
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, ip
	mov	lr, ip
	mov	r3, #0
.L194:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L199
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #72
	bne	.L194
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L199:
	mov	r6, #1
	mov	r5, #512
	mov	r4, #8
	ldr	r2, .L200+4
	add	r0, r0, r0, lsl #1
	add	r0, r2, r0, lsl #4
	add	r3, r3, r3, lsl #3
	add	r3, lr, r3, lsl #3
	ldr	lr, [r0, #8]
	ldr	r0, [r0, #12]
	ldr	r2, .L200+8
	str	lr, [r3, #4]
	str	r0, [r3, #8]
	str	r6, [r3, #56]
	str	r1, [r3, #64]
	add	r1, r2, #40
.L193:
	ldr	r3, [ip, #56]
	cmp	r3, #0
	ldmneib	ip, {r0, r3}
	strneh	r4, [r2, #2]	@ movhi
	strneh	r0, [r2, #-2]	@ movhi
	strneh	r3, [r2]	@ movhi
	streqh	r5, [r2, #-2]	@ movhi
	add	r2, r2, #8
	cmp	r2, r1
	add	ip, ip, #72
	bne	.L193
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L201:
	.align	2
.L200:
	.word	treasures
	.word	enemyBullets
	.word	shadowOAM+330
	.size	fireTreasure, .-fireTreasure
	.align	2
	.global	drawTreasure
	.type	drawTreasure, %function
drawTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #512
	mov	lr, #8
	ldr	r3, .L208
	ldr	r2, .L208+4
	add	r0, r3, #40
.L205:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	ldrne	ip, [r2, #4]
	ldrne	r1, [r2, #8]
	strneh	lr, [r3, #2]	@ movhi
	strneh	ip, [r3, #-2]	@ movhi
	strneh	r1, [r3]	@ movhi
	streqh	r4, [r3, #-2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #72
	bne	.L205
	ldmfd	sp!, {r4, lr}
	bx	lr
.L209:
	.align	2
.L208:
	.word	shadowOAM+330
	.word	treasures
	.size	drawTreasure, .-drawTreasure
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
	ldr	ip, .L212
	str	lr, [sp, #-4]!
	ldr	r3, .L212+4
	ldr	lr, [ip]
	ldr	ip, .L212+8
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
	str	r2, [ip]
	str	r0, [r3, #12]
	str	r0, [r3, #44]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L213:
	.align	2
.L212:
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
	ldr	r3, .L218
	ldr	r0, .L218+4
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
	ldr	r3, .L218+8
	add	lr, r3, #200
.L215:
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
	bne	.L215
	bl	initTreasure
	bl	initSpecial
	ldr	r3, .L218+12
	mov	lr, pc
	bx	r3
	mov	r3, #5
	mov	lr, #3
	ldr	r2, .L218+16
	ldr	r5, .L218+20
	str	r3, [r2]
	str	r3, [r5]
	ldr	ip, .L218+24
	ldr	r0, .L218+28
	ldr	r1, .L218+32
	ldr	r2, .L218+36
	ldr	r3, .L218+40
	str	lr, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L219:
	.align	2
.L218:
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
	.size	initGame, .-initGame
	.align	2
	.global	updatePlayer
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L271
	ldr	r3, [r5, #28]
	ldr	r2, .L271+4
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
	ldr	r3, .L271+8
	ldr	r2, [r3]
	cmp	r2, #5
	sub	sp, sp, #16
	beq	.L266
.L222:
	ldr	r4, .L271+12
	ldrh	r2, [r4]
	tst	r2, #1
	beq	.L223
	ldr	r3, .L271+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L267
.L223:
	ldr	r3, .L271+20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L224
	ldr	r3, [r5, #8]
	ldr	r1, .L271
	cmp	r3, #0
	ldrgt	r0, [r1, #16]
	rsbgt	r3, r0, r3
	strgt	r3, [r1, #8]
.L224:
	ldr	r3, .L271+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L225
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #20]
	add	r3, r1, r3
	cmp	r3, #239
	ldr	r3, .L271
	ldrle	r0, [r3, #16]
	addle	r1, r0, r1
	strle	r1, [r3, #8]
.L225:
	tst	r2, #64
	beq	.L228
	ldr	r3, .L271+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L268
.L228:
	ldmia	r5, {r0, r3}
.L227:
	cmp	r0, r3
	ble	.L229
	ldr	ip, .L271+24
	ldr	r1, .L271+28
	ldr	ip, [ip, #4]
	smull	lr, r1, ip, r1
	sub	r1, r1, ip, asr #31
	add	r1, r1, r1, lsl #1
	cmp	ip, r1
	bne	.L230
	ldr	r1, [r5, #12]
	sub	r1, r1, #1
	rsb	r3, r1, r3
	tst	r2, #2
	str	r3, [r5, #4]
	str	r1, [r5, #12]
	beq	.L231
.L241:
	ldr	r3, .L271+16
	ldrh	r3, [r3]
	tst	r3, #2
	subeq	r0, r0, #10
	streq	r0, [r5]
.L231:
	ldr	r3, [r5, #4]
	cmp	r3, r0
	bge	.L242
.L232:
	tst	r2, #128
	beq	.L233
	ldr	r2, .L271+16
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L269
.L233:
	cmp	r3, #1
	movle	r2, #0
	mov	r9, #0
	ldrle	r3, .L271+32
	ldr	r4, .L271+36
	strle	r2, [r3]
	ldr	r7, .L271+40
	ldr	r8, .L271+32
	ldr	r10, .L271+24
	add	r6, r4, #240
.L239:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L270
.L237:
	add	r4, r4, #48
	cmp	r6, r4
	bne	.L239
	ldr	r3, .L271+44
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L220
	ldr	r2, .L271+48
	ldr	r1, [r2, #120]
	cmp	r1, #0
	beq	.L220
	ldr	r2, [r2, #24]
	cmp	r2, #0
	streq	r2, [r3]
.L220:
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L229:
	tst	r2, #2
	bne	.L241
.L242:
	mov	r3, r0
	str	r0, [r5, #4]
	b	.L232
.L270:
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
	b	.L237
.L269:
	ldr	r2, .L271+52
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L233
	ldr	r2, [r5, #68]
	cmp	r2, #0
	moveq	r1, #1
	ldr	r2, .L271
	streq	r1, [r2, #68]
	mov	r1, #5
	ldr	r2, .L271+56
	str	r1, [r2]
	b	.L233
.L230:
	tst	r2, #2
	beq	.L232
	b	.L241
.L268:
	ldmia	r5, {r0, r3}
	cmp	r3, r0
	moveq	ip, #7
	ldr	r1, .L271
	subeq	r3, r3, #7
	streq	r3, [r1, #4]
	streq	ip, [r1, #12]
	b	.L227
.L267:
	bl	fireBullet
	ldrh	r2, [r4]
	b	.L223
.L266:
	mov	r2, #0
	ldr	r0, .L271+52
	ldr	r1, .L271+60
	str	r2, [r5, #68]
	str	r2, [r3]
	str	r2, [r0]
	str	r2, [r1]
	bl	initSpecial
	b	.L222
.L272:
	.align	2
.L271:
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
	.global	fireSpecial
	.type	fireSpecial, %function
fireSpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L279
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bxne	lr
	stmfd	sp!, {r4, lr}
	mov	r1, #1
	mov	lr, #73
	ldr	r3, .L279+4
	add	r0, r0, r0, lsl #1
	add	r0, r3, r0, lsl #4
	ldr	ip, [r0, #8]
	ldr	r2, .L279+8
	ldr	r3, .L279+12
	ldr	r0, [r0, #12]
	ldr	r4, .L279+16
	strh	lr, [r3, #4]	@ movhi
	str	r1, [r4]
	str	ip, [r2, #4]
	str	r0, [r2, #8]
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	str	r1, [r2, #56]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L280:
	.align	2
.L279:
	.word	treasures
	.word	enemyBullets
	.word	specials
	.word	shadowOAM+368
	.word	specialActive
	.size	fireSpecial, .-fireSpecial
	.align	2
	.type	updateBullet.part.8, %function
updateBullet.part.8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r0, #44]
	cmp	r3, #0
	sub	sp, sp, #20
	mov	r6, r0
	beq	.L318
	ldr	r2, [r0, #8]
	ldr	r3, [r0]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L284
	ldr	r1, .L322
	ldr	r3, [r1]
	cmp	r2, r3
	bgt	.L284
	ldr	r0, [r0, #12]
	ldr	r3, [r6, #20]
	add	r3, r0, r3
	sub	r3, r3, #1
	cmp	r3, #237
	bhi	.L284
	mvn	r4, #1
	mov	r5, #2
	mov	r7, #0
	ldr	r3, .L322+4
	ldr	ip, [r1, #68]
	add	lr, r3, #240
.L293:
	cmp	ip, #0
	streq	ip, [r6, #24]
	ldr	r1, [r3, #24]
	cmp	r1, #0
	beq	.L288
	str	r4, [r6, #16]
	ldr	r1, [r3, #8]
	cmp	r2, r1
	bgt	.L289
	streq	r7, [r6, #16]
	strne	r5, [r6, #16]
.L289:
	ldr	r1, [r3, #12]
	cmp	r0, r1
	strgt	r4, [r6, #20]
	bgt	.L288
	streq	r7, [r6, #20]
	strne	r5, [r6, #20]
.L288:
	add	r3, r3, #48
	cmp	r3, lr
	bne	.L293
	ldr	r1, [r6, #20]
	ldr	r3, [r6, #16]
	add	r0, r1, r0
	add	r2, r3, r2
	str	r0, [r6, #12]
	str	r2, [r6, #8]
	b	.L285
.L318:
	ldr	r1, [r0, #8]
	ldr	r2, [r0]
	add	r2, r1, r2
	cmp	r2, #0
	ldr	r3, .L322
	ble	.L284
	ldr	r3, [r3]
	cmp	r1, r3
	ble	.L319
.L284:
	mov	r3, #0
	str	r3, [r6, #24]
.L285:
	mov	r5, #0
	ldr	r4, .L322+4
	ldr	r7, .L322+8
	ldr	fp, .L322+12
	ldr	r10, .L322
	ldr	r9, .L322+16
	ldr	r8, .L322+20
.L286:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L320
.L295:
	add	r5, r5, #1
	cmp	r5, #5
	add	r4, r4, #48
	bne	.L286
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L320:
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
	beq	.L295
	mov	r3, #0
	ldr	r2, [r10, #68]
	cmp	r2, r3
	str	r3, [r6, #24]
	str	r3, [fp]
	str	r3, [r4, #24]
	beq	.L297
	ldr	r3, [r8]
	ldr	r2, .L322+24
	add	r3, r3, #1
	str	r3, [r8]
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
.L297:
	mov	lr, pc
	bx	r9
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r0, r3, r0, lsr #31
	cmp	r0, #1
	mov	r0, r5
	beq	.L321
.L298:
	bl	fireTreasure
	b	.L295
.L321:
	ldr	r3, .L322+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L298
	bl	fireSpecial
	b	.L295
.L319:
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #20]
	add	r3, r3, r2
	sub	r3, r3, #1
	cmp	r3, #237
	bhi	.L284
	mvn	r3, #1
	add	r1, r1, r3
	str	r1, [r0, #8]
	str	r3, [r0, #16]
	b	.L285
.L323:
	.align	2
.L322:
	.word	player
	.word	enemyBullets
	.word	collision
	.word	.LANCHOR0
	.word	rand
	.word	superFired
	.word	scoreCol2
	.word	specialActive
	.size	updateBullet.part.8, .-updateBullet.part.8
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
	b	updateBullet.part.8
	.size	updateBullet, .-updateBullet
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L362
	bl	updatePlayer
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #100
	str	r3, [r4]
	beq	.L355
.L327:
	ldr	r4, .L362+4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L362+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, .L362+12
	add	r5, r4, #144
.L330:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L356
.L329:
	add	r4, r4, #48
	cmp	r5, r4
	bne	.L330
	ldr	r4, .L362+16
	add	r5, r4, #200
.L332:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L357
.L331:
	add	r4, r4, #40
	cmp	r4, r5
	bne	.L332
	ldr	r4, .L362+20
	add	r5, r4, #240
.L334:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L358
.L333:
	add	r4, r4, #48
	cmp	r5, r4
	bne	.L334
	ldr	r4, .L362+24
	add	r5, r4, #360
.L336:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L359
.L335:
	add	r4, r4, #72
	cmp	r5, r4
	bne	.L336
	ldr	r0, .L362+28
	ldr	r3, [r0, #56]
	cmp	r3, #0
	bne	.L360
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L359:
	mov	r0, r4
	bl	updateTreasure.part.4
	b	.L335
.L358:
	mov	r0, r4
	bl	updateEnemyBullet.part.0
	b	.L333
.L357:
	mov	r0, r4
	bl	updateEnemy.part.3
	b	.L331
.L356:
	mov	r0, r4
	bl	updateBullet.part.8
	b	.L329
.L360:
	ldmfd	sp!, {r4, r5, r6, lr}
	b	updateSpecial.part.6
.L355:
	bl	fireEnemy
	ldr	r3, .L362+32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L361
.L328:
	mov	r3, #0
	str	r3, [r4]
	b	.L327
.L361:
	bl	fireEnemyBullet
	b	.L328
.L363:
	.align	2
.L362:
	.word	enemyBulletTimer
	.word	DMANow
	.word	shadowOAM
	.word	bullets
	.word	enemys
	.word	enemyBullets
	.word	treasures
	.word	specials
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
	.align	2
	.global	drawSpecial
	.type	drawSpecial, %function
drawSpecial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L367
	ldr	r2, [r3, #56]
	cmp	r2, #0
	moveq	r2, #512
	movne	r0, #73
	ldrne	r2, .L367+4
	ldmneib	r3, {r1, r3}
	ldreq	r3, .L367+4
	strneh	r0, [r2, #4]	@ movhi
	streqh	r2, [r3]	@ movhi
	strneh	r1, [r2]	@ movhi
	strneh	r3, [r2, #2]	@ movhi
	bx	lr
.L368:
	.align	2
.L367:
	.word	specials
	.word	shadowOAM+368
	.size	drawSpecial, .-drawSpecial
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	shadowOAM,1024,4
	.global	accel
	.global	vblankCount
	.global	alreadyDrop
	.comm	tired,4,4
	.comm	specialActive,4,4
	.comm	specialCollected,4,4
	.comm	superFired,4,4
	.comm	scoreCol2,4,4
	.comm	scoreCol1,4,4
	.comm	specials,72,4
	.comm	special,72,4
	.comm	treasures,360,4
	.comm	treasure,72,4
	.comm	player,72,4
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
	.ident	"GCC: (devkitARM release 45) 5.3.0"
