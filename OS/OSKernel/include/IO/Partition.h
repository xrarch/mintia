extern IOPartitionTableRead { devobject -- partitiontable ok }

fnptr IOPartitionDetectFunction { devobject -- partitiontable ok }

struct IOPartitionSupportTable
	4 Name
	4 Detect
	4 Reserved1
	4 Reserved2
endstruct

const IOVOLUMELABELMAX 64

// do NOT change the size of this
struct IOPartitionTable
	4 Format
	IOVOLUMELABELMAX Label
	4 PartitionCount
	4 Reserved1
	4 Reserved2
	4 Reserved3
endstruct

// do NOT change the size of this
struct IOPartitionEntry
	IOVOLUMELABELMAX Label
	4 BlockOffset
	4 SizeInBlocks
	4 ID
	4 Reserved1
	4 Reserved2
	4 Reserved3
endstruct