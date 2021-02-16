#!/bin/sh
#
${THOME}/build/unpack pgFormatter-5.0
cd pgFormatter-5.0
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
