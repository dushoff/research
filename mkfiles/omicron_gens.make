## This is a _linked_ (mkfile) Makefile for …

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.tex)

autopipeR = defined

omicron-generation.pdf: omicron-generation.tex

fscripts=$(wildcard figure*.R)

fscripts = figure_compare.R figure_epidemic.R figure_incubation.R figure_reproduction_advantage_between.R figure_reproduction_advantage.R

figures: $(fscripts:%.R=%.Rout)

figure_compare.Rout: figure_compare.R

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

-include makestuff/pipeR.mk
-include makestuff/texi.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
