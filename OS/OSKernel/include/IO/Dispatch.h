fnptr IODispatchOpenFunction { access fileobject -- ok }
fnptr IODispatchCloseFunction { access fileobject -- ok }
fnptr IODispatchIOControlFunction { arg2 arg1 access fcb lastmode -- ret ok }
fnptr IODispatchReadFunction { timeout flags kflags length offset buffer fcb lastmode -- bytesread ok }
fnptr IODispatchWriteFunction { flags kflags length offset buffer fcb lastmode -- byteswritten ok }
fnptr IODispatchParseFunction { flags path initialfcb process -- reparsepath object ok }
fnptr IODispatchDeleteObjectFunction { object -- ok }
fnptr IODispatchWriteBlockFunction { blockno buffer devobject -- ok }
fnptr IODispatchReadBlockFunction { blockno buffer devobject -- ok }
fnptr IODispatchTruncateFunction { newsize growing fcb -- ok }
fnptr IODispatchReadDirectoryFunction { seek dirent fcb -- nextseek ok }
fnptr IODispatchGetPageAddressFunction { offset fcb -- phyaddr ok }
fnptr IODispatchDeleteDeviceObjectFunction { object -- }
fnptr IODispatchReclaimFCBFunction { fcb -- reclaimed }
fnptr IODispatchEnsureBlocksForPage { offset fcb -- ok }

struct IODispatchTable
	4 Open
	4 Close
	4 IOControl
	4 Read
	4 Write
	4 Reserved1
	4 Parse
	4 Reserved2
	4 Flush
	4 DeleteObject
	4 Reserved3
	4 Reserved4
	4 Rename
	4 ReadBlock
	4 WriteBlock
	4 Truncate
	4 ReadDirectory
	4 GetPageAddress
	4 DeleteDeviceObject
	4 ReclaimFCB
	4 EnsureBlocksForPage
	4 Reserved6
	4 Reserved7
endstruct