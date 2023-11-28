#!/bin/sh
#
${THOME}/build/unpack Sub-Uplevel-0.2800
cd Sub-Uplevel-0.2800
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-sub-uplevel Sub-Uplevel-0.2800
