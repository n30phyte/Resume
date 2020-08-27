BUILD_FOLDER=build
.PHONY: watch clean format

all: format resume.pdf

format: resume.tex
	latexindent resume.tex -s

resume.pdf:	resume.tex altacv.cls
	latexmk -lualatex -outdir=$(BUILD_FOLDER) resume.tex
	@cp build/resume.pdf resume.pdf

clean:
	@rm -rf $(BUILD_FOLDER)
