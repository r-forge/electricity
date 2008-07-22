#!/bin/bash
latex figures_note
latex figures_note
dvipdf figures_note
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
growlnotify -m "figures_note.pdf is ready!"
