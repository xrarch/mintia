struct LdrMemoryDescriptor
	4 Next

	4 Type

	4 StartPFN
	4 Pages
endstruct

const OSLOADERMEM_FREE        1 // not used by anything
const OSLOADERMEM_RECLAIMABLE 2 // used by firmware and bootloader
const OSLOADERMEM_USED        3 // needed by OS at runtime
const OSLOADERMEM_DEBUGDATA   4 // needed by debugger at runtime

const LOADERMAJOR 3
const LOADERMINOR 0

const BOOTFBFORMAT_AB5G5R5 1