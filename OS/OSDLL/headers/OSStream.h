// lower 4 bits of flags contain buffering type
const OSSTREAMFLAG_BUFFERTYPEMASK 15

const OSSTREAMFLAG_DIRTY 16

const OSSTREAMTYPE_NOBUFFER   1
const OSSTREAMTYPE_LINEBUFFER 2
const OSSTREAMTYPE_FULLBUFFER 3

const OSSTREAMLINEBUFFERLENGTH 80

struct OSStream
	4 Flags
	4 FileHandle
	4 BufferOrListHead

// only applicable in line-buffering

	4 BufferedLength
endstruct

const OSSTREAMHANDLEFLAG 1

extern OSStreamOpen { streamflags flags access path ftype -- stream ok }
extern OSStreamObjectCreate { flags filehandle -- stream ok }
extern OSStreamClose { stream -- ok }
extern OSStreamGetFileHandle { stream -- filehandle }
extern OSStreamTruncate { newsize growing stream -- oldsize ok }
extern OSStreamSeek { offset stream mode -- newoffset ok }
extern OSStreamFlush { purge stream -- ok }
extern OSStreamRead { timeout flags length buffer stream -- bytesread ok }
extern OSStreamWrite { flags length buffer stream -- byteswritten ok }
extern OSStreamWriteCharacter { c stream -- ok }