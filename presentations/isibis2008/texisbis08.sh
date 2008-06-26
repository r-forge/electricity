#!/bin/bash
latex isbis_burger_ferstl
latex isbis_burger_ferstl
dvipdf isbis_burger_ferstl
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
growlnotify -m "isbis08_burger_ferstl.pdf is ready!"
