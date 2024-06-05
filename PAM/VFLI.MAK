.AUTODEPEND

#		*Translator Definitions*
CC = bcc +VFLI.CFG
TASM = TASMX
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
 vfli.obj

#		*Explicit Rules*
vfli.exe: vfli.cfg $(EXE_dependencies)
  $(TLINK) /s/i/n/P-/L$(LIBPATH) @&&|
c0l.obj+
vfli.obj
vfli,vfli
cl.lib
|


#		*Individual File Dependencies*
vfli.obj: vfli.cfg vfli.c 

#		*Compiler Configuration File*
vfli.cfg: vfli.mak
  copy &&|
-ml
-2
-f-
-G
-O
-Z
-rd
-vi-
-Ff=32768
-w-rvl
-weas
-wpre
-I$(INCLUDEPATH)
-L$(LIBPATH)
| vfli.cfg


