
//{{BLOCK(gamebg)

//======================================================================
//
//	gamebg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 46 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1472 + 2048 = 4032
//
//	Time-stamp: 2017-11-14, 00:27:24
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBG_H
#define GRIT_GAMEBG_H

#define gamebgTilesLen 1472
extern const unsigned short gamebgTiles[736];

#define gamebgMapLen 2048
extern const unsigned short gamebgMap[1024];

#define gamebgPalLen 512
extern const unsigned short gamebgPal[256];

#endif // GRIT_GAMEBG_H

//}}BLOCK(gamebg)
