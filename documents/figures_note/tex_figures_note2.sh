#!/bin/bash
latex figures_note2
latex figures_note2
dvipdf figures_note2
rm *.aux
rm *.blg
rm *.log
rm *.bbl
rm *.dvi
rm *.out
rm *.snm
rm *.toc
rm *.nav
rm *.rel
growlnotify -m "figures_note2.pdf is ready!"
