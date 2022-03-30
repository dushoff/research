## This is a _linked_ (mkfile) Makefile for harrisAsymp
## https://www.overleaf.com/project/622a373c3c3682e6ab58afd6
## https://github.com/dushoff/asymptomatic-spread-ms-revise-6.git

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.tex)
main_asympspread_udpate021622.tex.pdf: main_asympspread_udpate021622.tex
main_asympspread_udpate021622.pdf: main_asympspread_udpate021622.tex

### Makestuff

## Sources += $(wildcard *.mk)
## include $(wildcard *.mk)

Ignore += Makefile
Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	ln -s ../makestuff .
	ls makestuff/Makefile

-include makestuff/os.mk

## -include makestuff/pipeR.mk
-include makestuff/texi.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
