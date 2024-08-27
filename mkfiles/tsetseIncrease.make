## This is a _linked_ (mkfile) Makefile for Elisha's tsetse increase

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard GrowthRateMS/*.tex)
Sources += GrowthRateMS/AveragingGrowthRate.tex

Ignore += bib
bib: GrowthRateMS/Growthrate.bib
	cd GrowthRateMS && pdflatex AveragingGrowthRate && bibtex AveragingGrowthRate
	touch $@

ms.pdf: GrowthRateMS/AveragingGrowthRate.tex
	cd GrowthRateMS && pdflatex AveragingGrowthRate
	cp GrowthRateMS/AveragingGrowthRate.pdf $@

Ignore += *.aux *.bbl *.blg *.log *.pdf

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

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
