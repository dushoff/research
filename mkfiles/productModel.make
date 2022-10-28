## This is a _linked_ (mkfile) Makefile for Darren's Product Model paper

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += README.md
Sources += $(wildcard *.tex)

Draft_3.tex.pdf: Draft_3.tex

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
