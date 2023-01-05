OUTPUTFILE := OSLoader.a3x

PRELIBS  := LX/limn2600/rta3x/_boot.o
LIBS     := L/rta3x/rta3x.o
MOVEEXPR := text=0x20400,data=text+text_size,bss=data+data_size
MKBINARY := yes