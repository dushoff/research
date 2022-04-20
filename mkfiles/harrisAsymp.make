## This is a _linked_ (mkfile) Makefile for harrisAsymp
## resources/overleaf_ms.pdf

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

## main_asympspread_udpate021622.tex.68a0186e8.oldfile:
Sources += main_asympspread_udpate021622.tex
## main_asympspread_udpate021622.tex.log
main_asympspread_udpate021622.tex.pdf: main_asympspread_udpate021622.tex
main_asympspread_udpate021622.pdf: main_asympspread_udpate021622.tex

## main_asympspread_udpate021622.ld.pdf: main_asympspread_udpate021622.tex

Sources += library.bib

######################################################################

Ignore += comp.tex
comp.pdf: comp.tex

######################################################################

## Earlier versions used epstopdf on the fly and so I needed the stuff below.

Makefile: | resources
Ignore += resources
resources:
	/bin/ln -s ~/Dropbox/HarrisAsymp $@

## Ignore += *.dvi

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
-include makestuff/texi.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
