#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "sprites.h"
#include "poof.h"

// Variables
BULLET bullets[BULLETCOUNT];
BULLET enemyBullets[ENEMYBULLETCOUNT];
ENEMY enemys[ENEMYCOUNT];
int enemysRemaining;

int youLose;
int lives;
int enemyBulletTimer;

ANISPRITE player;
// ANISPRITE enemy;
ANISPRITE treasure;
ANISPRITE treasures[TREASURECOUNT];

int scoreCol1;
int scoreCol2;

int vblankCount = 0;
const int accel = -1;


OBJ_ATTR shadowOAM[128]; //@ 40 rn
//41 - 45 treasures i guess
//38-40 for score
//32-36 for enemybullet
//27-31 for bullet
// 1-5 enemies
//0 for player

typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vbCount;
}SOUND;

SOUND soundA;
SOUND soundB;

// Initialize the game
void initGame() {

	initPlayer();
    initBullets();
    initEnemys();
	initTreasure();
	hideSprites();

	enemysRemaining = ENEMYCOUNT;
	enemyBulletTimer = 0;
	youLose = 0;
	lives = 3;
	scoreCol1 = 2;
	scoreCol2 = 5;

}

// Updates the game each frame
void updateGame() {

	updatePlayer();
	enemyBulletTimer++;
	if (enemyBulletTimer == 100) {
		fireEnemyBullet();
		fireEnemy();
		enemyBulletTimer = 0;
	}

	DMANow(3, shadowOAM, OAM, 128*4);

	// Update all the bullets
	for (int i = 0; i < BULLETCOUNT; i++)
		updateBullet(&bullets[i]);

	// Update all the enemys
	for (int i = 0; i < ENEMYCOUNT; i++)
		updateEnemy(&enemys[i]);

	for (int i = 0; i < ENEMYBULLETCOUNT; i++)
		updateEnemyBullet(&enemyBullets[i]);

	for (int i = 0; i < TREASURECOUNT; i++)
		updateTreasure(&treasures[i]);
}

// Draws the game each frame
void drawGame() {


	drawPlayer();
	drawEnemy();
	drawBullet();
	drawEnemyBullet();
	drawScore();
	drawLives();
	drawTreasure();

	waitForVBlank();
	vblankCount++;
}

void drawScore() {
	shadowOAM[38].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[38].attr1 = 73 | ATTR1_TINY;
	shadowOAM[38].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6,scoreCol1);

	shadowOAM[39].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[39].attr1 = 78 | ATTR1_TINY;
	shadowOAM[39].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6,scoreCol2);

}

void drawLives() {
	shadowOAM[40].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[40].attr1 = (SCREENWIDTH - 8) | ATTR1_TINY;
	shadowOAM[40].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6,lives);
}

// Initialize the player
void initPlayer() {
	player.groundRow = SCREENHEIGHT - 20;
	player.width = 16;
    player.height = 16;
    player.rdel = 20;
    player.cdel = 1;
	// player.row = SCREENHEIGHT/2-player.width/2;
	player.col = SCREENWIDTH/2-player.height/2;
	player.row = SCREENHEIGHT - 20;

}

// Handle every-frame actions of the player
void updatePlayer() {

	// Fire bullets
	if (BUTTON_PRESSED(BUTTON_A)) {
		playSoundB(poof,POOFLEN,POOFFREQ, 0);
		fireBullet();
	}
	if(BUTTON_HELD(BUTTON_LEFT) && player.col > 0) {
		player.col--;
	}
	if(BUTTON_HELD(BUTTON_RIGHT) && player.col + player.width < SCREENWIDTH) {
		player.col++;
	}

	//gravity and jumping
	if (BUTTON_PRESSED(BUTTON_UP) && player.row == player.groundRow) {
		player.rdel = 8;
		player.rdel = player.rdel + accel;
		player.row = player.row - player.rdel;
	}

	if (player.row < player.groundRow && vblankCount % 3 == 0) {
		player.rdel = player.rdel + accel;
		player.row = player.row - player.rdel;
	}

	if (BUTTON_PRESSED(BUTTON_B)) {
		player.groundRow -= 10;
		if (player.row >= player.groundRow) {
			player.row = player.groundRow;
		}
	}

	//player and enemy bullet collision
	for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
		if (enemyBullets[i].active && collision(player.row, player.col, player.height, player.width,
			enemyBullets[i].row, enemyBullets[i].col, enemyBullets[i].height, enemyBullets[i].width)) {

			// Put enemy back in the pool
			enemyBullets[i].active = 0;
			lives--;
		}
	}
}

