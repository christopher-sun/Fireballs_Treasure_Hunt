/*****
Milestone 3:
Christopher Sun
Fireball's Treasure Hunt
28 November 2017
CS 2261

On top of what works in Milestone 2, what now works is the BGM and shooting SFX, the treasure now falls on the correct level, the collision works correctly now, the CHEAT, and the ground increments for each missed vertical projectile.

My states are:
SPLASH -> INSTRUCTIONS = RIGHT to "INSTRUCTIONS" + START
    INSTRUCTIONS -> SPLASH = ENTER
SPLASH -> GAME = LEFT TO "START" + START
GAME -> PAUSE = START
    PAUSE -> GAME = START
PAUSE -> SPLASH (RESTART) = SELECT
GAME -> WIN = Kill 5 horizontal enemies
    or GAME -> WIN = SElECT
GAME -> LOSE = Hit by vertical or horizontal enemies 3 times OR player hits the ceiling
WIN/LOSE -> SPLASH (RESTART) = START
Raise floor = B or vertical projectile hits the floor

Minor Bugs: Sometimes random sprites flash somewhere on the screen for a split second randomly. I can't find what triggers it and it only happens once a game (every few games, not every game).

For the future:
-Finalize the sprites and backgrounds -- make everything pretty
-Finish adding SFX
-Have horizontal projectiles follow the groundRow of player
-Possibly make vertical projectiles spawn in a range around player so it's easier
-Try alpha blending the treasure to disappear after a certain time (extra credit) or when the max amount is on the screen already.
*****/

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
#include "POWER-EXO-8-bits.h"
#include "pauseaudio.h"
#include "likey.h"
#include "tt.h"
#include "knocknock.h"
#include "cheerup.h"
#include "startbg2.h"
#include "gametopbg.h"
#include "cavebg.h"
#include "gamegroundbg.h"
#include "instructions2bg.h"
#include "instructions3bg.h"
#include "instructions4bg.h"
#include "instructions5bg.h"

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
// void goToLose();
// void lose();

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void muteSound();
void unmuteSound();
void stopSound();

void setupInterrupts();
void interruptHandler();

void demo();

enum {START, INSTRUCTIONS, GAME, PAUSE, WIN/*, LOSE*/};
int state;
int seed;
int instState;
enum {FIRST, SECOND, THIRD, FOURTH, FIFTH};

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

unsigned short buttons;
unsigned short oldButtons;

int hOff = 0;
int vOff = 0;
int slower = 0;
int which = 0;

int isDemo;
int demoHor;

int instPage;

int highScore = 0;

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
            /*case LOSE:
                lose();
                break;*/
        }

	}

	return 0;
}


void initialize() {
	REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE | BG2_ENABLE;

    REG_BG2CNT = BG_SIZE_TALL | BG_CHARBLOCK(2) | BG_SCREENBLOCK(26) | 1; //bottom
	REG_BG1CNT = BG_SIZE_TALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | 1;
	REG_BG0CNT = BG_SIZE_TALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | 0;//top

    REG_DISPCTL ^= BG2_ENABLE;

    setupSounds();
    setupInterrupts();

    playSoundA(knocknock,KNOCKNOCKLEN,KNOCKNOCKFREQ, 1);
    goToStart();

}

//sets up all the sound stuff
void setupSounds()
{
    REG_SOUNDCNT_X = SND_ENABLED;

	REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_TO_BOTH |
                     DSA_TIMER0 |
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 |
                     DSB_OUTPUT_TO_BOTH |
                     DSB_TIMER1 |
                     DSB_FIFO_RESET;

	REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM0CNT = 0;

        REG_TM0D = -ticks;
        REG_TM0CNT = TIMER_ON;

        soundA.data = sound;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.duration = VBLANK_FREQ * length / frequency;
        soundA.vbCount = 0;
        soundA.isPlaying = 1;
        soundA.loops = loops;
}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;

        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;

        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.duration = VBLANK_FREQ * length / frequency;
        soundB.vbCount = 0;
        soundB.isPlaying = 1;
        soundB.loops = loops;
}

void pauseSound()
{
    if (soundA.isPlaying) {
        soundA.isPlaying = 0;
        REG_TM0CNT = 0;
    }
    if (soundB.isPlaying) {
        soundB.isPlaying = 0;
        REG_TM1CNT = 0;
    }
}

void unpauseSound()
{
    if (!soundA.isPlaying) {
        soundA.isPlaying = 1;
        REG_TM0CNT = TIMER_ON;;
    }
    if (!soundB.isPlaying) {
        soundB.isPlaying = 1;
        REG_TM1CNT = TIMER_ON;
    }

}

