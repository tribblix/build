#!/bin/sh
#
${THOME}/build/unpack Test-Deep-1.204
cd Test-Deep-1.204
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-test-deep Test-Deep-1.204
