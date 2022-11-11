## This is a _linked_ (mkfile) Makefile for harris 2022 Nov

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.tex *.bib)

## latexdiff_submitted_revised.pdf: latexdiff_submitted_revised.tex
main_asympspread_udpate110922.tex.pdf: main_asympspread_udpate110922.tex

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

-include makestuff/texi.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