void stopSound()
{
    if (soundA.isPlaying) {
        soundA.isPlaying = 0;
        dma[1].cnt = 0;
        REG_TM0CNT = 0;
    }
    if (soundB.isPlaying) {
        soundB.isPlaying = 0;
        dma[2].cnt = 0;
        REG_TM1CNT = 0;
    }
}

void setupInterrupts()
{
	REG_IME = 0;

    REG_INTERRUPT = (unsigned int) interruptHandler;

	REG_IE |= INT_VBLANK;
	REG_DISPSTAT |= INT_VBLANK_ENABLE;
	REG_IME = 1;
}

void interruptHandler()
{
	REG_IME = 0;
	if(REG_IF & INT_VBLANK)
	{
        if (soundA.isPlaying) {
            soundA.vbCount++;
            if (soundA.vbCount == soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    REG_TM0CNT = 0;
                }
            }
        }
        if (soundB.isPlaying) {
            soundB.vbCount++;
            if (soundB.vbCount == soundB.duration) {
                if (soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.frequency, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    REG_TM1CNT = 0;
                }
            }
        }

		REG_IF = INT_VBLANK;
	}

	REG_IME = 1;
}

// Sets up the start state
void goToStart() {

	hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);

	loadPalette(startbgPal);

	DMANow(3, startbgTiles, &CHARBLOCK[0], startbgTilesLen/2);
	DMANow(3, startbgMap, &SCREENBLOCK[30], startbgMapLen/2);
	DMANow(3, starttopbgTiles, &CHARBLOCK[1], starttopbgTilesLen/2);
	DMANow(3, starttopbgMap, &SCREENBLOCK[28], starttopbgMapLen/2);

    vOff = 0;
    REG_BG1VOFF = vOff;
    REG_BG0VOFF = vOff;

    REG_BLDMOD = 0;
    REG_COLEV = 0;

    waitForVBlank();

    state = START;

    seed = 0;

    which = 0;

}

void start() {
	seed++;
    slower++;
	if (slower % 10 == 0) {
		hOff++;
	}
	REG_BG0HOFF = hOff;

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        loadPalette(startbgPal);

        DMANow(3, startbgTiles, &CHARBLOCK[0], startbgTilesLen/2);
        DMANow(3, startbgMap, &SCREENBLOCK[30], startbgMapLen/2);

        which = 0;
    }

    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        loadPalette(startbg2Pal);

        DMANow(3, startbg2Tiles, &CHARBLOCK[0], startbg2TilesLen/2);
        DMANow(3, startbg2Map, &SCREENBLOCK[30], startbg2MapLen/2);

        which = 1;
    }

    if (BUTTON_PRESSED(BUTTON_START) && which == 0) {
            srand(seed);

            goToGame();
            initGame();
    } else if (BUTTON_PRESSED(BUTTON_START) && which == 1) {
        goToInstructions();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }
}

void goToInstructions() {
    REG_DISPCTL ^= BG0_ENABLE;
    loadPalette(instructionsbgPal);

	DMANow(3, instructionsbgTiles, &CHARBLOCK[0], instructionsbgTilesLen/2);
	DMANow(3, instructionsbgMap, &SCREENBLOCK[30], instructionsbgMapLen/2);

    instState = FIRST;
    instPage = 0;
    isDemo = 0;
    demoHor = 0;

    state = INSTRUCTIONS;
}

