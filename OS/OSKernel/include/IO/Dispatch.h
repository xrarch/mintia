fnptr IODispatchOpenFunction { access fileobject -- ok }
fnptr IODispatchCloseFunction { access fileobject -- ok }
fnptr IODispatchIOControlFunction { arg2 arg1 access fcb lastmode -- ret ok }
fnptr IODispatchReadFunction { timeout flags kflags offset mdl fcb -- ok }
fnptr IODispatchWriteFunction { flags kflags offset mdl fcb -- ok }
fnptr IODispatchUnlinkFunction { name dirfcb -- ok }
fnptr IODispatchParseFunction { flags path initialfcb process -- reparsepath object ok }
fnptr IODispatchDeleteFunction { fcb -- }
fnptr IODispatchDeleteObjectFunction { object -- ok }
fnptr IODispatchPokeFunction { poketype object -- }
fnptr IODispatchSetSecurityFunction { uid gid permissions object -- ok }
fnptr IODispatchRenameFunction { srcname srcfcb destname destfcb -- ok }
fnptr IODispatchWriteBlockFunction { blockno buffer devobject -- ok }
fnptr IODispatchReadBlockFunction { blockno buffer devobject -- ok }
fnptr IODispatchTruncateFunction { newsize zero flags fcb -- ok }
fnptr IODispatchReadDirectoryFunction { seek dirent fcb -- nextseek ok }
fnptr IODispatchGetPageAddressFunction { offset fcb -- phyaddr ok }
fnptr IODispatchDeleteDeviceObjectFunction { object -- }
fnptr IODispatchReclaimFCBFunction { fcb -- reclaimed }
fnptr IODispatchCancelFunction { mdl -- }
fnptr IODispatchPinMetadataFunction { fcb -- ok }

struct IODispatchTable
	4 Open
	4 Close
	4 IOControl
	4 Read
	4 Write
	4 Unlink
	4 Parse
	4 Delete
	4 Flush
	4 DeleteObject
	4 Poke
	4 SetSecurity
	4 Rename
	4 ReadBlock
	4 WriteBlock
	4 Truncate
	4 ReadDirectory
	4 GetPageAddress
	4 DeleteDeviceObject
	4 ReclaimFCB
	4 Cancel
	4 PinMetadata
	4 Reserved7
endstruct