####################
# Makefile for automated ms creation in various formats
####################

## Setup 
DATE= $(shell date +"%m-%d-%Y")
CV_DIR = .
BASENAME = template
MASTER = $(CV_DIR)/manuscript_template.Rmd
MD = $(CV_DIR)/$(BASENAME)_$(DATE).md
PDF = $(CV_DIR)/PDF/$(BASENAME)_$(DATE).pdf
WORD = $(CV_DIR)/Word/$(BASENAME)_$(DATE).docx

## Add test driven data analysis

## functions
RNAME = cp '$<' '$@' 
PDOC = pandoc -s --smart '$<' -o '$@'
KNIT = Rscript --vanilla -e "library(markdown,lib='~/R/lib');require(knitr,lib='~/R/lib'); knit('$<','$@')"
PDFLATEX = pdflatex -synctex=1 -interaction=nonstopmode '$<' '$@'
all: $(MD) $(PDF) $(PDF2) $(WORD)

#########################
## main markdownx
## $(OUTPUT):$(INPUT)
## 	: RULES

$(MD):$(MASTER)
	$(KNIT)

$(PDF):$(MD)
	$(PDOC)

$(WORD):$(MD)
	$(PDOC)
