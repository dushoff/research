## This is a _linked_ (mkfile) Makefile for oncovid (David, Sophie, Irena)

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R *.md *.rmd)
autopipeR = defined

######################################################################

## ./covid-age-master/figures_sophie/fatal_probs_variants.pdf
## ./covid-age-master/figures_sophie/fatal_probs_variants_test_noprev.pdf
## ./covid-age-master/figures_sophie/fatal_probs_variants_test.pdf

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
