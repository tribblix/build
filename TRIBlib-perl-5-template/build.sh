#!/bin/sh
#
${THOME}/build/unpack Template-Toolkit-2.26
cd Template-Toolkit-2.26
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-template
cd ..
