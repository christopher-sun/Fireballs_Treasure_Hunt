
//{{BLOCK(gametopbg)

//======================================================================
//
//	gametopbg, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 64 + 4096 = 4672
//
//	Time-stamp: 2017-11-29, 14:17:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMETOPBG_H
#define GRIT_GAMETOPBG_H

#define gametopbgTilesLen 64
extern const unsigned short gametopbgTiles[32];

#define gametopbgMapLen 4096
extern const unsigned short gametopbgMap[2048];

#define gametopbgPalLen 512
extern const unsigned short gametopbgPal[256];

#endif // GRIT_GAMETOPBG_H

//}}BLOCK(gametopbg)
