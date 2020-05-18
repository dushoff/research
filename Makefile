## New research container 2020 May 17 (Sun)
## My first "listdir"

current: target
-include target.mk

-include makestuff/perl.def

######################################################################

## Quickstart 

Ignore += plateaus
alldirs += plateaus

######################################################################

Sources += $(wildcard *.pl)

## Guide file

######################################################################

### listdir stuff (listdir.mk)

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
## makestuff: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

### Includes

-include makestuff/os.mk

## -include makestuff/wrapR.mk

-include makestuff/listdir.mk
-include makestuff/mkfiles.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
