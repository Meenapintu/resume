all: pre_clean_up run_command

run_command:
	@echo "--- Compiling tex files ---"
	#@xelatex resume.tex
	@xelatex resume_2page.tex
	@echo "--- Finished the command ---"
	sudo killall -9 xelatex

.PHONY:  all run_command clean

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