#!/bin/sh
#
${THOME}/build/unpack Params-Util-1.102
cd Params-Util-1.102
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-params-util Params-Util-1.102
