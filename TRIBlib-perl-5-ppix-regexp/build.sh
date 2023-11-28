#!/bin/sh
#
${THOME}/build/unpack PPIx-Regexp-0.088
cd PPIx-Regexp-0.088
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-ppix-regexp PPIx-Regexp-0.088
