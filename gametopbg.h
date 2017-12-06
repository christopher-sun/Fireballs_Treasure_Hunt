
//{{BLOCK(gametopbg)

//======================================================================
//
//	gametopbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 130 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4160 + 2048 = 6720
//
//	Time-stamp: 2017-12-04, 22:15:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMETOPBG_H
#define GRIT_GAMETOPBG_H

#define gametopbgTilesLen 4160
extern const unsigned short gametopbgTiles[2080];

#define gametopbgMapLen 2048
extern const unsigned short gametopbgMap[1024];

#define gametopbgPalLen 512
extern const unsigned short gametopbgPal[256];

#endif // GRIT_GAMETOPBG_H

//}}BLOCK(gametopbg)
