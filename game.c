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
BULLET superBullets[SUPERBULLETCOUNT];

// int youLose;
int lives;
int enemyBulletTimer;

ANISPRITE player;
// ANISPRITE enemy;
ANISPRITE treasure;
ANISPRITE treasures[TREASURECOUNT];
ANISPRITE special;
ANISPRITE specials[SPECIALCOUNT];

int scoreCol1;
int scoreCol2;

int superFired;
int specialCollected;
int specialActive;

int tired;
int alreadyDrop = 0; // if drop already on the screen

int vblankCount = 0;
const int accel = -1;


OBJ_ATTR shadowOAM[128]; //@ 45
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
	initSpecial();
	hideSprites();

	enemysRemaining = ENEMYCOUNT;
	enemyBulletTimer = 0;
	// youLose = 0;
	lives = 3;
	scoreCol1 = 0;
	scoreCol2 = 5;
	superFired = 0;
	specialCollected = 0;
}

// Updates the game each frame
void updateGame() {

	updatePlayer();
	enemyBulletTimer++;
	if (enemyBulletTimer == 100) {
		fireEnemy();
		if (alreadyDrop == 0) {
			fireEnemyBullet();
			// enemyBulletTimer = 0;
		}
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

	for (int i = 0; i < SPECIALCOUNT; i++)
		updateSpecial(&specials[i]);
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
	drawSpecial();

	waitForVBlank();
	vblankCount++;
}

void drawScore() {
	shadowOAM[38].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[38].attr1 = 73 | ATTR1_TINY;
	shadowOAM[38].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7,scoreCol1);

	shadowOAM[39].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[39].attr1 = 78 | ATTR1_TINY;
	shadowOAM[39].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7,scoreCol2);

}

void drawLives() {
	shadowOAM[40].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[40].attr1 = (SCREENWIDTH - 8) | ATTR1_TINY;
	shadowOAM[40].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7,lives);
}

// Initialize the player
void initPlayer() {
	player.groundRow = SCREENHEIGHT - 20;
	player.width = 16;
    player.height = 16;
    player.rdel = 20;
    player.cdel = 2; //faster or slower player speed
	// player.row = SCREENHEIGHT/2-player.width/2;
	player.col = SCREENWIDTH/2-player.height/2;
	player.row = SCREENHEIGHT - 20;
	player.superMode = 0;
	player.curFrame = 0;
	player.numFrames = 2;
	player.aniCounter = 0;
	tired = 0;
}

// Handle every-frame actions of the player
void updatePlayer() {

	// if (player.aniCounter % 20 == 0) {
	// 	player.curFrame = ((player.curFrame + 1) % player.numFrames) * 2;
	// }
	//
	player.aniCounter++;
	if (player.aniCounter % 40 == 0) {
		player.curFrame++;
	}
	// player.curFrame++;

	if (superFired == 5) {
		player.superMode = 0;
		superFired = 0;
		specialCollected = 0;
		specialActive = 0;
		initSpecial();
	}

	// Fire bullets
	if (BUTTON_PRESSED(BUTTON_A)) {
		fireBullet();
		// if (player.superMode) {
		// 	superFired++;
			// if (superFired > 5) {
			// 	player.superMode = 0;
			// 	superFired = 0;
			// 	specialCollected = 0;
			// 	specialActive = 0;
			// 	initSpecial();
			// }
		// }
	}
	if(BUTTON_HELD(BUTTON_LEFT) && player.col > 0) {
		player.col-= player.cdel;
	}
	if(BUTTON_HELD(BUTTON_RIGHT) && player.col + player.width < SCREENWIDTH) {
		player.col+= player.cdel;
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
	}

	if (player.row >= player.groundRow) {
		player.row = player.groundRow;
	}

	if (BUTTON_PRESSED(BUTTON_DOWN) && specialCollected) {
		if (!player.superMode)
			player.superMode = 1;
		// else player.superMode = 0;
		scoreCol2 = 5;
	}

	if (player.row - 1 <= 0) {
		lives = 0;
	}

	//player and enemy bullet collision
	for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
		if (enemyBullets[i].active && collision(player.row, player.col, player.height, player.width,
			enemyBullets[i].row, enemyBullets[i].col, enemyBullets[i].height, enemyBullets[i].width)) {

			// Put enemy back in the pool
			enemyBullets[i].active = 0;
			lives--;
			alreadyDrop = 0;
		}
	}

	if (tired && bullets[BULLETCOUNT - 1].active) {
		if (!bullets[0].active) {
			tired = 0;
		}
	}
}

