####################
# Makefile for automated ms creation in various formats
####################

## Setup 
DATE= $(shell date +"%m-%d-%Y")
CV_DIR = .
BASENAME = template
MASTER = $(CV_DIR)/manuscript_template.Rmd
MD = $(CV_DIR)/manuscript_template.md
PDF = $(CV_DIR)/manuscript_template.pdf
FINAL = $(CV_DIR)/PDF/$(BASENAME)_$(DATE).pdf
WORD = $(CV_DIR)/Word/$(BASENAME)_$(DATE).docx

## Add test driven data analysis

## functions
RNAME = cp '$<' '$@' 
PDOC = pandoc -s --smart '$<' -o '$@'
KNIT = Rscript --vanilla -e "library(markdown,lib='~/R/lib');require(knitr,lib='~/R/lib'); knit('$<','$@')"
PDFLATEX = pdflatex -synctex=1 -interaction=nonstopmode '$<' '$@'
RENDER = Rscript --vanilla -e "source('render.R')"
all: $(MD) $(FINAL) $(WORD) 

#########################
## main markdownx
## $(OUTPUT):$(INPUT)
## 	: RULES

## Using trinker's suggestion
$(MD):$(MASTER)
	$(RENDER)

$(FINAL):$(PDF)
	$(RNAME)

$(WORD):$(MD)
	$(PDOC)



