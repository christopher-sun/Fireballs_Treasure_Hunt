
//{{BLOCK(startbg)

//======================================================================
//
//	startbg, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 307 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 9824 + 4096 = 14432
//
//	Time-stamp: 2017-12-05, 19:11:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTBG_H
#define GRIT_STARTBG_H

#define startbgTilesLen 9824
extern const unsigned short startbgTiles[4912];

#define startbgMapLen 4096
extern const unsigned short startbgMap[2048];

#define startbgPalLen 512
extern const unsigned short startbgPal[256];

#endif // GRIT_STARTBG_H

//}}BLOCK(startbg)
