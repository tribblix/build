#!/bin/sh
#
${THOME}/build/unpack pgFormatter-4.1
cd pgFormatter-4.1
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
