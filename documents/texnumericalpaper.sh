#!/bin/bash
latex numericalpaper
bibtex numericalpaper
latex numericalpaper
latex numericalpaper
dvipdf numericalpaper
rm numericalpaper.aux
rm numericalpaper.blg
rm numericalpaper.log
rm numericalpaper.bbl
rm numericalpaper.dvi
rm numericalpaper.out
rm numericalpaper.rel
growlnotify -m "numericalpaper.pdf is ready!"