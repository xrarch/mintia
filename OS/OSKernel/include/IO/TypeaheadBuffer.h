struct IOTypeaheadBufferHeader
	4 Paged

	4 Buffer
	4 BufferSize
	4 Entries
	4 ReadIndex
	4 WriteIndex
	4 ValueSizeLog
	4 QuotaBlock

	4 UserBuffer
	4 UserBufferIndex
	4 UserTransferLength
endstruct