## This is a _linked_ (mkfile) Makefile for Mallory/Weitz breakout measles paper

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
autopipeR = defined

######################################################################

Sources += $(wildcard *.tex)

## 0new-main.pdf: 0new-main.tex jd.tex

## main.pdf: main.tex

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

-include makestuff/texj.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
