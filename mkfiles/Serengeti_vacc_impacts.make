## This is a _linked_ (mkfile) Makefile for … Serengeti_vacc_impacts

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

## Replicate Elaine's stuff more or less exactly (by accident)
Sources += $(wildcard R/*.R R/Functions/*.R)
powers.Rout: R/powers.R
	$(pipeR)

## Calculate meas susceptibilities and do fits
pfuns.Rout: R/Functions/pfuns.R
	$(wrapR)

## Calculate power means and balanced power means
Lmeans.Rout: R/Functions/Lmeans.R
	$(wrapR)

datRead.Rout: R/Functions/datRead.R
	$(wrapR)

## pcomp.Rout: R/pcomp.R R/Functions/Lmeans.R
## Play with alternatives
pcomp.Rout: R/pcomp.R Lmeans.rda pfuns.rda datRead.rda
	$(pipeR)

## Index-based likelihood using bpMean
indlik.Rout: R/indlik.R Lmeans.rda pfuns.rda datRead.rda
	$(pipeR)

## p-based likelihood using powMean
powlik.Rout: R/powlik.R Lmeans.rda pfuns.rda datRead.rda
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
