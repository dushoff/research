# This is the screendir research

current: target
-include target.mk

-include makestuff/perl.def

######################################################################

vim_session: 
	bash -cl "vmt screens.list github.txt"

screen_session: screens.update
	$(MAKE) $(vscreens)

Ignore += screenlog.32

######################################################################

Ignore += time.tmp
time.tmp: phony
	ls -lt */Makefile > $@

phony: ;

### Makestuff

Sources += Makefile github.txt content.list archive.list

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile Downloads
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

Ignore += Downloads
Downloads: dir=~
Downloads: 
	$(linkdir)

### Includes

-include makestuff/os.mk

## -include makestuff/wrapR.mk

-include makestuff/listdir.mk
-include makestuff/screendir.mk
-include makestuff/mkfiles.mk

-include makestuff/git.mk
-include makestuff/visual.mk
