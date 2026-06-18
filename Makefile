all: pre_clean_up depinstall resume.pdf

depinstall:
	echo "Nothing to install"
	#fc-list | grep -i "Source Sans 3"

MAIN_TEX = ./resume_2page
CC = xelatex --interaction=nonstopmode
RESUME_DIR = resume_2page
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
resume.pdf: $(MAIN_TEX).tex $(RESUME_SRCS)
	$(CC) $<

.PHONY:  all depinstall resume.pdf clean pre_clean_up

clean:
	@echo "Cleaning up..."

pre_clean_up:
	@echo "Pre cleanup"
	rm -f *.log
	rm -f *.out
	rm -f *.synctex*
	rm -f *.aux
	rm -f *.pdf