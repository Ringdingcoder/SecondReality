.AUTODEPEND

#		*Translator Definitions*
CC = bcc +SD.CFG
TASM = TASM
TLIB = tlib
TLINK = tlink
LIBPATH = ..\..\CPP\LIB
INCLUDEPATH = ..\..\CPP\INCLUDE


#		*Implicit Rules*
.c.obj:
  $(CC) -c {$< }

.cpp.obj:
  $(CC) -c {$< }

#		*List Macros*


EXE_dependencies =  \
 shutdown.obj \
 tweak.obj \
 asmyt.obj \
 disc.obj

#		*Explicit Rules*
sd.exe: sd.cfg $(EXE_dependencies)
  $(TLINK) /x/n/c/L$(LIBPATH) @&&|
c0l.obj+
shutdown.obj+
tweak.obj+
asmyt.obj+
disc.obj
sd
		# no map file
emu.lib+
mathl.lib+
cl.lib
|
  copy $@ ..\main\data\panicend.exe


#		*Individual File Dependencies*
shutdown.obj: sd.cfg shutdown.c 

tweak.obj: sd.cfg tweak.asm 
	$(TASM) /MX /ZI /O TWEAK.ASM,TWEAK.OBJ

asmyt.obj: sd.cfg asmyt.asm 
	$(TASM) /MX /ZI /O ASMYT.ASM,ASMYT.OBJ

#		*Compiler Configuration File*
sd.cfg: sd.mak
  copy &&|
-ml
-2
-G
-O
-Z
-rd
-vi-
-w-rvl
-weas
-wpre
-I$(INCLUDEPATH)
-L$(LIBPATH)
| sd.cfg


