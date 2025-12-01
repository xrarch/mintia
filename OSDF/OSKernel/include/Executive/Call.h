extern ExCallGetString { max string -- buf ok }
extern ExCallFreeString { buf -- }

extern ExCallGetUserBuffer { lockforwrite length vaddr -- buf mdl ok }
extern ExCallFreeUserBuffer { mdl -- }

externptr ExFaultStatuses