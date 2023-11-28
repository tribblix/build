#!/bin/sh
#
${THOME}/build/unpack Test-Warn-0.37
cd Test-Warn-0.37
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-test-warn Test-Warn-0.37
