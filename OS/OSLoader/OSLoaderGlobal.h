struct LdrMemoryDescriptor
	4 Next

	4 Type

	4 StartPFN
	4 Pages
endstruct

const OSLOADERMDESC_FREE        1 // not used by anything
const OSLOADERMDESC_RECLAIMABLE 2 // used by firmware and bootloader
const OSLOADERMDESC_USED        3 // needed by OS at runtime

const LOADERMAJOR 3
const LOADERMINOR 0

const BOOTFBFORMAT_AB5G5R5 1