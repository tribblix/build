#!/bin/sh
#
${THOME}/build/unpack pgFormatter-5.1
cd pgFormatter-5.1
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
