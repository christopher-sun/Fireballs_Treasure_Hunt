
//{{BLOCK(gamegroundbg)

//======================================================================
//
//	gamegroundbg, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 74 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 2368 + 4096 = 6976
//
//	Time-stamp: 2017-12-04, 23:19:06
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEGROUNDBG_H
#define GRIT_GAMEGROUNDBG_H

#define gamegroundbgTilesLen 2368
extern const unsigned short gamegroundbgTiles[1184];

#define gamegroundbgMapLen 4096
extern const unsigned short gamegroundbgMap[2048];

#define gamegroundbgPalLen 512
extern const unsigned short gamegroundbgPal[256];

#endif // GRIT_GAMEGROUNDBG_H

//}}BLOCK(gamegroundbg)
