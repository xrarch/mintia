struct ExBitmapHeader
	4 Data
	4 SizeInBits
endstruct

extern ExBitmapInitialize { sizeinbits data header -- }
extern ExBitmapClear { header -- }
extern ExBitmapFindRun { hint runlength header -- offset ok }
extern ExBitmapSetBits { runlength index header -- }
extern ExBitmapClearBits { runlength index header -- }