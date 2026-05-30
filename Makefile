LATEXMK ?= latexmk
MAIN ?= main

.PHONY: all clean

all:
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error $(MAIN).tex

clean:
	$(LATEXMK) -C $(MAIN).tex
