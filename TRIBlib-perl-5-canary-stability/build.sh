#!/bin/sh
#
${THOME}/build/unpack Canary-Stability-2013
cd Canary-Stability-2013
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-canary-stability Canary-Stability-2013
