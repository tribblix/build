#!/bin/sh
#
${THOME}/build/unpack pgFormatter-4.4
cd pgFormatter-4.4
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
