## This is a _linked_ (mkfile) Makefile for tsetseIncreae

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard GrowthRateMS/*.tex GrowthRateMS/*.bib)

Ignore += ms.pdf
ms.pdf: GrowthRateMS/AveragingGrowthRate.tex
	cd $(dir $<) && texi2pdf $(notdir $<)
	$(MV) $(basename $<).pdf $@

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

-include makestuff/texi.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
