extern IOPartitionTableRead { devobject -- partitiontable ok }

fnptr IOPartitionDetectFunction { devobject -- partitiontable ok }

struct IOPartitionSupportTable
	4 Name
	4 Detect
	4 Reserved1
	4 Reserved2
endstruct

const IOVOLUMELABELMAX 64

struct IOPartitionTable
	4 Format
	IOVOLUMELABELMAX Label
	4 PartitionCount
endstruct

struct IOPartitionEntry
	IOVOLUMELABELMAX Label
	4 BlockOffset
	4 SizeInBlocks
	4 ID
endstruct