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
	@ link register save eliminated.
	ldr	r2, [r0, #8]
	ldr	r3, [r0]
	add	r3, r2, r3
	cmp	r3, #161
	bgt	.L2
	ldr	r3, [r0, #12]
	ldr	r1, [r0, #20]
	add	r3, r3, r1
	sub	r3, r3, #1
	cmp	r3, #237
	bls	.L5
.L2:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L5:
	ldr	r3, [r0, #16]
	add	r2, r3, r2
	str	r2, [r0, #8]
	bx	lr
	.size	updateEnemyBullet.part.0, .-updateEnemyBullet.part.0
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
	ldr	r2, .L23
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	mov	r2, r3, asr #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, asl #2
	sub	sp, sp, #20
	str	r3, [r5, #28]
	bne	.L7
	ldr	r0, [r5, #32]
	ldr	r3, .L23+4
	add	r0, r0, #1
	ldr	r1, [r5, #36]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #32]
.L7:
	ldr	r1, [r5, #4]
	cmp	r1, #239
	movgt	r3, #0
	ldr	r2, .L23+8
	add	r0, r2, #20
	ldmia	r0, {r0, r4}
	strgt	r3, [r5, #24]
	ldmib	r2, {ip, lr}
	ldr	r3, [r5, #20]
	ldr	r2, [r5, #16]
	str	r0, [sp, #12]
	ldr	r7, .L23+12
	ldr	r0, [r5]
	str	r4, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	mov	r10, #0
	ldrne	r3, .L23+16
	strne	r2, [r3]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #12]
	ldr	r4, .L23+20
	add	r3, r3, r2
	str	r3, [r5, #4]
	ldr	r9, .L23+24
	ldr	r8, .L23+28
	ldr	fp, .L23
	add	r6, r4, #220
.L13:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L22
.L11:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L13
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L22:
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
	beq	.L11
	ldr	r2, [r9]
	sub	r2, r2, #1
	smull	r3, r1, fp, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	ldr	r1, [r8]
	sub	r3, r2, r3, asl #1
	sub	r1, r1, #1
	cmp	r3, #9
	str	r10, [r4, #24]
	str	r2, [r9]
	str	r10, [r5, #24]
	str	r1, [r8]
	bne	.L11
	ldr	r2, .L23+32
	ldr	r2, [r2]
	str	r3, [r8]
	ldr	r3, .L23+32
	sub	r2, r2, #1
	str	r2, [r3]
	b	.L11
.L24:
	.align	2
.L23:
	.word	1717986919
	.word	__aeabi_idivmod
	.word	player
	.word	collision
	.word	youLose
	.word	bullets
	.word	enemysRemaining
	.word	scoreCol2
	.word	scoreCol1
	.size	updateEnemy.part.3, .-updateEnemy.part.3
	.align	2
	.type	updateTreasure.part.4, %function
updateTreasure.part.4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L34
	ldr	ip, [r4, #4]
	ldr	r2, [r0]
	cmp	ip, r2
	sub	sp, sp, #20
	blt	.L26
.L28:
	mov	ip, r2
	str	r2, [r4, #4]
.L27:
	add	r5, r4, #20
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldmia	r5, {r5, lr}
	ldmib	r0, {r0, r1}
	str	ip, [sp]
	ldr	ip, [r4, #8]
	str	r5, [sp, #12]
	stmib	sp, {ip, lr}
	ldr	r5, .L34+4
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
.L26:
	ldr	r1, .L34+8
	ldr	r3, .L34+12
	ldr	r1, [r1]
	smull	lr, r3, r1, r3
	sub	r3, r3, r1, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r1, r3
	bne	.L27
	ldr	r3, [r4, #12]
	sub	r3, r3, #1
	rsb	ip, r3, ip
	cmp	r2, ip
	str	ip, [r4, #4]
	str	r3, [r4, #12]
	bgt	.L27
	b	.L28
.L35:
	.align	2
.L34:
	.word	player
	.word	collision
	.word	.LANCHOR0
	.word	1431655766
	.size	updateTreasure.part.4, .-updateTreasure.part.4
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
	ldr	r3, .L38
	ldr	r2, .L38+4
	ldr	r1, [r3]
	ldr	r3, .L38+8
	ldr	r2, [r2]
	add	r5, r3, #308
	add	r1, r1, #192
	add	r4, r3, #316
	strh	r1, [r5]	@ movhi
	add	r2, r2, #192
	add	r1, r3, #304
	add	r3, r3, #312
	strh	r2, [r4]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L39:
	.align	2
.L38:
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
	ldr	r2, .L41
	ldr	r3, .L41+4
	ldr	r2, [r2]
	add	ip, r3, #324
	add	r2, r2, #192
	add	r3, r3, #320
	strh	r2, [ip]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	bx	lr
.L42:
	.align	2
.L41:
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
	str	lr, [sp, #-4]!
	mov	r1, #140
	mov	lr, #20
	mov	r2, #16
	mov	ip, #1
	mov	r0, #112
	ldr	r3, .L45
	str	lr, [r3, #12]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	ip, [r3, #16]
	str	r0, [r3, #8]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #0
	ldr	r3, .L48
	ldmib	r3, {r0, r2}
	ldr	r3, .L48+4
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L49:
	.align	2
.L48:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullets
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L56
	mov	r1, #8
	mov	r3, r4
	mvn	lr, #7
	mov	r2, #0
	mvn	ip, #1
	add	r0, r4, #220
.L51:
	str	r1, [r3]
	str	r2, [r3, #12]
	str	ip, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	stmib	r3, {r1, lr}
	add	r3, r3, #44
	cmp	r3, r0
	bne	.L51
	mov	r2, #0
	ldr	r5, .L56+4
	mov	r1, r2
	mov	ip, r2
	mov	r3, r5
	mov	lr, #8
	mov	r6, #1
.L52:
	ldr	r0, [r4, r2]
	str	lr, [r5, r2]
	str	r1, [r3, #40]
	add	r1, r1, #1
	rsb	r0, r0, #0
	cmp	r1, #5
	str	lr, [r3, #4]
	str	ip, [r3, #12]
	str	r6, [r3, #16]
	str	ip, [r3, #20]
	str	ip, [r3, #24]
	str	r0, [r3, #8]
	add	r2, r2, #44
	add	r3, r3, #44
	bne	.L52
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	bullets
	.word	enemyBullets
	.size	initBullets, .-initBullets
	.align	2
	.global	fireBullet
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L71
	mov	r3, #0
	mov	ip, r0
	mov	r2, r0
.L63:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	beq	.L70
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #44
	bne	.L63
	bx	lr
.L70:
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, #1
	mov	r4, #512
	mov	lr, #34
	ldr	r2, .L71+4
	add	r1, r3, r3, lsl #2
	add	r3, r3, r1, lsl #1
	add	r3, ip, r3, lsl #2
	ldr	r1, [r2, #20]
	ldr	r6, [r2, #4]
	ldr	ip, [r3, #4]
	ldr	r2, [r2, #8]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr r5
	add	ip, ip, ip, lsr #31
	sub	r1, r2, ip, asr r5
	ldr	r2, .L71+8
	str	r6, [r3, #8]
	str	r5, [r3, #24]
	str	r1, [r3, #12]
	add	r1, r2, #40
.L62:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	ldrne	ip, [r0, #8]
	ldrne	r3, [r0, #12]
	strneh	lr, [r2, #220]	@ movhi
	strneh	ip, [r2, #216]	@ movhi
	strneh	r3, [r2, #218]	@ movhi
	streqh	r4, [r2, #216]	@ movhi
	add	r2, r2, #8
	cmp	r2, r1
	add	r0, r0, #44
	bne	.L62
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	bullets
	.word	player
	.word	shadowOAM
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updatePlayer
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L102
	ldrh	r2, [r4]
	tst	r2, #1
	sub	sp, sp, #20
	beq	.L74
	ldr	r3, .L102+4
	ldrh	r3, [r3]
	ands	r3, r3, #1
	beq	.L98
.L74:
	ldr	r3, .L102+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldr	r5, .L102+12
	bne	.L75
	ldr	r3, [r5, #8]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r5, #8]
.L75:
	ldr	r3, .L102+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L76
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #20]
	add	r3, r1, r3
	cmp	r3, #239
	ldr	r3, .L102+12
	addle	r1, r1, #1
	strle	r1, [r3, #8]
.L76:
	tst	r2, #64
	beq	.L79
	ldr	r3, .L102+4
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L99
.L79:
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
.L78:
	cmp	r1, r0
	ble	.L80
	ldr	ip, .L102+16
	ldr	r3, .L102+20
	ldr	ip, [ip]
	smull	lr, r3, ip, r3
	sub	r3, r3, ip, asr #31
	add	r3, r3, r3, lsl #1
	cmp	ip, r3
	ldreq	r3, [r5, #12]
	subeq	r3, r3, #1
	rsbeq	r0, r3, r0
	streq	r0, [r5, #4]
	streq	r3, [r5, #12]
.L80:
	tst	r2, #2
	beq	.L82
	ldr	r3, .L102+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L100
.L82:
	mov	r9, #0
	ldr	r4, .L102+24
	ldr	r7, .L102+28
	ldr	r8, .L102+32
	add	r6, r4, #220
.L87:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L101
.L85:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L87
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L101:
	ldmia	r4, {ip, lr}
	ldr	r3, [r5, #20]
	ldr	r2, [r5, #24]
	ldmib	r5, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r4, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	subne	r3, r3, #1
	strne	r9, [r4, #24]
	strne	r3, [r8]
	b	.L85
.L100:
	ldr	r3, [r5, #4]
	sub	r1, r1, #10
	cmp	r1, r3
	ldr	r3, .L102+12
	str	r1, [r5]
	strle	r1, [r3, #4]
	b	.L82
.L99:
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	cmp	r0, r1
	moveq	ip, #7
	ldr	r3, .L102+12
	subeq	r0, r0, #7
	streq	r0, [r3, #4]
	streq	ip, [r3, #12]
	b	.L78
.L98:
	ldr	r2, .L102+36
	ldr	r1, .L102+40
	ldr	r0, .L102+44
	ldr	r5, .L102+48
	mov	lr, pc
	bx	r5
	bl	fireBullet
	ldrh	r2, [r4]
	b	.L74
.L103:
	.align	2
.L102:
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	1431655766
	.word	enemyBullets
	.word	collision
	.word	lives
	.word	11025
	.word	5103
	.word	poof
	.word	playSoundB
	.size	updatePlayer, .-updatePlayer
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
	add	r5, r5, #44
	bne	.L109
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L114:
	mov	lr, #1
	mov	ip, #512
	mov	r1, #35
	ldr	r2, .L115+8
	smull	r5, r2, r0, r2
	mov	r5, r0, asr #31
	add	r2, r2, r0
	rsb	r2, r5, r2, asr #7
	add	r5, r4, r4, lsl #2
	add	r4, r4, r5, lsl #1
	add	r4, r8, r4, lsl #2
	rsb	r2, r2, r2, lsl #4
	sub	r0, r0, r2, asl #4
	ldr	r2, [r4, #4]
	rsb	r0, r2, r0
	ldr	r2, .L115+12
	str	r3, [r4, #8]
	str	lr, [r4, #24]
	str	r0, [r4, #12]
	add	r0, r2, #40
.L108:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	ldrne	lr, [r6, #8]
	ldrne	r3, [r6, #12]
	strneh	r1, [r2, #2]	@ movhi
	strneh	lr, [r2, #-2]	@ movhi
	strneh	r3, [r2]	@ movhi
	streqh	ip, [r2, #-2]	@ movhi
	add	r2, r2, #8
	cmp	r2, r0
	add	r6, r6, #44
	bne	.L108
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L116:
	.align	2
.L115:
	.word	enemyBullets
	.word	rand
	.word	-2004318071
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
	mov	lr, #34
	ldr	r3, .L125
	ldr	r2, .L125+4
	add	r0, r3, #40
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
	add	r2, r2, #44
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
	mov	lr, #35
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
	add	r2, r2, #44
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
	stmfd	sp!, {r4, r5, lr}
	mov	r2, #0
	mov	r5, #8
	mov	r4, #16
	mov	lr, #30
	mov	r1, #1
	mov	ip, #2
	ldr	r3, .L139
	add	r0, r3, #200
.L136:
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	ip, [r3, #36]
	add	r3, r3, #40
	cmp	r3, r0
	bne	.L136
	ldmfd	sp!, {r4, r5, lr}
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
	add	r2, r2, #4259840
	ldr	ip, [r3, #24]
	mov	lr, lr, asl #21
	mov	r4, r2, lsr #16
	ldr	r2, .L155+4
	add	lr, lr, #4325376
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
	add	ip, ip, #2
	mov	ip, ip, asl #5
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
	mov	r1, #0
	ldr	r2, .L177
	ldmib	r2, {r2, r3}
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L177+4
	orr	r3, r3, #16384
	strh	r3, [r4, #2]	@ movhi
	strh	r2, [r4]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	bl	drawEnemy
	mov	r3, r4
	mov	lr, #34
	mov	r4, #512
	ldr	r2, .L177+8
	add	r0, r3, #40
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
	add	r2, r2, #44
	bne	.L166
	mov	r4, #512
	mov	lr, #35
	ldr	r3, .L177+12
	ldr	r2, .L177+16
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
	add	r2, r2, #44
	bne	.L169
	ldr	r1, .L177+20
	mov	r5, #73
	mov	r2, r1
	mov	r0, #0
	mov	r3, r1
	mov	r7, #78
	mov	r6, #232
	mov	lr, #66
	mov	r4, #512
	ldr	ip, .L177+24
	ldr	ip, [ip]
	add	ip, ip, #192
	strh	r5, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	r5, .L177+28
	ldr	ip, .L177+32
	strh	r0, [r2, #8]!	@ movhi
	ldr	r5, [r5]
	ldr	ip, [ip]
	strh	r0, [r3, #16]!	@ movhi
	add	r5, r5, #192
	add	ip, ip, #192
	strh	r7, [r2, #2]	@ movhi
	ldr	r2, .L177+36
	strh	r5, [r1, #12]	@ movhi
	strh	ip, [r1, #20]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r6, [r3, #2]	@ movhi
	add	r3, r1, #26
	add	r1, r1, lr
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
	add	r2, r2, #68
	bne	.L172
	ldr	r3, .L177+40
	mov	lr, pc
	bx	r3
	ldr	r2, .L177+44
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L178:
	.align	2
.L177:
	.word	player
	.word	shadowOAM
	.word	bullets
	.word	shadowOAM+258
	.word	enemyBullets
	.word	shadowOAM+304
	.word	scoreCol1
	.word	scoreCol2
	.word	lives
	.word	treasures
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
	stmfd	sp!, {r4, lr}
	mov	r0, #1
	mov	r2, r1
	mov	r4, #8
	mov	lr, #16
	ldr	ip, .L183
	ldr	r3, .L183+4
	ldr	ip, [ip]
.L180:
	str	r1, [r3, #60]
	add	r1, r1, #1
	cmp	r1, #5
	str	ip, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r0, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	add	r3, r3, #68
	bne	.L180
	ldmfd	sp!, {r4, lr}
	bx	lr
.L184:
	.align	2
.L183:
	.word	player
	.word	treasures
	.size	initTreasure, .-initTreasure
	.align	2
	.global	initGame
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r2, #140
	mov	r0, #20
	mov	r1, #112
	mov	r5, #16
	mov	r4, #1
	ldr	r3, .L189
	mov	r7, #8
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	str	r5, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #16]
	mov	r6, #30
	bl	initBullets
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	mov	lr, #2
	ldr	r3, .L189+4
	add	ip, r3, #200
.L186:
	str	r7, [r3, #16]
	str	r0, [r3, #20]
	str	r6, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	lr, [r3, #36]
	add	r3, r3, #40
	cmp	r3, ip
	mov	r4, #0
	mov	r5, #2
	bne	.L186
	bl	initTreasure
	ldr	r3, .L189+8
	mov	lr, pc
	bx	r3
	mov	r3, #5
	mov	ip, #3
	ldr	r2, .L189+12
	ldr	lr, .L189+16
	str	r3, [r2]
	str	r3, [lr]
	ldr	r0, .L189+20
	ldr	r1, .L189+24
	ldr	r2, .L189+28
	ldr	r3, .L189+32
	str	r4, [r1]
	str	r4, [r2]
	str	r5, [r3]
	str	ip, [r0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L190:
	.align	2
.L189:
	.word	player
	.word	enemys
	.word	hideSprites
	.word	enemysRemaining
	.word	scoreCol2
	.word	lives
	.word	enemyBulletTimer
	.word	youLose
	.word	scoreCol1
	.size	initGame, .-initGame
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
	ldr	ip, .L204
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, ip
	mov	lr, ip
	mov	r3, #0
.L198:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L203
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #68
	bne	.L198
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L203:
	mov	r6, #1
	mov	r5, #512
	mov	r4, #66
	add	r2, r0, r0, lsl #2
	add	r0, r0, r2, lsl #1
	ldr	r2, .L204+4
	add	r3, r3, r3, lsl #4
	add	r0, r2, r0, lsl #2
	add	r3, lr, r3, lsl #2
	ldr	lr, [r0, #8]
	ldr	r0, [r0, #12]
	ldr	r2, .L204+8
	str	lr, [r3, #4]
	str	r0, [r3, #8]
	str	r6, [r3, #56]
	str	r1, [r3, #64]
	add	r1, r2, #40
.L197:
	ldr	r3, [ip, #56]
	cmp	r3, #0
	ldmneib	ip, {r0, r3}
	strneh	r4, [r2, #2]	@ movhi
	strneh	r0, [r2, #-2]	@ movhi
	strneh	r3, [r2]	@ movhi
	streqh	r5, [r2, #-2]	@ movhi
	add	r2, r2, #8
	cmp	r2, r1
	add	ip, ip, #68
	bne	.L197
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L205:
	.align	2
.L204:
	.word	treasures
	.word	enemyBullets
	.word	shadowOAM+330
	.size	fireTreasure, .-fireTreasure
	.align	2
	.type	updateBullet.part.6, %function
updateBullet.part.6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r2, [r0, #8]
	ldr	r3, [r0]
	add	r3, r2, r3
	cmp	r3, #0
	sub	sp, sp, #16
	mov	r6, r0
	ble	.L207
	ldr	r3, [r0, #12]
	ldr	r1, [r0, #20]
	add	r3, r3, r1
	sub	r3, r3, #1
	cmp	r3, #237
	bls	.L218
.L207:
	mov	r3, #0
	str	r3, [r6, #24]
.L209:
	mov	r5, #0
	mov	r8, r5
	ldr	r4, .L220
	ldr	r7, .L220+4
.L208:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L219
.L211:
	add	r5, r5, #1
	cmp	r5, #5
	add	r4, r4, #44
	bne	.L208
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L219:
	ldmia	r4, {ip, lr}
	add	r0, r6, #8
	ldmia	r6, {r2, r3}
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #12]
	ldr	ip, [r4, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L211
	str	r8, [r6, #24]
	mov	r0, r5
	str	r8, [r4, #24]
	bl	fireTreasure
	b	.L211
.L218:
	ldr	r3, [r0, #16]
	add	r2, r3, r2
	str	r2, [r0, #8]
	b	.L209
.L221:
	.align	2
.L220:
	.word	enemyBullets
	.word	collision
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
	bxeq	lr
	b	updateBullet.part.6
	.size	updateBullet, .-updateBullet
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L256
	bl	updatePlayer
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #100
	str	r3, [r4]
	beq	.L251
.L225:
	ldr	r4, .L256+4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L256+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, .L256+12
	add	r5, r4, #220
.L227:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L252
.L226:
	add	r4, r4, #44
	cmp	r5, r4
	bne	.L227
	ldr	r4, .L256+16
	add	r5, r4, #200
.L229:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L253
.L228:
	add	r4, r4, #40
	cmp	r5, r4
	bne	.L229
	ldr	r4, .L256+20
	add	r5, r4, #220
.L231:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L254
.L230:
	add	r4, r4, #44
	cmp	r5, r4
	bne	.L231
	ldr	r4, .L256+24
	add	r5, r4, #340
.L233:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L255
.L232:
	add	r4, r4, #68
	cmp	r5, r4
	bne	.L233
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L255:
	mov	r0, r4
	bl	updateTreasure.part.4
	b	.L232
.L254:
	mov	r0, r4
	bl	updateEnemyBullet.part.0
	b	.L230
.L253:
	mov	r0, r4
	bl	updateEnemy.part.3
	b	.L228
.L252:
	mov	r0, r4
	bl	updateBullet.part.6
	b	.L226
.L251:
	bl	fireEnemyBullet
	bl	fireEnemy
	mov	r3, #0
	str	r3, [r4]
	b	.L225
.L257:
	.align	2
.L256:
	.word	enemyBulletTimer
	.word	DMANow
	.word	shadowOAM
	.word	bullets
	.word	enemys
	.word	enemyBullets
	.word	treasures
	.size	updateGame, .-updateGame
	.align	2
	.global	drawTreasure
	.type	drawTreasure, %function
drawTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, #512
	mov	lr, #66
	ldr	r3, .L264
	ldr	r2, .L264+4
	add	r0, r3, #40
.L261:
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
	add	r2, r2, #68
	bne	.L261
	ldmfd	sp!, {r4, lr}
	bx	lr
.L265:
	.align	2
.L264:
	.word	shadowOAM+330
	.word	treasures
	.size	drawTreasure, .-drawTreasure
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	shadowOAM,1024,4
	.global	accel
	.global	vblankCount
	.comm	scoreCol2,4,4
	.comm	scoreCol1,4,4
	.comm	treasures,340,4
	.comm	treasure,68,4
	.comm	player,68,4
	.comm	enemyBulletTimer,4,4
	.comm	lives,4,4
	.comm	youLose,4,4
	.comm	enemysRemaining,4,4
	.comm	enemys,200,4
	.comm	enemyBullets,220,4
	.comm	bullets,220,4
	.section	.rodata
	.align	2
	.type	accel, %object
	.size	accel, 4
accel:
	.word	-1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	vblankCount, %object
	.size	vblankCount, 4
vblankCount:
	.space	4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
