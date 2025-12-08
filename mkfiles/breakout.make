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
Ignore += *.pdf

## 0new-main.pdf: 0new-main.tex jd.tex

## 0new-main.tex.339504c.oldfile:
## 0new-main.tex.24599a14.oldfile:

## This can't be an implicit rule because it will crush older files
## when you commit!
## There is some sort of weird churning going on as well.
## jd2.pdf: jd2.tex
jdXX.tex: 0new-main.ld.tex
	$(move)

## Dushoff diffs
## jd1.pdf: jd1.tex

### OUTDATED
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
