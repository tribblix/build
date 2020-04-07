#!/bin/sh
#
${THOME}/build/unpack pgFormatter-4.3
cd pgFormatter-4.3
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
