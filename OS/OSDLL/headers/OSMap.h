const OSPAGESIZE 4096
const OSPAGEOFFSETMASK (OSPAGESIZE 1 -)
const OSPAGENUMBERMASK (OSPAGEOFFSETMASK ~)
const OSPAGESHIFT 12

const OSPEB     0x7FF00000
const OSPEBSIZE OSPAGESIZE

const OSDLLHEAD 0x7FE00000

const USTACKS   0x7FD00000 // preferred, to keep them out of the way
const USTACKSZ  16384

const HEAPSTART 0x70000000

const PAGEACCESS_EXEC      1
const PAGEACCESS_WRITE     2
const PAGEACCESS_READ      4
const PAGEACCESS_WRITECOPY 8
const PAGEACCESS_NONCACHED 16

const PAGEACCESS_ALL (PAGEACCESS_EXEC PAGEACCESS_WRITE | PAGEACCESS_READ |)

const OSMAPFLAG_FIXEDADDRESS 1