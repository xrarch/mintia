#ifdef XR17032

// if you modify below, update the matching name table in OSDLL debug dumper
struct OSContext
	4 t0    4 t1
	4 t2    4 t3
	4 t4    4 t5
	4 a0    4 a1
	4 a2    4 a3
	4 s0    4 s1
	4 s2    4 s3
	4 s4    4 s5
	4 s6    4 s7
	4 s8    4 s9
	4 s10   4 s11
	4 s12   4 s13
	4 s14   4 s15
	4 s16   4 s17
	4 s18

	4 sp
	4 ers
	4 epc
	4 lr

	4 badaddr
endstruct

const OSCONTEXTCOUNT 34

const XR17032_RS_USER 1
const XR17032_RS_INT  2
const XR17032_RS_MMU  4

const XR17032_ERS_USER 256
const XR17032_ERS_INT  512

const XR17032_ERS_KTHREAD (XR17032_RS_INT XR17032_RS_MMU | 8 <<)
const XR17032_ERS_UTHREAD (XR17032_RS_INT XR17032_RS_MMU | XR17032_RS_USER | 8 <<)

#endif

#ifdef FOX32

// if you modify below, update the matching name table in OSDLL debug dumper
struct OSContext
	4 t0    4 t1
	4 t2    4 t3
	4 t4    4 t5
	4 t6
	4 a0    4 a1
	4 a2    4 a3
	4 s0    4 s1
	4 s2    4 s3
	4 s4    4 s5
	4 s6    4 s7
	4 s8    4 s9
	4 s10   4 s11
	4 s12   4 s13
	4 s14   4 s15
	4 s16   4 s17

	4 at

	4 tp

	4 r31
	4 fp

	4 badaddr
	1 eflagsB
	4 epc
	4 sp
endstruct

const OSCONTEXTCOUNT 37

const FOX32_RS_INT  4
const FOX32_RS_USER 8

const FOX32_RS_KTHREAD FOX32_RS_INT
const FOX32_RS_UTHREAD (FOX32_RS_INT FOX32_RS_USER |)

#endif