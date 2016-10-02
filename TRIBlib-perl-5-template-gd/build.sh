#!/bin/sh
#
${THOME}/build/unpack Template-GD-2.66
cd Template-GD-2.66
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-template-gd
cd ..
