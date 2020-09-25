BUILD_FOLDER=build
.PHONY: clean format spellcheck

all: format clean resume.pdf

resume.pdf:	resume.tex altacv.cls
	latexmk -synctex=1 -lualatex -file-line-error -interaction=nonstopmode -halt-on-error -outdir=$(BUILD_FOLDER) resume.tex
	@cp build/resume.pdf resume.pdf

format: resume.tex
	latexindent resume.tex -s

spellcheck: resume.tex
	aspell --lang=en --mode=tex check resume.tex

clean:
	@rm -rf $(BUILD_FOLDER)
