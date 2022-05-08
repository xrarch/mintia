extern HALPlatformMapKernelSwitch { -- asid oldpgtb }
extern HALPlatformMapRestore { asid oldpgtb -- }

externptr HALPlatformKernelPageDirectory

const KERNELSPACE   0x80000000
const POOLSPACE     0xB8000000
const IDENTITYSPACE 0xC0000000

const IDENTITYSPACEMASK (IDENTITYSPACE ~)

const PAGESIZE  4096
const PAGEOFFSETMASK (PAGESIZE 1 -)
const PAGENUMBERMASK (PAGEOFFSETMASK ~)
const PAGESHIFT 12
const PDSHIFT   22

const POOLSIZE  0x800000
const POOLPAGES (POOLSIZE PAGESHIFT >>)