// Draw the player
void drawPlayer() {

	if (!player.superMode) {
		if (tired) {
			shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
			shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % player.numFrames) * 2,player.superMode + 6);
		} else {
			shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
			shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % player.numFrames) * 2,player.superMode);
		}
	} else {
		if (tired) {
			shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
			shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % player.numFrames) * 2,player.superMode * 4);
		} else {
			shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[0].attr1 = player.col | ATTR1_SMALL;
			shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % player.numFrames) * 2,player.superMode * 2);
		}
	}

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
		bullets[i].superBullet = 0;
	}

	for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
		enemyBullets[i].height = 8;
		enemyBullets[i].width = 8;
		enemyBullets[i].row = 0;
		enemyBullets[i].col = 0;
		enemyBullets[i].rdel = 1;
		enemyBullets[i].cdel = 0;
		enemyBullets[i].active = 0;
		enemyBullets[i].treasure = i;
	}
	alreadyDrop = 0;
}

void initSuperBullets() {
	for (int i = 0; i < SUPERBULLETCOUNT; i++) {
		superBullets[i].height = 8;
		superBullets[i].width = 8;
		superBullets[i].row = 0;
		superBullets[i].col = 0;
		superBullets[i].rdel = -4;
		superBullets[i].cdel = 0;
		superBullets[i].active = 0;
		superBullets[i].treasure = i;
	}
	scoreCol2 = SUPERBULLETCOUNT;
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
			if (player.superMode) {
				bullets[i].superBullet = 1;
			} else {
				bullets[i].superBullet = 0;
			}
			playSoundB(poof,POOFLEN,POOFFREQ, 0);
			drawBullet();

			// if (player.superMode) {
			// 	superFired++;
			// }

			// Break out of the loop
			break;
		}
		if (i == BULLETCOUNT - 2) {
			tired = 1;
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
				alreadyDrop = 1;
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
		if (/*!player.superMode && */!b->superBullet) {
			if (!player.superMode) {
				if (b->row + b->height-1 >= 0
					&& b->row <= player.groundRow
		            && b->col + b->cdel > 0
		            && b->col + b->cdel < SCREENWIDTH-1) {
					b->rdel = -2;
					b->row += b->rdel;
				} else {
					b->active = 0;
				}
			} else {
				if (b->row + b->height-1 >= 0
					&& b->row <= player.groundRow
		            && b->col + b->cdel > 0
		            && b->col + b->cdel < SCREENWIDTH-1) {
					b->rdel = -2;
					b->row += b->rdel;
				} else {
					b->active = 0;
				}
			}
		} else if (b->superBullet){
			if (b->row + b->height-1 >= 0
				&& b->row <= player.groundRow
	            && b->col + b->cdel > 0
	            && b->col + b->cdel < SCREENWIDTH-1) {
				for (int i = 0; i < ENEMYBULLETCOUNT; i++) { //tracking enemybullet
					if (!player.superMode) {
						b->active = 0;
					}
					if (enemyBullets[i].active) {
						b->rdel = -2;

						if (enemyBullets[i].row < b->row) {
							b->rdel = -2;
						} else if (enemyBullets[i].row == b->row) {
							b->rdel = 0;
						} else {
							b->rdel = 2;
						}

						if (enemyBullets[i].col < b->col) {
							b->cdel = -2;
						} else if (enemyBullets[i].col == b->col) {
							b->cdel = 0;
						} else {
							b->cdel = 2;
						}
					}
				}
				// b->rdel = enemyBullet
				b->col += b->cdel;
				b->row += b->rdel;
			} else {
				b->active = 0;
				// superFired++;
			}
		}

		//bullet raindrop collisions
		for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
			if (enemyBullets[i].active && collision(b->row, b->col, b->height, b->width, enemyBullets[i].row, enemyBullets[i].col, enemyBullets[i].height, enemyBullets[i].width)) {
				b->active = 0;
				enemyBullets[i].active = 0;
				alreadyDrop = 0;

				if (player.superMode) {
					superFired++;
					scoreCol2--;
				}
				if (rand()%2 == 1 && !specialActive) {
					fireSpecial(i);
				} else {
					fireTreasure(i);
				}
				// treasures[i].active = 1;
				// drawTreasure(&enemyBullets[i]);
			}
		}
	}
}


