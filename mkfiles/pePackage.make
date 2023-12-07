## This is a _linked_ (mkfile) Makefile for Xie Ningrui pePackage
## The package is called PseudoErlang

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

## quickinstall: 
## pkgall:

Sources += DESCRIPTION $(wildcard *.R) .Rbuildignore

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
-include makestuff/rpkg.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
