#!/bin/sh
#
${THOME}/build/unpack Tk-804.036
cd Tk-804.036
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-tk
cd ..
