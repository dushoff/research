## New research container 2020 May 17 (Sun)

current: target
-include target.mk

-include makestuff/perl.def

######################################################################

screen_session: 
	$(plvscreens)

######################################################################

Sources += $(wildcard makefiles/*.make)
.PRECIOUS: makefiles/%.make
makefiles/%.make:
	cp makefiles/makefiles.make $@

%/Makefile: makefiles/%.make
	cd $* && $(LN) ../$< Makefile

######################################################################

Ignore += plateaus
alldirs += plateaus

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

-include makestuff/os.mk

## -include makestuff/wrapR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
