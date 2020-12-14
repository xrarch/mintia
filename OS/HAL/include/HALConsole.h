const HCFMAGIC 0x664E4C45

struct HCFHeader
	4 Magic
	4 Width
	4 Height
	12 Reserved
endstruct

extern HALPutc { c -- }
extern HALLog { ... fmt src -- }