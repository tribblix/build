#!/bin/sh
#
${THOME}/build/unpack Class-Tiny-1.008
cd Class-Tiny-1.008
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-class-tiny Class-Tiny-1.008
