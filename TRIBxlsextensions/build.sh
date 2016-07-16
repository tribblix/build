#!/bin/sh
#
${THOME}/build/unpack xlsextensions
cd xlsextensions
xmkmf -DHasGcc3=YES
gsed -i /XIElib.h/d xlsextensions.c
make
cd ..
${THOME}/build/genpkg TRIBxlsextensions xlsextensions
