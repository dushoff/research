## This is a _linked_ (mkfile) Makefile for harrisAsymp version 7 (!)

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

main_asympspread_udpate021622.tex.pdf: main_asympspread_udpate021622.tex
main_asympspread_udpate021622.pdf: main_asympspread_udpate021622.tex

## main_asympspread_udpate021622.ld.pdf: main_asympspread_udpate021622.tex

Sources += library.bib

######################################################################

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

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
