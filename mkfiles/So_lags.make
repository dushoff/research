## This is a linked Makefile for So's COVID lags repo
## https://github.com/Apeirogons/covid-time-lag

current: target
-include target.mk

-include makestuff/python.def

vim_session:
	bash -cl "vmt"

######################################################################

Makefile: requirements.out
requirements.out: requirements.txt
	pip3 install -r $< > $@

time-lag-by-country.out: time-lag-by-country.py
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
