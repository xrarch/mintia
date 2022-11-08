fnptr OSSignalHandler { context signum -- }

const OSSIGNALACTION_DEFAULT 0
const OSSIGNALACTION_IGNORE  1

const OSSIGNAL_NONE   0
const OSSIGNAL_HUP    1
const OSSIGNAL_INT    2
const OSSIGNAL_QUIT   3
const OSSIGNAL_ILL    4
const OSSIGNAL_TRAP   5
const OSSIGNAL_ABRT   6
const OSSIGNAL_EMT    7
const OSSIGNAL_FPE    8
const OSSIGNAL_KILL   9
const OSSIGNAL_BUS    10
const OSSIGNAL_SEGV   11
const OSSIGNAL_SYS    12
const OSSIGNAL_PIPE   13
const OSSIGNAL_ALRM   14
const OSSIGNAL_TERM   15
const OSSIGNAL_URG    16
const OSSIGNAL_STOP   17
const OSSIGNAL_TSTP   18
const OSSIGNAL_CONT   19
const OSSIGNAL_CHLD   20
const OSSIGNAL_TTIN   21
const OSSIGNAL_TTOU   22
const OSSIGNAL_IO     23
const OSSIGNAL_XCPU   24
const OSSIGNAL_XFSZ   25
const OSSIGNAL_VTALRM 26
const OSSIGNAL_PROF   27
const OSSIGNAL_WINCH  28
const OSSIGNAL_INFO   29
const OSSIGNAL_USR1   30
const OSSIGNAL_USR2   31

const OSSIGNALCOUNT 32

extern OSSignalSetDefaults { -- }
extern OSSignalSetAction { action signum -- oldaction }

extern OSSignalGetName { signum -- signame ok }
extern OSSignalGetNumber { signame -- signum ok }