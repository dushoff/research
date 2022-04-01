## This is a _linked_ (mkfile) Makefile for …

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

## Fucked up again!! Check before trying
vignettes/Ratio_scales_and_centinels.html: vignettes/Ratio_scales_and_centinels.Rmd
	$(rmdh_r)

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
-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
