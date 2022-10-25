## This is a _linked_ (mkfile) Makefile for ratio scales (Roswell package)

## https://mikeroswell.github.io/ratioScales/
## Right now, this is the same README page as we get through back end (gH)
## Mike wants me to stop arguing about this for a while

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Ignore += README.html
README.html: README.Rmd
	$(rmdh_r)

vignettes/%.html: vignettes/%.Rmd
	$(rmdh_r)

## vignettes/centiNels.html: vignettes/centiNels.Rmd
## vignettes/divMult.Rmd ## Just a skeleton
## vignettes/Ratio_scales_and_centinels.Rmd ## Older

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
