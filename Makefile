ODIR ?= build

MAIN = cpu-vulns-talk v8-javascript-talk
TEX_MAIN = $(patsubst %-talk,%-talk/main.tex, $(MAIN))
TEX_PDF  = $(patsubst %-talk,%-talk/main.pdf, $(MAIN))

HAS_TEXLIVE := $(shell command -v pdflatex 2>/dev/null)

default: all
.PHONY: all clean $(TEX_MAIN) $(TEX_PDF) pdf

pdf: all

$(TEX_MAIN):
	cd $(dir $@) && pdflatex -shell-escape main.tex

all:
ifndef HAS_TEXLIVE
	$(error "pdflatex not found, please apt install texlive-full")
endif
	ODIR=$(ODIR) $(MAKE) $(TEX_PDF)

$(TEX_PDF): $(TEX_MAIN)
	mkdir -vp $(ODIR)/$(dir $@)
	$(eval TALKNAME := $(strip $(subst /,,$(dir $@))))
	$(eval OUTPATH := build/$(TALKNAME).pdf)
	cp $@ $(OUTPATH)

clean:
	rm -rf $(ODIR)
