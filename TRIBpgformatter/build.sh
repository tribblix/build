#!/bin/sh
#
${THOME}/build/unpack pgFormatter-5.3
cd pgFormatter-5.3
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
