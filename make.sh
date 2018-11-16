
sudo killall -9 xelatex
rm *.log
rm *.out
rm *.synctex*
rm *.aux
rm *.pdf

xelatex resume.tex

sudo killall -9 xelatex