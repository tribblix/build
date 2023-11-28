#!/bin/sh
#
${THOME}/build/unpack String-Format-1.18
cd String-Format-1.18
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-string-format String-Format-1.18
