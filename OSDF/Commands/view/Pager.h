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

extern TermSetScrollMargin { top bottom -- }
extern TermResetScrollMargin { -- }

extern TermScrollDown { -- }
extern TermScrollUp { -- }

externptr TermWidth
externptr TermHeight