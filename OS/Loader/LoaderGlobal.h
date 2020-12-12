const LOADERMAJOR 1
const LOADERMINOR 0

struct LoaderInfo
	4 Major
	4 Minor
	4 InitMemBmp
	4 InitMemBmpSz
	4 DLLListHead
	4 ResourceListHead
	4 ArgsBuffer
endstruct

struct LoaderResource
	64 Name
	4 Size
	4 Data
endstruct