
report=report.pdf

all: $(report)

%.pdf: %.md
	pandoc -N -s --toc --filter pandoc-citeproc --latex-engine=xelatex -o $@ $^

clean:
	rm -f $(report)

.PHONY: all clean

