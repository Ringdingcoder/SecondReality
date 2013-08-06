.AUTODEPEND

#		*Translator Definitions*
CC = bcc +ENDSCRL.CFG
TASM = TASM
TLIB = tlib
TLINK = tlink
LIBPATH = E:\u2\CPP\LIB
INCLUDEPATH = E:\u2\CPP\INCLUDE


#		*Implicit Rules*
.c.obj:
  $(CC) -c {$< }

.cpp.obj:
  $(CC) -c {$< }

#		*List Macros*


EXE_dependencies =  \
 main.obj \
 asmyt.obj \
 i:\u2\dis\disc.obj

#		*Explicit Rules*
endscrl.exe: endscrl.cfg $(EXE_dependencies)
  $(TLINK) /v/x/c/P-/L$(LIBPATH) @&&|
c0l.obj+
main.obj+
asmyt.obj+
i:\u2\dis\disc.obj
endscrl
		# no map file
graphics.lib+
fp87.lib+
mathl.lib+
cl.lib
|


#		*Individual File Dependencies*
main.obj: endscrl.cfg main.c 

asmyt.obj: endscrl.cfg asmyt.asm 
	$(TASM) /M9 /MX /ZI /O ASMYT.ASM,ASMYT.OBJ

#		*Compiler Configuration File*
endscrl.cfg: endscrl.mak
  copy &&|
-ml
-3
-f287
-K
-v
-G
-O
-Og
-Oe
-Om
-Ov
-Ol
-Ob
-Op
-Oi
-Z
-k-
-rd
-vi-
-wdef
-w-rvl
-weas
-wpre
-I$(INCLUDEPATH)
-L$(LIBPATH)
-Ff
| endscrl.cfg


