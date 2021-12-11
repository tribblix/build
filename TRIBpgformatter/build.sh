#!/bin/sh
#
${THOME}/build/unpack pgFormatter-5.2
cd pgFormatter-5.2
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
