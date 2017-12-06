
//{{BLOCK(instructions4bg)

//======================================================================
//
//	instructions4bg, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 112 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 3584 + 4096 = 8192
//
//	Time-stamp: 2017-12-05, 15:49:24
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONS4BG_H
#define GRIT_INSTRUCTIONS4BG_H

#define instructions4bgTilesLen 3584
extern const unsigned short instructions4bgTiles[1792];

#define instructions4bgMapLen 4096
extern const unsigned short instructions4bgMap[2048];

#define instructions4bgPalLen 512
extern const unsigned short instructions4bgPal[256];

#endif // GRIT_INSTRUCTIONS4BG_H

//}}BLOCK(instructions4bg)
