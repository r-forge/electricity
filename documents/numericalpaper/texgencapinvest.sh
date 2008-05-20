#!/bin/bash
latex gencapinvest
bibtex gencapinvest
latex gencapinvest
latex gencapinvest
dvipdf gencapinvest
rm gencapinvest.aux
rm gencapinvest.blg
rm *.log
rm gencapinvest.bbl
rm gencapinvest.dvi
rm gencapinvest.out

