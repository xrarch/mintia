struct MmZoneHeader
	4 Zone
	4 FreeListHead
endstruct

struct MmZoneFreeBlock
	4 NextFree
endstruct

extern MmZoneInitialize { blocksize blockcount zone zoneheader -- ok }

extern MmZoneAllocate { zoneheader -- ptr ok }
extern MmZoneFree { ptr zoneheader -- }