extern ArgsInit { argp -- }
extern ArgsValue { arg -- out }
extern ArgsCheck { arg -- present }

extern LoaderPanic { ... fmt -- }

extern AFSInit { -- }
extern AFSExit { -- }
extern AFSMount { dev -- ok }
extern AFSRead { buf len seek ino -- bytes }
extern AFSPath { path -- ino }
extern AFSFreeINode { ino -- }

extern MemInit { -- }

extern LOFFLoad { path -- sz entry }

externptr LoaderTotalRAM
externptr AFSDevice

struct AFSSuperblock
	4 Version
	4 Magic
	4 Dirty
	4 NumReservedBlocks
	4 FATStart
	4 FATSize
	4 IStart
	4 ICount
	4 DataStart
	4 DataSize
endstruct

struct AFSDirEnt
	4 INum
	60 Name
endstruct

struct AFSINode
	4 Type
	4 Permissions
	4 UID
	4 Reserved1
	4 Timestamp
	4 StartBlock
	4 Reserved2
	4 Size
endstruct