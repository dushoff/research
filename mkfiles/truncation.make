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
## What is the detach stuff about? 2023 Jun 14 (Wed)
# https://www.overleaf.com/project/63d00636ca448b850dcc82cc/detacher
# https://www.overleaf.com/project/63d00636ca448b850dcc82cc/detached

Sources += jd.tex jdbase.tex
update: commit.time
	$(RMF) jdbase.tex
	$(CPF) main.tex jd.tex
	$(CPF) main.tex jdbase.tex
	$(RO) jdbase.tex

## jd.pdf: jd.tex
## jdiff02.pdf: jd.tex
## jdiff02.pdf.pdf: jd.tex

## Re-do with standard ld technol
Ignore += jdiff*.tex
jdiff02.tex: jdbase.tex jd.tex
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
