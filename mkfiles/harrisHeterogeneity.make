## This is a _linked_ (mkfile) Makefile for Harris heterogeneity (Weitz group 2024 Aug 26 (Mon))

current: target
-include target.mk

-include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)

jd.pdf: jd.tex

## drop.filemerge: drop.md

######################################################################

Ignore += Figures/*eps-converted-to.pdf

### Makestuff

Sources += $(wildcard *.tex)
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
-include makestuff/ldrop.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
