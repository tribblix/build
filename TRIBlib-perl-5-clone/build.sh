#!/bin/sh
#
${THOME}/build/unpack Clone-0.46
cd Clone-0.46
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-clone Clone-0.46
