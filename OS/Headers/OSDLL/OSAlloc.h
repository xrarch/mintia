extern OSHeapAllocate { bytes -- ptr ok }
extern OSHeapFree { ptr -- }

extern OSHeapQuery { query -- }

struct OSHeapInformation
	4 UsedInternally
	4 UsedExternally

	20 Reserved
endstruct