#!/bin/sh
#
${THOME}/build/unpack TimeDate-2.30 
cd TimeDate-2.30
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-timedate TimeDate-2.30
