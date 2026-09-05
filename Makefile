TARGET = main
BIB = references.bib

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex $(BIB)
	latexmk -pdf $(TARGET).tex

clean:
	latexmk -c
	rm -f $(TARGET).pdf
	rm -f $(TARGET).bbl $(TARGET).run.xml $(TARGET).loc $(TARGET).soc 

cleanall:
	latexmk -C

.PHONY: all clean cleanall
