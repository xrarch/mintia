// editor

extern Editor { -- }

externptr EditorFileName
externptr EditorFileHandle
externptr EditorFileAccess

// terminal control

extern TermInit { -- }

extern TermSetMode { -- }
extern TermResetMode { -- }

extern TermSetCursorPosition { x y -- }
extern TermSetCursorHidden { hidden -- }

extern TermClearAll { -- }
extern TermClearLineAll { -- }
extern TermClearLine { -- }

extern TermFinishDrawing { -- }

externptr TermWidth
externptr TermHeight

// buffer

extern BufferCreate { -- buffer ok }
extern BufferDelete { buffer -- }

extern BufferPopulate { filehandle buffer -- ok }