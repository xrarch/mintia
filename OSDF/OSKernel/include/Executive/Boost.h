// default boost values.

const IOBOOSTSERIAL   2
const IOBOOSTDISK     1
const IOBOOSTKEYBOARD 6
const IOBOOSTMOUSE    6
const IOBOOSTCONHOST  6
const IOBOOSTCONSOLE  IOBOOSTSERIAL
const IOBOOSTPIPE     1

// gives the first thread of a process a 2-quanta advantage, so that
// interactive commands (i.e. ls, ps) feel responsive even while there
// is a large quantity of background compute-bound activity.

const KEBOOSTINITIAL  2