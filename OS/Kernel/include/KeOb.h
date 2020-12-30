struct KeObType
	4 Name

	4 MethodsCount
	4 MethodsList
endstruct

struct KeObHeader
	4 Name
	4 Directory
	4 Type
	4 AccessMode
	4 NextOfType
endstruct

struct KeObMethod
	4 Name
	4 Func
endstruct

const METHODOPEN 1
const METHODCLOSE 2
const METHODQUERY 3

fnptr KeObMethodQuery { path -- }