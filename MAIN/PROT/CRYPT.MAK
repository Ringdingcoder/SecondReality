.AUTODEPEND

#		*Translator Definitions*
CC = bcc +CRYPT.CFG
TASM = TASM
TLIB = tlib
TLINK = tlink
LIBPATH = D:\BC\LIB
INCLUDEPATH = D:\BC\INCLUDE


#		*Implicit Rules*
.c.obj:
  $(CC) -c {$< }

.cpp.obj:
  $(CC) -c {$< }

#		*List Macros*


EXE_dependencies =  \
 crypt.obj \
 asmyt.obj

#		*Explicit Rules*
crypt.exe: crypt.cfg $(EXE_dependencies)
  $(TLINK) /v/x/c/P-/L$(LIBPATH) @&&|
c0l.obj+
crypt.obj+
asmyt.obj
crypt
		# no map file
graphics.lib+
emu.lib+
mathl.lib+
cl.lib
|


#		*Individual File Dependencies*
crypt.obj: crypt.cfg crypt.c 

asmyt.obj: crypt.cfg asmyt.asm 
	$(TASM) /MX /ZI /O ASMYT.ASM,ASMYT.OBJ

#		*Compiler Configuration File*
crypt.cfg: crypt.mak
  copy &&|
-ml
-v
-vi-
-weas
-I$(INCLUDEPATH)
-L$(LIBPATH)
| crypt.cfg


