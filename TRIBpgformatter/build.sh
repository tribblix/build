#!/bin/sh
#
${THOME}/build/unpack pgFormatter-4.0
cd pgFormatter-4.0
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
