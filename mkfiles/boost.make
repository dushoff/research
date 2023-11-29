## This is a _linked_ (mkfile) Makefile for Daniel's boosting-coexistence

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += bologna/*.R

%.Rout: bologna/*.R
	$(pipeR)

params.Rout: bologna/params.R fit/fit_beta_hcov_boosting.rda
## params.Rout. fit/fit_beta_hcov_leaky.rda

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
