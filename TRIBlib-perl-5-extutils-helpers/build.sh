#!/bin/sh
#
# required by Build::Tiny
#
${THOME}/build/unpack ExtUtils-Helpers-0.026
cd ExtUtils-Helpers-0.026
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-extutils-helpers ExtUtils-Helpers-0.026
