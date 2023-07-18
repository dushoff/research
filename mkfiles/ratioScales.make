# This is a _linked_ (mkfile) Makefile for ratio scales (Roswell package)

## https://mikeroswell.github.io/ratioScales/
## index is mirroring README

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

checkHere:
	R CMD check 
doublecheckHere:
	R CMD check --as-cran

## quickinstall:

Ignore += README.html
README.html: README.Rmd
	$(rmdh_r)

vignettes/%.html: vignettes/%.Rmd
	$(rmdh_r)

Sources += README.Rmd

ignoreFigs:
	git checkout HEAD whatever

## vignettes/centiNels.html: vignettes/centiNels.Rmd
## vignettes/divMult.Rmd ## Just a skeleton
## vignettes/Ratio_scales_and_centinels.Rmd ## Older

######################################################################

Sources += man/*.Rd

######################################################################

## .github/ ## Github actions!

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

## -include makestuff/pipeR.mk

-include makestuff/rpkg.mk
-include makestuff/rmd.mk
## -include makestuff/pipeR.mk
-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
