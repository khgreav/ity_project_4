all: proj4.pdf

.PHONY: clean

clean:
	rm proj4.dvi
	rm proj4.ps
	rm proj4.aux
	rm proj4.log
	rm proj4.pdf
	rm proj4.bbl
	rm proj4.blg

proj4.pdf:
	latex proj4.tex
	bibtex proj4
	latex proj4.tex
	latex proj4.tex
	dvips proj4.dvi
	ps2pdf -sPAPERSIZE=a4 proj4.ps