void updateEnemyBullet(BULLET* b) {
	// If active, update; otherwise ignore
	if (b->active) {
		if (b->row + b->height <= player.groundRow + player.height
			&& b->col + b->cdel > 0
			&& b->col + b->cdel < SCREENWIDTH-1) {
			if (vblankCount % 1 == 0) {
				b->row += b->rdel; // fall slower nevermind maybe not
			}
		} else {
			b->active = 0;
			player.groundRow -= 10;
			alreadyDrop = 0;
		}
	}
}
// Draw a bullet
void drawBullet() {

	for (int i = 0; i < BULLETCOUNT; i++) {
		if (bullets[i].active) {
			shadowOAM[i + 27].attr0 = bullets[i].row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[i + 27].attr1 = bullets[i].col | ATTR1_TINY;
			shadowOAM[i + 27].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(1,8);
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
			shadowOAM[i + 32].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(1,9);
		} else {
			shadowOAM[i + 32].attr0 = ATTR0_HIDE;
		}
	}
}

// Initialize the enemys
void initEnemys() {

	for (int i = 0; i < ENEMYCOUNT; i++) {

		enemys[i].height = 8;
		enemys[i].width = 8;
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
			lives--;
			b->active = 0;
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
				// scoreCol2--;
				// if (enemysRemaining % 10 == 9) {
				// 	scoreCol1--;
				// 	scoreCol2 = 9;
				// }

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
				shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2 + enemys[i].curFrame,10);
			} else if (i % 5 == 1) {
				shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2 + enemys[i].curFrame,9);
			} else {
				shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2 + enemys[i].curFrame,8);
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
	    treasures[i].height = 8;
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
			a->row = player.groundRow + a->height;
		}

		if (collision(player.row, player.col, player.height, player.width,
			a->row, a->col, a->height, a->width)) {
			a->active = 0;
			a->rdel = 1; //resets falling gravity
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
		if (treasures[i].active) {
			shadowOAM[i + 41].attr0 = treasures[i].row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[i + 41].attr1 = treasures[i].col | ATTR1_TINY;
			shadowOAM[i + 41].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,8);
			// treasures[i].onScreen = 1;
		} else {
			shadowOAM[i + 41].attr0 = ATTR0_HIDE;
			// treasures[i].onScreen = 0;
		}
	}
}

void initSpecial() {
	for (int i = 0; i < SPECIALCOUNT; i++) {
		specials[i].groundRow = player.groundRow;
		specials[i].row = 0;
		specials[i].col = 0;
	    specials[i].rdel = 1;
	    specials[i].cdel = 0;
		specials[i].width = 8; //enemy widthand height for now
	    specials[i].height = 8;
	    specials[i].aniCounter = 0;
	    specials[i].aniState = 0;
	    specials[i].prevAniState = 0;
	    specials[i].curFrame = 0;
	    specials[i].numFrames = 1;
		specials[i].bulletTimer = 0;
		specials[i].cDirection = 0;
		specials[i].active = 0;
	}
	specialActive = 0;
}

void updateSpecial(ANISPRITE* a) {
	if (a->active) {
		// a->groundRow = player.groundRow;
		if (a->row < player.groundRow && vblankCount % 3 == 0) {
			a->rdel = a->rdel + accel;
			a->row = a->row - a->rdel;
		}
		if (a->row >= player.groundRow) {
			a->row = player.groundRow + a->height;
		}

		if (collision(player.row, player.col, player.height, player.width,
			a->row, a->col, a->height, a->width)) {
			a->active = 0;
			a->rdel = 1; //resets falling gravity
			specialCollected = 1;
			// specialActive = 0;
		}
		// a->row += a->rdel;
		// drawTreasure(a->number);
		// drawTreasure(&enemys[a->number]);
	}
}

void fireSpecial(int i) {
	for (int j = 0; j < SPECIALCOUNT; j++) {
		if (!treasures[j].active) {
			specials[j].row = enemyBullets[i].row;
			specials[j].col = enemyBullets[i].col;
			specials[j].active = 1;
			specialActive = 1;
			drawSpecial();
			break;
		}
	}
}

void drawSpecial() {
	for (int i = 0; i < SPECIALCOUNT; i++) {
		if (specials[i].active) {
			shadowOAM[i + 46].attr0 = specials[i].row | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[i + 46].attr1 = specials[i].col | ATTR1_TINY;
			shadowOAM[i + 46].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2,9);
			// treasures[i].onScreen = 1;
		} else {
			shadowOAM[i + 46].attr0 = ATTR0_HIDE;
			// treasures[i].onScreen = 0;
		}
	}
}
