#!/bin/sh
#
${THOME}/build/unpack Test-Differences-0.71
cd Test-Differences-0.71
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-test-differences Test-Differences-0.71
