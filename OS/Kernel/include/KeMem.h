struct PFDBE
	4 R1
	4 PFN
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
	4 R8
endstruct

struct PFDBEFree
	4 Next
	4 PFN
	4 R2
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
endstruct

externptr KeMemPageFrameDB

externptr KeMemPageFreeListHead