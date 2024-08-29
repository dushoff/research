## This is a _linked_ (mkfile) Makefile for Sophie's thesis (overleaf project)

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Ignore += *.lo*

Sources += $(wildcard *.tex */*.tex) simpthesis.sty

Thesis_Main.pdf: Thesis_Main.tex
## Thesis_Main.force.pdf: Thesis_Main.tex

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
