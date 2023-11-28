#!/bin/sh
#
${THOME}/build/unpack Test-Most-0.38
cd Test-Most-0.38
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-test-most Test-Most-0.38
