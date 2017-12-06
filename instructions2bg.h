
//{{BLOCK(instructions2bg)

//======================================================================
//
//	instructions2bg, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 277 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 8864 + 4096 = 13472
//
//	Time-stamp: 2017-12-05, 15:16:20
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONS2BG_H
#define GRIT_INSTRUCTIONS2BG_H

#define instructions2bgTilesLen 8864
extern const unsigned short instructions2bgTiles[4432];

#define instructions2bgMapLen 4096
extern const unsigned short instructions2bgMap[2048];

#define instructions2bgPalLen 512
extern const unsigned short instructions2bgPal[256];

#endif // GRIT_INSTRUCTIONS2BG_H

//}}BLOCK(instructions2bg)
