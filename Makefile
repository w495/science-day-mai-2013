Src=science-day-mai-2013

Themesdir=./styles/Pres
Theme_main=beamerthemetvzavr.sty
Theme_color=beamercolorthemetvzavr.sty
Theme_font=beamerfontthemetvzavr.sty
Theme_outer=beamerouterthemetvzavr.sty

TeX=xelatex
Mi=makeindex
Bib=bibtex

Del=rm -f
Copy=ln -sf

Vec_C=dot
Vec_format=png
Vec_src=net-model
Vec_src_ext=dot
Vec_flags=-O -T
Vec_dir=./vec

all: one
	$(TeX) $(Src)

pdf: one
	$(TeX) $(Src)

one:
	$(TeX) $(Src)

cleanall: clean cleanthemes
	$(Del) ./$(Src).pdf

localthemes:
	$(Copy)  $(Themesdir)/$(Theme_main)   ./$(Theme_main)
	$(Copy)  $(Themesdir)/$(Theme_color)  ./$(Theme_color)
	$(Copy)  $(Themesdir)/$(Theme_font)   ./$(Theme_font)
	$(Copy)  $(Themesdir)/$(Theme_outer)  ./$(Theme_outer)

cleanthemes:
	$(Del) ./$(Theme_main)
	$(Del) ./$(Theme_color)
	$(Del) ./$(Theme_font)
	$(Del) ./$(Theme_outer)

clean:
	$(Del) $(Src).aux
	$(Del) $(Src).bbl
	$(Del) $(Src).brf
	$(Del) $(Src).blg
	$(Del) $(Src).idx
	$(Del) $(Src).ilg
	$(Del) $(Src).ind
	$(Del) $(Src).log
	$(Del) $(Src).out
	$(Del) $(Src).toc

	$(Del) $(Src).nav
	$(Del) $(Src).snm