void instructions() {

    // slower++;
    // if (BUTTON_HELD(BUTTON_DOWN) && vOff <= 30) {
    //     vOff++;
    // }
    // if (BUTTON_HELD(BUTTON_UP) && vOff >= 0) {
    //     vOff--;
    // }
    if (BUTTON_PRESSED(BUTTON_START)) {
        if (instPage == 0) {
            REG_DISPCTL ^= BG0_ENABLE;
            goToStart();
        } else if (instPage == 1) {
            loadPalette(instructions3bgPal);

            DMANow(3, instructions3bgTiles, &CHARBLOCK[0], instructions3bgTilesLen/2);
            DMANow(3, instructions3bgMap, &SCREENBLOCK[30], instructions3bgMapLen/2);
            instState = SECOND;
        } else if (instPage == 2) {
            loadPalette(instructionsbgPal);

            DMANow(3, instructionsbgTiles, &CHARBLOCK[0], instructionsbgTilesLen/2);
            DMANow(3, instructionsbgMap, &SCREENBLOCK[30], instructionsbgMapLen/2);
            instPage = 0;
            shadowOAM[0].attr0 = ATTR0_HIDE;
            DMANow(3, shadowOAM, OAM, 128*4);
            instState = FIRST;
        } else if (instPage == 3) {
            isDemo = !isDemo;
            demo();
            instState = THIRD;
        } else if (instPage == 4) {
            shadowOAM[0].attr0 = ATTR0_HIDE;
            DMANow(3, shadowOAM, OAM, 128*4);
            instState = FOURTH;
        } else if (instPage == 5) {
            loadPalette(instructions4bgPal);

            DMANow(3, instructions4bgTiles, &CHARBLOCK[0], instructions4bgTilesLen/2);
            DMANow(3, instructions4bgMap, &SCREENBLOCK[30], instructions4bgMapLen/2);
            instPage = 3;
            instState = SECOND;
        }
    }

    switch(instState) {

        case FIRST:
        // loadPalette(instructionsbgPal);
        //
        // DMANow(3, instructionsbgTiles, &CHARBLOCK[0], instructionsbgTilesLen/2);
        // DMANow(3, instructionsbgMap, &SCREENBLOCK[30], instructionsbgMapLen/2);
        // if (BUTTON_PRESSED(BUTTON_START)) {
        //     goToStart();
        // }

        if (BUTTON_PRESSED(BUTTON_RIGHT)) {
            loadPalette(instructions2bgPal);

            DMANow(3, instructions2bgTiles, &CHARBLOCK[0], instructions2bgTilesLen/2);
            DMANow(3, instructions2bgMap, &SCREENBLOCK[30], instructions2bgMapLen/2);

            instPage = 1;

        }

        if (BUTTON_PRESSED(BUTTON_LEFT)) {
            loadPalette(instructionsbgPal);

            DMANow(3, instructionsbgTiles, &CHARBLOCK[0], instructionsbgTilesLen/2);
            DMANow(3, instructionsbgMap, &SCREENBLOCK[30], instructionsbgMapLen/2);
            instPage = 0;
            // if (BUTTON_PRESSED(BUTTON_START)) {
            //     goToStart();
            // }
        }

            break;
        case SECOND:
        // loadPalette(instructions3bgPal);
        //
        // DMANow(3, instructions3bgTiles, &CHARBLOCK[0], instructions3bgTilesLen/2);
        // DMANow(3, instructions3bgMap, &SCREENBLOCK[30], instructions3bgMapLen/2);
        // if (BUTTON_PRESSED(BUTTON_START)) {
        //     instState = FIRST;
        // }

        if (BUTTON_PRESSED(BUTTON_RIGHT)) {
            loadPalette(instructions5bgPal);

            DMANow(3, instructions5bgTiles, &CHARBLOCK[0], instructions5bgTilesLen/2);
            DMANow(3, instructions5bgMap, &SCREENBLOCK[30], instructions5bgMapLen/2);
            // if (BUTTON_PRESSED(BUTTON_START)) {
            //     instState = THIRD;
            // }
            instPage = 4;
        }

        if (BUTTON_PRESSED(BUTTON_UP)) {
            loadPalette(instructions4bgPal);

            DMANow(3, instructions4bgTiles, &CHARBLOCK[0], instructions4bgTilesLen/2);
            DMANow(3, instructions4bgMap, &SCREENBLOCK[30], instructions4bgMapLen/2);
            instPage = 3;
            // if (BUTTON_PRESSED(BUTTON_START)) {
            //     // load the sprites
            //     demo();
            // }
        }

        if (BUTTON_PRESSED(BUTTON_LEFT) || (BUTTON_PRESSED(BUTTON_DOWN) && instPage == 3)) {
            loadPalette(instructions3bgPal);

            DMANow(3, instructions3bgTiles, &CHARBLOCK[0], instructions3bgTilesLen/2);
            DMANow(3, instructions3bgMap, &SCREENBLOCK[30], instructions3bgMapLen/2);
            // if (BUTTON_PRESSED(BUTTON_START)) {
            //     instState = FIRST;
            // }
            instPage = 2;
        }
            break;
        case THIRD:
        loadPalette(instructions4bgPal);

        DMANow(3, instructions4bgTiles, &CHARBLOCK[0], instructions4bgTilesLen/2);
        DMANow(3, instructions4bgMap, &SCREENBLOCK[30], instructions4bgMapLen/2);
        instPage = 5;
        demo();
        // if (BUTTON_PRESSED(BUTTON_START)) {
        //     instState = THIRD;;
        // }
        //
        // if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        //     loadPalette(instructions2bgPal);
        //
        //     DMANow(3, instructions2bgTiles, &CHARBLOCK[0], instructions2bgTilesLen/2);
        //     DMANow(3, instructions2bgMap, &SCREENBLOCK[30], instructions2bgMapLen/2);
        //     if (BUTTON_PRESSED(BUTTON_START)) {
        //         instState = FOURTH;
        //     }
        // }
        //
        // if (BUTTON_PRESSED(BUTTON_LEFT)) {
        //     loadPalette(instructionsbgPal);
        //
        //     DMANow(3, instructionsbgTiles, &CHARBLOCK[0], instructionsbgTilesLen/2);
        //     DMANow(3, instructionsbgMap, &SCREENBLOCK[30], instructionsbgMapLen/2);
        //     if (BUTTON_PRESSED(BUTTON_START)) {
        //         instState = THIRD;
        //     }
        // }
            break;
        case FOURTH:

            break;
        case FIFTH:

            break;
    }


    waitForVBlank();
    // REG_BG1VOFF = vOff;

    // if (BUTTON_PRESSED(BUTTON_SELECT) || BUTTON_PRESSED(BUTTON_START)) {
    //     REG_DISPCTL ^= BG0_ENABLE;
    //     goToStart();
    // }
}

