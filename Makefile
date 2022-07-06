TEXFOLDERS = aes conics ellipticcurve etc plot
TEXFILES = $(wildcard *.tex $(foreach fd, $(TEXFOLDERS), $(fd)/*.tex))
PDFFILES = $(TEXFILES:%.tex=%.pdf)
SVGFILES = $(TEXFILES:%.tex=%.svg)

all: $(PDFFILES) $(SVGFILES)

pdf: $(PDFFILES)

svg: $(SVGFILES)

%.pdf: %.tex
	pdflatex -jobname=$* $< >/dev/null

%.svg: %.pdf
	inkscape --export-type=svg --pdf-poppler $<

.phony: clean fullclean

clean:
	rm */*.aux
	rm */*.log

fullclean:
	rm */*.pdf
	rm */*.svg