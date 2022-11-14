ROOT_DOC = notes
# BIB_FILE = ...

MODE = batchmode
LATEX = pdflatex -interaction=$(MODE) -synctex=1
BIB = bibtex

.PHONY: all view clean
all: $(ROOT_DOC).pdf

view:
	@xdg-open $(ROOT_DOC).pdf &

clean:
	@find . -name "*.aux" -type f -delete
	@find . -name "*.log" -type f -delete
	@find . -name "*.bbl" -type f -delete
	@find . -name "*.blg" -type f -delete
	@find . -name "*.bcf" -type f -delete
	@find . -name "*.run.xml" -type f -delete
	@find . -name "*.out" -type f -delete
	# @find . -name "*.pdf" -type f -delete  # Delete PDF file
	@find . -name "*.synctex.gz" -type f -delete
	@echo "Cleanup complete."

.PHONY: full
full: $(ROOT_DOC).tex
	$(LATEX) $(ROOT_DOC) ;true
	$(LATEX) $(ROOT_DOC) ;true
	$(LATEX) $(ROOT_DOC) ;true

$(ROOT_DOC).pdf: $(ROOT_DOC).tex *.tex content/**  # Add further dependencies here
	$(LATEX) $(ROOT_DOC)
