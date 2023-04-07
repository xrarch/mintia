// A region is a clippable shape that represents a specific "view" of pixels.
// This is the fundamental drawing primitive, i.e., this is the structure
// given (along with texture, x, y, etc) to the graphics driver for drawing
// operations.

struct BmeBox
	2 X1I
	2 X2I
	2 Y1I
	2 Y2I
endstruct

struct BmeRect
	2 XI
	2 YI
	2 WidthI
	2 HeightI
endstruct

struct BmeRegion
	4 Size
	4 BoxCount
	BmeBox_SIZEOF BoundingBox
endstruct