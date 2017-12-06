
//{{BLOCK(cavebg)

//======================================================================
//
//	cavebg, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 456 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 14592 + 4096 = 19200
//
//	Time-stamp: 2017-12-04, 23:21:34
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CAVEBG_H
#define GRIT_CAVEBG_H

#define cavebgTilesLen 14592
extern const unsigned short cavebgTiles[7296];

#define cavebgMapLen 4096
extern const unsigned short cavebgMap[2048];

#define cavebgPalLen 512
extern const unsigned short cavebgPal[256];

#endif // GRIT_CAVEBG_H

//}}BLOCK(cavebg)
