#!/bin/sh
#
${THOME}/build/unpack pgFormatter-5.4
cd pgFormatter-5.4
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
