
//{{BLOCK(losebg)

//======================================================================
//
//	losebg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 26 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 832 + 2048 = 3392
//
//	Time-stamp: 2017-11-14, 01:08:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSEBG_H
#define GRIT_LOSEBG_H

#define losebgTilesLen 832
extern const unsigned short losebgTiles[416];

#define losebgMapLen 2048
extern const unsigned short losebgMap[1024];

#define losebgPalLen 512
extern const unsigned short losebgPal[256];

#endif // GRIT_LOSEBG_H

//}}BLOCK(losebg)
