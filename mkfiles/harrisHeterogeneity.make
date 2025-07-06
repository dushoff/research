## This is a _linked_ (mkfile) Makefile for Harris heterogeneity (Weitz group 2024 Aug 26 (Mon))
## It is now in two locations and seems kind of terrible
## https://www.overleaf.com/project/62bf40f3ae952729f5916136

current: target
-include target.mk

-include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

## revision_June2025 subdirectory only! Older stuff below

Ignore += revision_June2025/

main.pdf: main.tex

jd_suggestion.pdf: jd_suggestion.tex

######################################################################

Sources += $(wildcard *.R *.md *.rmd)

Ignore += elsarticle-template-harv.pdf jd.pdf
## elsarticle-template-harv.pdf: elsarticle-template-harv.tex
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
