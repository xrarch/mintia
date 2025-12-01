struct MmZoneHeader
	4 ChunkListHead
	4 FreeListHead

	4 BlockSize
endstruct

struct MmZoneChunkHeader
	4 Next
endstruct

const MMZONEOVERHEAD (MmZoneChunkHeader_SIZEOF)

extern MmZoneInitialize { bytes chunk blocksize zoneheader -- }

extern MmZoneExtend { bytes chunk zoneheader -- }
extern MmZoneEmpty { zoneheader -- }

extern MmZoneAllocate { zoneheader -- ptr ok }
extern MmZoneFree { ptr zoneheader -- }