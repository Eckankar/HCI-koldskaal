GRAPHS=
TARGET=uge6.pdf
TEXFILES=*.tex
HELPFILES=references.bib

all: $(TARGET)

$(TARGET): aflevering.pdf
	cp aflevering.pdf $(TARGET)
	
aflevering.pdf: $(GRAPHS) $(TEXFILES) $(HELPFILES) Makefile

clean:
	rm -rf *.bbl *.blg *.aux *.log *.out *.toc *.eps *.data *~ aflevering.pdf $(GRAPHS) $(TARGET)

%.svg: %.dot
	dot $*.dot -Tsvg -o $*.svg

%.png: %.dot
	dot $*.dot -Tpng -o $*.png

%.ps: %.dot
	dot $*.dot -Tps -o $*.ps

%_dot.pdf: %.dot
	dot $*.dot -Tpdf -o $*_dot.pdf

%_neato.pdf: %.dot
	neato $*.dot -Tpdf -o $*_neato.pdf

%_circo.pdf: %.dot
	circo $*.dot -Tpdf -o $*_circo.pdf

%.mapleout: %.maple
	$(HOME)/bin/maple $*.maple > $*.mapleout

%_guimaple.ps: %.maple
	mwrapper $*.maple

%_maple.ps: %.maple
	$(HOME)/bin/maple $*.maple


%_dia.eps: %.dia
	dia $*.dia -e $*_dia.eps

%_eps.pdf: %.eps
	epstopdf $*.eps -o $*_eps.pdf

%.pdf: %.tex
	pdflatex $*.tex
	bibtex $* || true
	pdflatex $*.tex
	pdflatex $*.tex

print: $(TARGET)
	cat $(TARGET) | ssh mathias@ask.diku.dk lp -d m1b
