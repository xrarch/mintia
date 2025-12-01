fnptr FDriverInitEarly { arg1 arg2 arg3 arg4 -- ok }
fnptr FDriverInit { stage -- ok }

extern HALDriverInit { stage ldrinfo -- }

const STAGE_PRETASKING 1
const STAGE_THREAD     2