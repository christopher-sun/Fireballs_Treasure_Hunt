
//{{BLOCK(gamebg)

//======================================================================
//
//	gamebg, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 48 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 1536 + 4096 = 6144
//
//	Time-stamp: 2017-12-04, 22:51:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBG_H
#define GRIT_GAMEBG_H

#define gamebgTilesLen 1536
extern const unsigned short gamebgTiles[768];

#define gamebgMapLen 4096
extern const unsigned short gamebgMap[2048];

#define gamebgPalLen 512
extern const unsigned short gamebgPal[256];

#endif // GRIT_GAMEBG_H

//}}BLOCK(gamebg)
