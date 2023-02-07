#!/bin/sh
#
${THOME}/build/unpack pgFormatter-5.5
cd pgFormatter-5.5
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
