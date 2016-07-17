#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
# HTML-Parser needs html-tagset
#
${THOME}/build/unpack HTML-Parser-3.71
cd HTML-Parser-3.71
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-html-parser