void demo() {
    if (isDemo) {
        //the button pressed stuff
        if (BUTTON_HELD(BUTTON_RIGHT)) {
            demoHor++;
        } else if (BUTTON_HELD(BUTTON_LEFT)) {
            demoHor--;
        }
    }

    shadowOAM[0].attr0 = ((SCREENHEIGHT/2) + 20) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (SCREENWIDTH/2 + demoHor) | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,0);
    DMANow(3, spritesTiles, &CHARBLOCK[4], spritesTilesLen/2);
    DMANow(3, spritesPal, SPRITEPALETTE, spritesPalLen/2);
    DMANow(3, shadowOAM, OAM, 128*4);

}

void goToGame() {
    REG_DISPCTL ^= BG2_ENABLE;

    REG_BG0HOFF = 0;

	loadPalette(cavebgPal);

    DMANow(3, gamegroundbgTiles, &CHARBLOCK[0], gamegroundbgTilesLen/2);
    DMANow(3, gamegroundbgMap, &SCREENBLOCK[30], gamegroundbgMapLen/2);

    DMANow(3, gametopbgTiles, &CHARBLOCK[1], gametopbgTilesLen/2);
    DMANow(3, gametopbgMap, &SCREENBLOCK[28], gametopbgMapLen/2);


	// DMANow(3, gamebgTiles, &CHARBLOCK[0], gamebgTilesLen/2);
	// DMANow(3, gamebgMap, &SCREENBLOCK[30], gamebgMapLen/2);
    DMANow(3, cavebgTiles, &CHARBLOCK[2], cavebgTilesLen/2);
	DMANow(3, cavebgMap, &SCREENBLOCK[26], cavebgMapLen/2);


	DMANow(3, spritesTiles, &CHARBLOCK[4], spritesTilesLen/2);
	DMANow(3, spritesPal, SPRITEPALETTE, spritesPalLen/2);

    // playSoundA(POWER_EXO_8_bits,POWER_EXO_8_BITSLEN,POWER_EXO_8_BITSFREQ, 1);
    playSoundA(likey,LIKEYLEN,LIKEYFREQ, 1);

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
    hOff = 0;
    vOff = SCREENHEIGHT - 80 - player.groundRow;
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;


    if (BUTTON_PRESSED(BUTTON_START)) {
        // REG_DISPCTL ^= BG0_ENABLE;
        pauseSound();
        goToPause();
    }
    else if (/*youLose == 1 || */lives == 0 || BUTTON_PRESSED(BUTTON_SELECT))
        goToWin();


}

void goToPause() {
	hideSprites();
	DMANow(3, shadowOAM, OAM, 128*4);

    REG_DISPCTL = MODE3 | BG2_ENABLE;
    drawFullscreenImage3(pausebgBitmap);

	// loadPalette(pausebgPal);
    //
	// DMANow(3, pausebgTiles, &CHARBLOCK[1], pausebgTilesLen/2);
	// DMANow(3, pausebgMap, &SCREENBLOCK[28], pausebgMapLen/2);

    playSoundB(pauseaudio,PAUSEAUDIOLEN,PAUSEAUDIOFREQ, 1);

    // REG_DISPCTL ^= BG2_ENABLE;
    // REG_DISPCTL ^= BG1_ENABLE;

    waitForVBlank();

    state = PAUSE;
}

