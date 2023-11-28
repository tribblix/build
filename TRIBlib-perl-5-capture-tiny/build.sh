#!/bin/sh
#
${THOME}/build/unpack Capture-Tiny-0.48
cd Capture-Tiny-0.48
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-capture-tiny Capture-Tiny-0.48
