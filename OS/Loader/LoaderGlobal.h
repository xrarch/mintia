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
	4 KeMain
endstruct

struct BootResource
	4 Next
	4 Jettison
	64 Name
	4 Size
	4 Data
endstruct