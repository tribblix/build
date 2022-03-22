#!/bin/sh
#
${THOME}/build/unpack HTTP-Date-6.05
cd HTTP-Date-6.05
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-date
