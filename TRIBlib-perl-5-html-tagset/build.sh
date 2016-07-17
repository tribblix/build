#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
${THOME}/build/unpack HTML-Tagset-3.20
cd HTML-Tagset-3.20
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-html-tagset
