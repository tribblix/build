#!/bin/sh
#
${THOME}/build/unpack HTTP-Date-6.02
cd HTTP-Date-6.02
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-date
