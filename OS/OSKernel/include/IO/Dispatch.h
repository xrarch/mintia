fnptr IODispatchOpenFunction { object -- ok }

fnptr IODispatchCloseFunction { object -- ok }

fnptr IODispatchIOControlFunction { arg1 arg2 arg3 arg4 object -- ok }

fnptr IODispatchReadFunction { flags length bufsize offset buffer object lastmode -- bytesread ok }

fnptr IODispatchWriteFunction { flags length bufsize offset buffer object lastmode -- byteswritten ok }

fnptr IODispatchParseFunction { flags path initialobject process -- reparsepath object ok }

fnptr IODispatchDeleteFunction { object -- ok }

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
	4 Reserved1
	4 Reserved2
	4 Reserved3
	4 Reserved4
	4 Reserved5
	4 Reserved6
	4 Reserved7
	4 Reserved8
	4 Reserved9
	4 Reserved10
endstruct