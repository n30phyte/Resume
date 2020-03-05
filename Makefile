BUILD_FOLDER=build

all:	resume.tex sidebar.tex
	latexmk -lualatex -outdir=$(BUILD_FOLDER) resume.tex
	@cp build/resume.pdf resume.pdf
clean:
	@rm -rf $(BUILD_FOLDER)
