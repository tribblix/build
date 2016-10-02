#!/bin/sh
#
${THOME}/build/unpack GDTextUtil-0.86
cd GDTextUtil-0.86
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-gdtextutil
cd ..
