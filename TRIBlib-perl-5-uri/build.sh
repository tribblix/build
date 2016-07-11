#!/bin/sh
#
${THOME}/build/unpack URI-1.69
cd URI-1.69
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-uri URI-1.69
