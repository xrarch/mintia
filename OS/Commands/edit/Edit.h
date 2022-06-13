// editor

extern Editor { -- }

externptr EditorFileName
externptr EditorFileHandle
externptr EditorFileAccess
externptr EditorBuffer

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

extern TermInvertColor { -- }
extern TermResetColor { -- }

externptr TermWidth
externptr TermHeight

// buffer

struct Buffer
	4 VirtualBuffer
	4 VirtualBufferSize

	4 GapOffset
	4 GapSize

	4 Size
endstruct

extern BufferCreate { -- buffer ok }

extern BufferPopulate { filehandle buffer -- ok }

extern BufferGetChar { location buffer -- char ok }

// screen

const SCREENROW 0
const UINORMAL 0

const SCREENMARGIN 2 // how many rows to leave for UI

struct ScreenLine
	4 Offset
	4 Length
endstruct

externptr ScreenLineTable
externptr ScreenHeight
externptr ScreenCursorX
externptr ScreenCursorY
externptr ScreenCursorPosition
externptr ScreenStartPosition
externptr ScreenLinePosition

extern ScreenInit { -- }

extern ScreenNavigateX { x -- }
extern ScreenNavigateY { y -- }

// draw

extern DrawAll { -- }

extern DrawScreen { startrow endrow -- }