.AUTODEPEND

#		*Translator Definitions*
CC = bcc +PAM.CFG
TASM = TASMX
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
 outtaa.obj \
 asmyt.obj \
 include.obj \
 tweak.obj \
 copper.obj \
 disc.obj

#		*Explicit Rules*
pam.exe: pam.cfg $(EXE_dependencies)
  $(TLINK) /v/s/i/n/P-/L$(LIBPATH) @&&|
c0l.obj+
outtaa.obj+
asmyt.obj+
include.obj+
tweak.obj+
copper.obj+
disc.obj
pam,pam
cl.lib
|
  copy $@ ..\main\data


#		*Individual File Dependencies*
outtaa.obj: pam.cfg outtaa.c 

asmyt.obj: pam.cfg asmyt.asm 
	$(TASM) /M9 /MX /ZI /O ASMYT.ASM,ASMYT.OBJ

include.obj: pam.cfg include.asm out.in0 pal.inc
	$(TASM) /M9 /MX /ZI /O INCLUDE.ASM,INCLUDE.OBJ

tweak.obj: pam.cfg tweak.asm 
	$(TASM) /M9 /MX /ZI /O TWEAK.ASM,TWEAK.OBJ

copper.obj: pam.cfg copper.asm 
	$(TASM) /M9 /MX /ZI /O COPPER.ASM,COPPER.OBJ

out.u: prax4.fli
	vfli prax4.fli

out.ani: out.u
	anim

out.in0: out.ani
	..\util2\cut64kb out.ani out.in

pal.inc: out.u
	..\util\incbin pal.pal $@

#		*Compiler Configuration File*
pam.cfg: pam.mak
  copy &&|
-ml
-2
-f-
-v
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
| pam.cfg


