#!/bin/sh
#
${THOME}/build/unpack HTML-Tagset-3.20
cd HTML-Tagset-3.20
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-html-tagset
