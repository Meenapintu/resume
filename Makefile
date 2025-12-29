all: pre_clean_up resume.pdf

CC = xelatex
RESUME_DIR = resume_2page
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
resume.pdf:
	@echo "--- Compiling tex files ---"
	#@xelatex resume.tex
	./resume_2page.tex $(RESUME_SRCS)
	$(CC) -output-directory=. $<
	#@xelatex resume_2page.tex
	@echo "--- Finished the command ---"
	#sudo killall -9 xelatex

.PHONY:  all resume.pdf clean

clean:
	@echo "Cleaning up..."
	# add cleanup commands here, e.g., rm output_file

pre_clean_up:
	@echo "Pre cleanup"
	rm -f *.log
	rm -f *.out
	rm -f *.synctex*
	rm -f *.aux
	rm -f *.pdf