void pause() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        // goToGame();
        REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE;
        DMANow(3, shadowOAM, OAM, 128*4);
        // REG_DISPCTL ^= BG2_ENABLE;
        REG_DISPCTL ^= BG1_ENABLE;
        REG_DISPCTL ^= BG0_ENABLE;
		loadPalette(cavebgPal);

        DMANow(3, gametopbgTiles, &CHARBLOCK[1], gametopbgTilesLen/2);
        DMANow(3, gametopbgMap, &SCREENBLOCK[28], gametopbgMapLen/2);

        DMANow(3, gamegroundbgTiles, &CHARBLOCK[0], gamegroundbgTilesLen/2);
        DMANow(3, gamegroundbgMap, &SCREENBLOCK[30], gamegroundbgMapLen/2);

		DMANow(3, cavebgTiles, &CHARBLOCK[2], cavebgTilesLen/2);
		DMANow(3, cavebgMap, &SCREENBLOCK[26], cavebgMapLen/2);

		DMANow(3, spritesTiles, &CHARBLOCK[4], spritesTilesLen/2);
		DMANow(3, spritesPal, SPRITEPALETTE, spritesPalLen/2);

        stopSound();
        unpauseSound();
		state = GAME;
	} else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL = MODE0 | SPRITE_ENABLE;
        DMANow(3, shadowOAM, OAM, 128*4);
        REG_DISPCTL ^= BG1_ENABLE;
        REG_DISPCTL ^= BG0_ENABLE;
        stopSound();
        playSoundA(knocknock,KNOCKNOCKLEN,KNOCKNOCKFREQ, 1);
        goToStart();
    }
}

void goToWin() {
	// REG_DISPCTL ^= BG0_ENABLE;
	hideSprites();
    if (totalScore > highScore) {
        highScore = totalScore;
    }

    shadowOAM[52].attr0 = 29 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[52].attr1 = 43 | ATTR1_TINY;
    shadowOAM[52].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(13,highScore / 100);

    shadowOAM[53].attr0 = 29 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[53].attr1 = 48 | ATTR1_TINY;
    shadowOAM[53].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(13,(highScore / 10) % 10);

    shadowOAM[54].attr0 = 29 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[54].attr1 = 53 | ATTR1_TINY;
    shadowOAM[54].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(13,highScore % 10);

    shadowOAM[49].attr0 = 75 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[49].attr1 = 43 | ATTR1_TINY;
    shadowOAM[49].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(13,totalScore / 100);

    shadowOAM[50].attr0 = 75 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[50].attr1 = 48 | ATTR1_TINY;
    shadowOAM[50].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(13,(totalScore / 10) % 10);

    shadowOAM[51].attr0 = 75 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[51].attr1 = 53 | ATTR1_TINY;
    shadowOAM[51].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(13,totalScore % 10);
	DMANow(3, shadowOAM, OAM, 128*4);
		loadPalette(winbgPal);

		DMANow(3, winbgTiles, &CHARBLOCK[2], winbgTilesLen/2);
		DMANow(3, winbgMap, &SCREENBLOCK[26], winbgMapLen/2);
		hideSprites();

        REG_DISPCTL ^= BG0_ENABLE;
        REG_DISPCTL ^= BG1_ENABLE;

    playSoundA(cheerup,CHEERUPLEN,CHEERUPFREQ, 1);

    waitForVBlank();


    state = WIN;
}

void win() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
		REG_DISPCTL ^= BG1_ENABLE;
        REG_DISPCTL ^= BG0_ENABLE;
        REG_DISPCTL ^= BG2_ENABLE;
        stopSound();
        playSoundA(knocknock,KNOCKNOCKLEN,KNOCKNOCKFREQ, 1);
        goToStart();
	}
}

// void goToLose() {
// 	hideSprites();
// 	DMANow(3, shadowOAM, OAM, 128*4);
// 	// REG_DISPCTL ^= BG0_ENABLE;
// 		loadPalette(losebgPal);
//
// 		DMANow(3, losebgTiles, &CHARBLOCK[1], losebgTilesLen/2);
// 		DMANow(3, losebgMap, &SCREENBLOCK[28], losebgMapLen/2);
//
// 		hideSprites();
//
//         REG_DISPCTL ^= BG1_ENABLE;
//         REG_DISPCTL ^= BG2_ENABLE;
//
//         playSoundA(tt,TTLEN,TTFREQ, 1);
//     waitForVBlank();
//
//
//     state = LOSE;
// }
//
// void lose() {
//
//
//     waitForVBlank();
//
//     if (BUTTON_PRESSED(BUTTON_START)) {
// 		REG_DISPCTL ^= BG1_ENABLE;
//         stopSound();
//         playSoundA(knocknock,KNOCKNOCKLEN,KNOCKNOCKFREQ, 1);
// 		goToStart();
// 	}
// }
