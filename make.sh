
sudo killall -9 xelatex
rm *.log
rm *.out
rm *.synctex*
rm *.aux

xelatex resume.tex

sudo killall -9 xelatex