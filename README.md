# Markdown MS[# Markdown MS](##-markdown-ms)

---
A skeleton academic manuscript in markdown. With this repository I want to create the perfect template for academic writing. 
---

What I envision to do here is create a document template that has the following 

1. Flexible; many formats, many OS, one master source for analysis and reporting
2. Reproducible; from data cleaning and analysis to final statements
3. Open source; everything using open source "free as in free speech" software.

---

The ms should include standards for academic work

1. Bibliography citations and references
1. Captions for figures and tables
1. References to a figure or table 
1. Double space
1. An easy way to switch journal styles
1. and more!

## what you need
1. R packages "knitr", "markdown", "xtable", "knitcitations" installed
1. pandoc installed

## How to use (unix):

Just unpack the [zip](https://github.com/MarcoDVisser/MarkdownMS/archive/master.zip) file run the makefile. The makefile should render
the ms in MD, pdf and docx format.

## How to use (windows):

Unpack the [zipfile](https://github.com/MarcoDVisser/MarkdownMS/archive/master.zip) and run "knit" on manuscript_template.Rmd in R, and output the ms to your format of preference. 

## Contribute

This repro is at a very early stage of development. Do you have any ideas
on how I can improve it? I'll be happy to hear them so please contribute!
You make suggestion [here](https://github.com/MarcoDVisser/MarkdownMS/issues), or
just fork the repro and make a pull request!