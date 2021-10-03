# processing engines
COMPILER := uplatex
DVI_DRIVER := dvipdfmx

# .tex files
FILE_NAME := money-management

BUILD_DIR := build

.PHONY: all clean

all: $(FILE_NAME).pdf
	open $(FILE_NAME).pdf

$(FILE_NAME).pdf: $(FILE_NAME).dvi
	$(DVI_DRIVER)  $<

$(FILE_NAME).dvi: $(FILE_NAME).tex
	$(COMPILER)  $<

clean:
	rm -f $(FILE_NAME).aux
	rm -f $(FILE_NAME).log
	rm -f $(FILE_NAME).dvi
	rm -f $(FILE_NAME).pdf
	rm -f $(FILE_NAME).out




