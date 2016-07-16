#!/bin/sh
#
${THOME}/build/unpack xlsvisuals
cd xlsvisuals
xmkmf -DHasGcc3=YES
make
cd ..
${THOME}/build/genpkg TRIBxlsvisuals xlsvisuals
