fnptr IODispatchOpenFunction { access fileobject -- ok }
fnptr IODispatchCloseFunction { access fileobject -- ok }
fnptr IODispatchIOControlFunction { arg1 arg2 arg3 arg4 fcb -- ok }
fnptr IODispatchReadFunction { timeout flags length bufsize offset buffer fcb lastmode -- bytesread ok }
fnptr IODispatchWriteFunction { flags length bufsize offset buffer fcb lastmode -- byteswritten ok }
fnptr IODispatchParseFunction { flags path initialfcb process -- reparsepath object ok }
fnptr IODispatchDeleteObjectFunction { object -- ok }
fnptr IODispatchWriteBlockFunction { blockno bufsize buffer devobject -- ok }
fnptr IODispatchReadBlockFunction { blockno bufsize buffer devobject -- ok }
fnptr IODispatchTruncateFunction { newsize growing fcb -- ok }
fnptr IODispatchReadDirectoryFunction { seek dirent fcb -- nextseek ok }

struct IODispatchTable
	4 Open
	4 Close
	4 IOControl
	4 Read
	4 Write
	4 SystemControl
	4 Parse
	4 Create
	4 Flush
	4 DeleteObject
	4 SetInformation
	4 GetInformation
	4 Rename
	4 ReadBlock
	4 WriteBlock
	4 Truncate
	4 ReadDirectory
	4 Reserved5
	4 Reserved6
	4 Reserved7
	4 Reserved8
	4 Reserved9
	4 Reserved10
endstruct