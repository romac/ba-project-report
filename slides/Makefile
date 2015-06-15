SHELL=bash

filename=slides

all: $(filename).pdf

%.pdf: %.md
	@echo -n "Building $@..."
	@pandoc $< \
		-t beamer \
		--slide-level 2 \
		--latex-engine xelatex \
		-V theme:m \
		--highlight-style pygments \
		-o $@
	@echo " Done."

clean:
	rm -f $(filename).pdf

.PHONY: clean
