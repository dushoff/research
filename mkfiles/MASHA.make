## This is a linked Makefile for …
## 

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += $(wildcard *.R)

## contact/mixpref.Rout: contact/mixpref.R
covid_MP_age.Rout: covid_MP_age.R

covid_simple.Rout: covid_simple.R

Sources += agetest.R contact/mixpref.R 
agetest.Rout: safety_checks.Rout contact/mixpref.Rout agetest.R

Ignore += eq0.o eq0.so

eq0.o: eq0.c

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

-include makestuff/wrapR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
