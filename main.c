/*****
Milestone 2:
Christopher Sun
Fireball's Treasure Hunt
21 November 2017
CS 2261

In my game, the player will move left and right to hit falling projectiles, which upon collision, will release treasures for the player to collect. The player must also dodge horizontally moving projectiles at the same time.

What currently works is the player can move left and right, shoot and hit the falling projectiles, and jump (with my own gravity). The projectiles upon hit will drop a treasure (which also falls with gravity), up to 5 on the screen at one time. The player loses automatically when hit by a horizontal projectile and loses 1 life when hit by a vertical one; the player wins by killing 5 horizontal projectiles (or by pressing B). The player can also manually "raise the floor" by pressing B - this raises both the player and the treasures that have fallen to the ground. The state screens also all transition correctly (see below).

My states are:
SPLASH -> INSTRUCTIONS = SELECT
    INSTRUCTIONS -> SPLASH = SELECT
SPLASH -> GAME = START
GAME -> PAUSE = START
    PAUSE -> GAME = START
PAUSE -> SPLASH (RESTART) = SELECT
GAME -> WIN = SElECT
GAME -> LOSE = Just play until lose
WIN/LOSE -> SPLASH (RESTART) = START
Raise floor = B

Minor Bugs: Treasure seems to drop to a different level than the player but not sure if that is just due to differing sprite sizes? Also sometimes the gravity seems to vary when different treasures fall?

For the future:
-Implement directional shooting (player can pick direction to shoot in)
-Make the sprites and backgrounds (currently just using HW5 sprites and backgrounds as placeholders)
-Add sound and SFX
-Try to fix treasure level bug
-Randomized horizontal projectile rows that work for where the player is currently (like not too high or too low)
-Try alpha blending the treasure to disappear after a certain time (extra credit) or when the max amount is on the screen already.
-Incorporate the CHEAT MODE
-Make ground increment for each missed vertical projectile (and possibly even if hit by one? Or hit by horizontal projectile?)
*****/

#include "myLib.h"
#include <stdlib.h>
#include "game.h"
#include "sprites.h"
#include "startbg.h"
#include "pausebg.h"
#include "winbg.h"
#include "losebg.h"
#include "starttopbg.h"
#include "gamebg.h"
#include "instructionsbg.h"

void initialize();

// State Prototypes
void goToStart();
void start();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

enum {START, INSTRUCTIONS, GAME, PAUSE, WIN, LOSE};
int state;
int seed;

unsigned short buttons;
unsigned short oldButtons;

int hOff = 0;
int slower = 0;

int main() {

    initialize();

	while(1) {
		oldButtons = buttons;
		buttons = BUTTONS;

		// State Machine
        switch(state) {

            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }

	}

	return 0;
}


void initialize() {
	REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;

	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30);

    goToStart();

}

// Sets up the start state
void goToStart() {

	hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);

	loadPalette(startbgPal);

	DMANow(3, startbgTiles, &CHARBLOCK[0], startbgTilesLen/2);
	DMANow(3, startbgMap, &SCREENBLOCK[31], startbgMapLen/2);
	DMANow(3, starttopbgTiles, &CHARBLOCK[1], starttopbgTilesLen/2);
	DMANow(3, starttopbgMap, &SCREENBLOCK[30], starttopbgMapLen/2);

    waitForVBlank();

    state = START;

    seed = 0;

}

void start() {
	seed++;
    slower++;
	if (slower % 10 == 0) {
		hOff++;
	}
	REG_BG0HOFF = hOff;
    waitForVBlank();


    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);

        goToGame();
        initGame();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }
}

void goToInstructions() {
    REG_DISPCTL ^= BG0_ENABLE;
    loadPalette(instructionsbgPal);

	DMANow(3, instructionsbgTiles, &CHARBLOCK[0], instructionsbgTilesLen/2);
	DMANow(3, instructionsbgMap, &SCREENBLOCK[31], instructionsbgMapLen/2);

    state = INSTRUCTIONS;
}

void instructions() {

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL ^= BG0_ENABLE;
        goToStart();
    }
}

void goToGame() {
	REG_DISPCTL ^= BG0_ENABLE;
	loadPalette(gamebgPal);

	DMANow(3, gamebgTiles, &CHARBLOCK[0], gamebgTilesLen/2);
	DMANow(3, gamebgMap, &SCREENBLOCK[31], gamebgMapLen/2);

	DMANow(3, spritesTiles, &CHARBLOCK[4], spritesTilesLen/2);
	DMANow(3, spritesPal, SPRITEPALETTE, spritesPalLen/2);



	state = GAME;
}

void game() {

    updateGame();
    drawGame();

    // Update the score
    // sprintf(buffer, "Poles gone through: %d", poleNumber);
    // drawString4(145, 60, buffer, WHITEID);

    waitForVBlank();
    // flipPage();

    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (youLose == 1 || lives == 0)
        goToLose();
    else if (enemysRemaining == 0 || BUTTON_PRESSED(BUTTON_SELECT))
        goToWin();


}

void goToPause() {
	hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);

	loadPalette(pausebgPal);

	DMANow(3, pausebgTiles, &CHARBLOCK[0], pausebgTilesLen/2);
	DMANow(3, pausebgMap, &SCREENBLOCK[31], pausebgMapLen/2);


    waitForVBlank();

    state = PAUSE;
}

void pause() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        // goToGame();
		// REG_DISPCTL ^= BG0_ENABLE;
		loadPalette(gamebgPal);

		DMANow(3, gamebgTiles, &CHARBLOCK[0], gamebgTilesLen/2);
		DMANow(3, gamebgMap, &SCREENBLOCK[31], gamebgMapLen/2);

		DMANow(3, spritesTiles, &CHARBLOCK[4], spritesTilesLen/2);
		DMANow(3, spritesPal, SPRITEPALETTE, spritesPalLen/2);
		state = GAME;
	} else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL ^= BG0_ENABLE;
        goToStart();
    }
}

void goToWin() {
	// REG_DISPCTL ^= BG0_ENABLE;
	hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);
		loadPalette(winbgPal);

		DMANow(3, winbgTiles, &CHARBLOCK[0], winbgTilesLen/2);
		DMANow(3, winbgMap, &SCREENBLOCK[31], winbgMapLen/2);
		hideSprites();

    waitForVBlank();


    state = WIN;
}

void win() {


    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
		REG_DISPCTL ^= BG0_ENABLE;
        goToStart();
	}
}

void goToLose() {
	hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);
	// REG_DISPCTL ^= BG0_ENABLE;
		loadPalette(losebgPal);

		DMANow(3, losebgTiles, &CHARBLOCK[0], losebgTilesLen/2);
		DMANow(3, losebgMap, &SCREENBLOCK[31], losebgMapLen/2);

		hideSprites();
    waitForVBlank();


    state = LOSE;
}

void lose() {


    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
		REG_DISPCTL ^= BG0_ENABLE;
		goToStart();
	}
}
