## This is a _linked_ (mkfile) Makefile for Rowan's rabies branches

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
Sources += $(wildcard code/*.R)
autopipeR = defined

######################################################################

tree_lengths_doesnt_work.Rout: code/tree_lengths_doesnt_work.R
	$(pipeR)

######################################################################

Sources += $(wildcard code/*.sh)
make_trees: code/make_trees.sh
	bash < $<

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

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
