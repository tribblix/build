#!/bin/sh
#
${THOME}/build/unpack Chart-2.4.10
cd Chart-2.4.10
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-chart
cd ..
