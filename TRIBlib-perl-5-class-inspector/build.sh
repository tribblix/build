#!/bin/sh
#
${THOME}/build/unpack Class-Inspector-1.36
cd Class-Inspector-1.36
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-class-inspector Class-Inspector-1.36
