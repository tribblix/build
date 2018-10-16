#!/bin/sh
#
${THOME}/build/unpack pgFormatter-3.2
cd pgFormatter-3.2
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
