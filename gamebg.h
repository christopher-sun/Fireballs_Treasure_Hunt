
//{{BLOCK(gamebg)

//======================================================================
//
//	gamebg, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 24 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 768 + 4096 = 5376
//
//	Time-stamp: 2017-11-29, 14:16:18
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBG_H
#define GRIT_GAMEBG_H

#define gamebgTilesLen 768
extern const unsigned short gamebgTiles[384];

#define gamebgMapLen 4096
extern const unsigned short gamebgMap[2048];

#define gamebgPalLen 512
extern const unsigned short gamebgPal[256];

#endif // GRIT_GAMEBG_H

//}}BLOCK(gamebg)
