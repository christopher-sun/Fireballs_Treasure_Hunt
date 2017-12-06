// Player Struct
// typedef struct {
// 	int row;
// 	int col;
// 	int cdel;
// 	int height;
// 	int width;
// 	unsigned char color;
// 	int bulletTimer;
// } PLAYER;

// Bullet Struct
typedef struct {
	int height;
	int width;
	int row;
	int col;
	int rdel;
	int cdel;
	int active;
	int aniCounter;
	int curFrame;
	int numFrames;
	int treasure;
	int superBullet;
} BULLET;

// Enemy Struct
typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
	int aniCounter;
	int curFrame;
	int numFrames;
	int dying;
	int actuallyDie;
} ENEMY;

typedef struct {
	int groundRow;
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
	int bulletTimer;
	int cDirection;
	int active;
	int number;
	int onScreen;
	int superMode;
	int timeDrop;
	int dying;
} ANISPRITE;

// Constants
#define BULLETCOUNT 3
#define ENEMYCOUNT 5
#define ENEMYBULLETCOUNT 5
#define TREASURECOUNT 5
#define SUPERBULLETCOUNT 5
#define SPECIALCOUNT 1

// Variables
// extern PLAYER player;
extern ANISPRITE player;
extern BULLET bullets[BULLETCOUNT];
extern ENEMY enemys[ENEMYCOUNT];
extern int enemysRemaining;
extern int enemyBulletTimer;
extern ANISPRITE enemy;
// extern int youLose;
extern int lives;
extern int scoreCol1;
extern int scoreCol2;
extern BULLET superBullets[SUPERBULLETCOUNT];
extern BULLET enemyBullets[ENEMYBULLETCOUNT];
extern ANISPRITE special;
extern ANISPRITE specials[SPECIALCOUNT];
extern int superFired;
extern int specialCollected;
extern int specialActive;
extern int tired;
extern int groundLevel;
extern int totalScore;

// Custom Game Colors
#define NUMCOLORS 6
// This does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];

// Prototypes
void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void drawPlayer();
void initBullets();
void fireBullet();
void updateBullet(BULLET *);
void drawBullet();
void initEnemys();
void updateEnemy(ENEMY *);
void drawEnemy();
void hideSprites();
void updateEnemyBullet(BULLET *);
void drawEnemyBullet();
void fireEnemyBullet();
void drawScore();
void drawLives();
void fireEnemy();
void initTreasure();
void updateTreasure(ANISPRITE *);
void drawTreasure();
void fireTreasure(int);
void initSuperBullets();
void initSpecial();
void updateSpecial(ANISPRITE *);
void drawSpecial();
void fireSpecial(int);

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void muteSound();
void unmuteSound();
void stopSound();

void setupInterrupts();
void interruptHandler();

void drawPowerReady();
void drawBulletCounter();
