## This is a _linked_ (mkfile) Makefile for …

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

summary.html: CIHR/registration_complete_summary.md
	$(pandocs)

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
-include makestuff/pandoc.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
