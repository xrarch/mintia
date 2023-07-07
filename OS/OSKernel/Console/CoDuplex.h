struct CoDuplexBuffer
	4 Buffer
	4 Size
	4 ReadIndex
	4 WriteIndex
	4 RemainingSpace

	4 UserBuffer
	4 UserBufferIndex
	4 UserBufferLength
endstruct

struct CoDuplex
	CoConsoleHeader_SIZEOF ConsoleHeader

	// the buffers are named for their perspective to the client in a PTY
	// set-up.

	CoDuplexBuffer_SIZEOF ReceiveBuffer  // read by client, written by server
	CoDuplexBuffer_SIZEOF TransmitBuffer // written by client, read by server

	KeMutex_SIZEOF Mutex // only used if paged buffers, otherwise IPL sync

	4 Paged
	4 QuotaBlock

	4 Flags
	4 InternalFlags

	4 Disconnected

	4 ServerFCB

	4 StoppedQueueListHead

	4 ServerReadListHead
	4 ServerReadListTail

	4 ServerWriteListHead
	4 ServerWriteListTail

	4 ClientReadListHead
	4 ClientReadListTail

	4 ClientWriteListHead
	4 ClientWriteListTail

	4 ServerBoost
	4 ClientBoost

	4 Context

	4 TXFunc
	4 FlushFunc
endstruct

const DONE_NORMAL 1
const DONE_CTRLD  2
const DONE_LF     4

const REQFLAG_WRITE     1
const REQFLAG_SERVER    2
const REQFLAG_RETURNANY 4

const DUPLEXFLAG_PENDING_LF 0x80000000
const DUPLEXFLAG_STOPPED    0x40000000

extern CoDuplexRead { iopl -- done ok }
extern CoDuplexWrite { iopl -- done ok }

extern CoDuplexIOControl { arg2 arg1 access fcb lastmode -- ret ok }
extern CoDuplexCancel { iop -- ok }

extern CoDuplexServerRead { iopl -- ok }
extern CoDuplexServerWriteRaw { iopl -- ok }
extern CoDuplexServerWriteCooked { iopl -- ok }

extern CoDuplexClientRead { iopl -- ok }
extern CoDuplexClientWrite { iopl -- ok }

extern CoDuplexEnqueueRequest { lengthdone flags iopl -- }

extern CoDuplexCookedCopy { dest src sz ctrld -- bytecnt done }
extern CoDuplexCookedCopyClient { dest src maxdest maxsrc duplex -- bufread bytecnt }

extern CoDuplexLock { duplex alertable -- ipl ok }
extern CoDuplexUnlock { ipl duplex -- }