// Draw the player
void drawPlayer() {

	shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
	shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,0);


}

// Initialize the pool of bullets
void initBullets() {

	for (int i = 0; i < BULLETCOUNT; i++) {

		bullets[i].height = 8;
		bullets[i].width = 8;
		bullets[i].row = -bullets[i].height;
		bullets[i].col = 0;
		bullets[i].rdel = -2;
		bullets[i].cdel = 0;
		bullets[i].active = 0;
	}

	for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
		enemyBullets[i].height = 8;
		enemyBullets[i].width = 8;
		enemyBullets[i].row = -bullets[i].height;
		enemyBullets[i].col = 0;
		enemyBullets[i].rdel = 1;
		enemyBullets[i].cdel = 0;
		enemyBullets[i].active = 0;
		enemyBullets[i].treasure = i;
	}
}

// Spawn a bullet
void fireBullet() {

	// Find the first inactive bullet
	for (int i = 0; i < BULLETCOUNT; i++) {
		if (!bullets[i].active) {

			// Position the new bullet
			bullets[i].row = player.row;
			bullets[i].col = player.col + player.width/2
				- bullets[i].width/2;

			// Take the bullet out of the pool
			bullets[i].active = 1;
			drawBullet();

			// Break out of the loop
			break;
		}
	}
}

void fireEnemyBullet() {

	// Find the first inactive bullet
	for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
		int j = rand() % SCREENWIDTH - enemyBullets[i].width;
		if (!enemyBullets[i].active) {
				// Position the new bullet
				enemyBullets[i].row = 0;
				enemyBullets[i].col = j;

				// Take the bullet out of the pool
				enemyBullets[i].active = 1;
				drawEnemyBullet();
				// Break out of the loop
				break;
		}
	}
}

// Handle every-frame actions of a bullet
void updateBullet(BULLET* b) {

	// If active, update; otherwise ignore
	if (b->active) {
		if (b->row + b->height-1 >= 0
            && b->col + b->cdel > 0
            && b->col + b->cdel < SCREENWIDTH-1) {

			b->row += b->rdel;
		} else {
			b->active = 0;
		}

		//bullet raindrop collisions
		for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
			if (enemyBullets[i].active && collision(b->row, b->col, b->height, b->width, enemyBullets[i].row, enemyBullets[i].col, enemyBullets[i].height, enemyBullets[i].width)) {
				b->active = 0;
				enemyBullets[i].active = 0;
				fireTreasure(i);
				// treasures[i].active = 1;
				// drawTreasure(&enemyBullets[i]);
			}
		}
	}
}


void updateEnemyBullet(BULLET* b) {
	// If active, update; otherwise ignore
	if (b->active) {
		if (b->row + b->height-1 <= SCREENHEIGHT
			&& b->col + b->cdel > 0
			&& b->col + b->cdel < SCREENWIDTH-1) {

			b->row += b->rdel;
		} else {
			b->active = 0;
		}
	}
}
// Draw a bullet
void drawBullet() {

	for (int i = 0; i < BULLETCOUNT; i++) {
		if (bullets[i].active) {
			shadowOAM[i + 27].attr0 = bullets[i].row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[i + 27].attr1 = bullets[i].col | ATTR1_TINY;
			shadowOAM[i + 27].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(1,2);
		} else {
			shadowOAM[i + 27].attr0 = ATTR0_HIDE;
		}
	}

}

void drawEnemyBullet() { //32-37
	for (int i = 0; i< ENEMYBULLETCOUNT; i++) {
		if (enemyBullets[i].active) {
			shadowOAM[i + 32].attr0 = enemyBullets[i].row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[i + 32].attr1 = enemyBullets[i].col | ATTR1_TINY;
			shadowOAM[i + 32].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(1,3);
		} else {
			shadowOAM[i + 32].attr0 = ATTR0_HIDE;
		}
	}
}

// Initialize the enemys
void initEnemys() {

	for (int i = 0; i < ENEMYCOUNT; i++) {

		enemys[i].height = 8;
		enemys[i].width = 16;
		enemys[i].row = 30;
		enemys[i].col = 0;
		enemys[i].rdel = 1;
		enemys[i].cdel = 1;
		enemys[i].active = 0;
		enemys[i].aniCounter = 0;
		enemys[i].curFrame = 0;
		enemys[i].numFrames = 2;
	}

}

