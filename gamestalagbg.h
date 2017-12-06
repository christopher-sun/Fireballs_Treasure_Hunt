
//{{BLOCK(gamestalagbg)

//======================================================================
//
//	gamestalagbg, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 174 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 5568 + 8192 = 14272
//
//	Time-stamp: 2017-12-04, 17:40:42
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESTALAGBG_H
#define GRIT_GAMESTALAGBG_H

#define gamestalagbgTilesLen 5568
extern const unsigned short gamestalagbgTiles[2784];

#define gamestalagbgMapLen 8192
extern const unsigned short gamestalagbgMap[4096];

#define gamestalagbgPalLen 512
extern const unsigned short gamestalagbgPal[256];

#endif // GRIT_GAMESTALAGBG_H

//}}BLOCK(gamestalagbg)
