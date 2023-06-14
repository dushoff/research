## This is a _linked_ (mkfile) Makefile for truncation (Abbott/Park)

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += main.tex dynamicaltruncation.bib

main.pdf: main.tex
main.tex.pdf: main.tex


## Work on overleaf or else use this file to preserve the weird overleaf comments
Sources += jd.tex
update:
	$(CPF) main.tex jd.tex
## jd.pdf: jd.tex
## jdiff01.pdf: jd.tex

Ignore += jdiff*.tex
jdiff%.tex: main.tex jd.tex
	$(latexdiff)

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
