#!/bin/sh
#
${THOME}/build/unpack Pod-Parser-1.66
cd Pod-Parser-1.66
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-pod-parser Pod-Parser-1.66
