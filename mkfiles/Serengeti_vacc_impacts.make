## This is a _linked_ (mkfile) Makefile for … Serengeti_vacc_impacts

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard R/*.R R/Functions/*.R)
powers.Rout: R/powers.R
	$(pipeR)

pfuns.Rout: R/Functions/pfuns.R
	$(wrapR)

Lmeans.Rout: R/Functions/Lmeans.R
	$(wrapR)

datRead.Rout: R/Functions/datRead.R
	$(wrapR)

## pcomp.Rout: R/pcomp.R R/Functions/Lmeans.R
pcomp.Rout: R/pcomp.R Lmeans.rda pfuns.rda datRead.rda
	$(pipeR)

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

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
