#!/bin/sh
#
# required by Build::Tiny
#
${THOME}/build/unpack ExtUtils-Config-0.008
cd ExtUtils-Config-0.008
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-extutils-config ExtUtils-Config-0.008
