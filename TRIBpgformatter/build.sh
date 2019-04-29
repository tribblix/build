#!/bin/sh
#
${THOME}/build/unpack pgFormatter-3.4
cd pgFormatter-3.4
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
