####################
# Makefile for automated CV creation in various formats
####################


## Setup 
DATE= $(shell date +"%m-%d-%Y")
CV_DIR = .
BASENAME = template
MASTER = $(CV_DIR)/manuscript_template.Rmd
MD = $(CV_DIR)/$(BASENAME)_$(DATE).md
PDF = $(CV_DIR)/PDF/$(BASENAME)_$(DATE).pdf
WORD = $(CV_DIR)/Word/$(BASENAME)_$(DATE).docx

## functions
RNAME = cp '$<' '$@' 
PDOC = pandoc -s --smart '$<' -o '$@'
KNITMD = Rscript --vanilla -e "library(markdown);library(knitr); knit('$<','$@')"

all: $(MD) $(PDF) $(WORD)

#########################
## main markdownx
## $(OUTPUT):$(INPUT)
## 	: RULES

$(MD):$(MASTER)
	$(KNITMD)

$(PDF):$(MD)
	$(PDOC)

$(WORD):$(MD)
	$(PDOC)