// Handle every-frame actions of a enemy
void updateEnemy(ENEMY* b) {

	if (b->active) {
		b->aniCounter++;
		if(b->aniCounter % 20 == 0) {
			b->curFrame = (b->curFrame+1) % b->numFrames;
		}

		if (b->col >= SCREENWIDTH) {
			b->active = 0;
		}

		if (collision(b->row, b->col, b->height, b->width, player.row, player.col, player.height, player.width)) {
			youLose = 1;
		}

		// Move the enemy

		b->col += b->cdel;

		// Handle enemy-bullet collisions
		for (int i = 0; i < BULLETCOUNT; i++) {
			if (bullets[i].active && collision(b->row, b->col, b->height, b->width,
				bullets[i].row, bullets[i].col, bullets[i].height, bullets[i].width)) {

				// Put enemy back in the pool
				bullets[i].active = 0;
				b->active = 0;

				// Update the score
				enemysRemaining--;
				scoreCol2--;
				if (enemysRemaining % 10 == 9) {
					scoreCol1--;
					scoreCol2 = 9;
				}

			}
		}
	}
}

void fireEnemy() {
	int i = rand() % ENEMYCOUNT; //spawns pretty randomly because wont fire each call necessarily
		if (!enemys[i].active) {
				// Position the new enemy
				enemys[i].row = SCREENHEIGHT - (i * 10) - 10;
				enemys[i].col = 1;

				// Take the enemy out of the pool
				enemys[i].active = 1;
				drawEnemy();
		}

}

// Draw a enemy
void drawEnemy() {
	for (int i = 0; i < ENEMYCOUNT; i++) {
		if (enemys[i].active) {
			shadowOAM[i + 1].attr0 = enemys[i].row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[i + 1].attr1 = enemys[i].col | ATTR1_TINY;
			if (i % 5 == 0) {
				shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2 + enemys[i].curFrame,2);
			} else if (i % 5 == 1) {
				shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2 + enemys[i].curFrame,1);
			} else {
				shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2 + enemys[i].curFrame,0);
			}
		} else {
			shadowOAM[i + 1].attr0 = ATTR0_HIDE;
		}
	}
}

void initTreasure() {
	for (int i = 0; i < TREASURECOUNT; i++) {
		treasures[i].groundRow = player.groundRow;
		treasures[i].row = 0;
		treasures[i].col = 0;
	    treasures[i].rdel = 1;
	    treasures[i].cdel = 0;
		treasures[i].width = 8; //enemy widthand height for now
	    treasures[i].height = 16;
	    treasures[i].aniCounter = 0;
	    treasures[i].aniState = 0;
	    treasures[i].prevAniState = 0;
	    treasures[i].curFrame = 0;
	    treasures[i].numFrames = 1;
		treasures[i].bulletTimer = 0;
		treasures[i].cDirection = 0;
		treasures[i].active = 0;
		treasures[i].number = i;
	}
}

void updateTreasure(ANISPRITE* a) {
	if (a->active) {
		// a->groundRow = player.groundRow;
		if (a->row < player.groundRow && vblankCount % 3 == 0) {
			a->rdel = a->rdel + accel;
			a->row = a->row - a->rdel;
		}
		if (a->row >= player.groundRow) {
			a->row = player.groundRow;
		}

		if (collision(player.row, player.col, player.height, player.width,
			a->row, a->col, a->height, a->width)) {
			a->active = 0;
			a->rdel = 1;
		}
		// a->row += a->rdel;
		// drawTreasure(a->number);
		// drawTreasure(&enemys[a->number]);
	}
}

void fireTreasure(int i) {
	for (int j = 0; j < TREASURECOUNT; j++) {
		if (!treasures[j].active) {
			treasures[j].row = enemyBullets[i].row;
			treasures[j].col = enemyBullets[i].col;
			treasures[j].active = 1;
			treasures[j].onScreen = 0;
			drawTreasure();
			break;
		}
	}
}

void drawTreasure() {
	for (int i = 0; i < TREASURECOUNT; i++) {
		if (treasures[i].active /*&& !treasures[i].onScreen*/) {
			// treasures[i].active = 1;
			// treasures[i].row = b->row;
			// treasures[i].col = b->col;
			shadowOAM[i + 41].attr0 = treasures[i].row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[i + 41].attr1 = treasures[i].col | ATTR1_TINY;
			shadowOAM[i + 41].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2,2);
			// treasures[i].onScreen = 1;
		} else {
			shadowOAM[i + 41].attr0 = ATTR0_HIDE;
			// treasures[i].onScreen = 0;
		}
	}
}
