TARGET = main
BIB = references.bib

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex $(BIB)
	latexmk -pdf $(TARGET).tex

clean:
	latexmk -c
	rm -f $(TARGET).bbl $(TARGET).run.xml

cleanall:
	latexmk -C

.PHONY: all clean cleanall
