#!/bin/sh
#
${THOME}/build/unpack B-Keywords-1.26
cd B-Keywords-1.26
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-b-keywords B-Keywords-1.26
