## This is a _linked_ (mkfile) Makefile for Darren's Product Model paper

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += README.md
Sources += $(wildcard *.tex)

Ignore += *.ld.*
## JOMB_formatted.pdf: JOMB_formatted.tex
## JOMB_formatted.log: JOMB_formatted.tex
## JOMB_formatted.tex.pdf: JOMB_formatted.tex

Sources += $(wildcard images/*.png)
names:
	rename "s/ /_/g" images/*

## JOMB_formatted.ld.pdf: JOMB_formatted.tex.c714913b35.oldfile JOMB_formatted.tex

## Annoying, eliminate when not needed
Ignore += images/Macpan_Base_actual.png
images/Macpan_Base_actual.png: images/macpan_base_actual.png
	$(link)

Ignore += svg-inkscape

######################################################################

### Makestuff

## Sources += $(wildcard *.mk)
## include $(wildcard *.mk)

Ignore += Makefile
Ignore += makestuff
msrepo = https://github.com/dushoff

Makefile: makestuff/00.stamp
makestuff/%.stamp:
	- $(RM) makestuff/*.stamp
	(cd makestuff && $(MAKE) pull) || git clone --depth 1 $(msrepo)/makestuff
	touch $@

-include makestuff/os.mk

## -include makestuff/pipeR.mk
latex = pdflatex --shell-escape
-include makestuff/texi.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
