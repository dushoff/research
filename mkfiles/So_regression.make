
## This is a _linked_ Makefile for Matthew's covid-time-lag-regression

current: target
-include target.mk

-include makestuff/python.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += README.md

Sources += $(wildcard *.py)

requirements.out: requirements.txt
	pip3 install -r $< > $@

lagutils.out: lagutils.py
	touch $@

regression-time-lag.out: lagutils.out regression-time-lag.py timeseries/
	$(PITH3)

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

## -include makestuff/wrapR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
