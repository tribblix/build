#!/bin/sh
#
${THOME}/build/unpack Devel-StackTrace-2.04
cd Devel-StackTrace-2.04
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-devel-stacktrace Devel-StackTrace-2.04
