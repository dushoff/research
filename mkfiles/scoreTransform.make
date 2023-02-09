## This is a _linked_ (mkfile) Makefile for Bosse scoring

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Ignore += *.12.tex
## main.12.pdf: 
%.12.tex: %.tex
	perl -pe "s/\\documentclass[^{]*/\\documentclass[12pt]/" $< > $@

######################################################################

Ignore += big.tex

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

-include makestuff/texi.mk
## -include makestuff/pipeR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
