// needs Kernel.h

struct ExRingBuffer
	4 Size
	4 BufferData
	4 ReadPointer
	4 WritePointer
	4 SynchIPL
	4 ValueSizeLog
	4 QuotaBlock

	KeEvent_SIZEOF WriterEvent
	KeEvent_SIZEOF ReaderEvent
endstruct

const EXRINGFULL     0
const EXRINGINSERTED 1

const EXRINGEMPTY    0
const EXRINGREAD     1

const EXRINGDONTWAIT 0
const EXRINGWAIT     1
const EXRINGWITUALRT 2

extern ExRingBufferWakeReader { priboost ringbuffer -- }
extern ExRingBufferWakeWriter { priboost ringbuffer -- }

extern ExRingBufferCreate { sizelog valuesizelog synchipl quotablock -- ringbuffer ok }
extern ExRingBufferDelete { ringbuffer -- }

extern ExRingBufferWriteValue { value overwrite timeout lastmode waitonfull ringbuffer -- valueptr ok }
extern ExRingBufferReadValue { timeout lastmode waitonempty ringbuffer -- value valueptr ok }

extern ExRingBufferRubout { ringbuffer -- value valueptr ok }
extern ExRingBufferPutBack { value ringbuffer -- valueptr ok }