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

struct Piece
	4 Prev
	4 Next
	4 Flags
	4 Offset
	4 Length
endstruct

struct Buffer
	4 OriginalBuffer
	4 OriginalBufferSize

	4 AddBuffer
	4 AddOffset
	4 AddSize

	4 Size

	4 PieceListHead
	4 PieceListTail

	4 CachedPiece
	4 CachedPieceOffset

	Piece_SIZEOF OriginalPiece
endstruct

const PIECEFLAG_ADDBUFFER 1

extern BufferCreate { -- buffer ok }
extern BufferDelete { buffer -- }

extern BufferPopulate { filehandle buffer -- ok }

extern BufferFindOffset { offset buffer -- ptr offsetinpiece piece ok }
extern BufferGetPointer { offset piece buffer -- ptr }

// screen

const SCREENMARGIN 2 // how many rows to leave for UI

struct ScreenLine
	4 StartPiece
	4 OffsetInPiece
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

// draw

extern DrawAll { -- }