## This is a _linked_ (mkfile) Makefile for brinFeedback
## https://www.overleaf.com/project/67efdee86a70a32bb8bf6ac7

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

## Just noodling around here; actually working on overleaf
## Useful though to drop the geometry and make a nice big document.
main.pdf: main.tex
Ignore += jd.tex
Sources += tex.md
jd.pdf: jd.tex

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
