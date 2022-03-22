#!/bin/sh
#
# HTML-Parser needs html-tagset
#
${THOME}/build/unpack HTML-Parser-3.77
cd HTML-Parser-3.77
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-html-parser
