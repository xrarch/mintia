fnptr IODispatchOpenFunction { access fileobject -- ok }
fnptr IODispatchCloseFunction { access fileobject -- ok }
fnptr IODispatchIOControlFunction { arg2 arg1 access fcb lastmode -- ret ok }
fnptr IODispatchReadFunction { timeout flags kflags offset mdl fcb -- ok }
fnptr IODispatchWriteFunction { flags kflags offset mdl fcb -- ok }
fnptr IODispatchUnlinkFunction { name dirfcb -- ok }
fnptr IODispatchParseFunction { flags path initialfcb process -- reparsepath object ok }
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
fnptr IODispatchCancelFunction { mdl -- }

fnptr IODispatchEnqueueIOPFunction { iopl -- done ok }

struct IODispatchTable
	4 Open                    // 0
	4 Close                   // 1
	4 IOControl               // 2
	4 Read                    // 3
	4 Write                   // 4
	4 Unlink                  // 5
	4 Parse                   // 6
	4 Reserved4               // 7
	4 Flush                   // 8
	4 DeleteObject            // 9
	4 Poke                    // 10
	4 SetSecurity             // 11
	4 Rename                  // 12
	4 ReadBlock               // 13
	4 WriteBlock              // 14
	4 Truncate                // 15
	4 ReadDirectory           // 16
	4 GetPageAddress          // 17
	4 DeleteDeviceObject      // 18
	4 Reserved5               // 19
	4 Cancel                  // 20
	4 IOPRead                 // 21
	4 IOPWrite                // 22
endstruct

const IODISPATCH_READ  21
const IODISPATCH_WRITE 22