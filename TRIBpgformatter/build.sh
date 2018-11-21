#!/bin/sh
#
${THOME}/build/unpack pgFormatter-3.3
cd pgFormatter-3.3
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
