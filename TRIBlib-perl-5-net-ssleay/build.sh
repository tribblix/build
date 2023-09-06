#!/bin/sh
#
${THOME}/build/unpack Net-SSLeay-1.92
cd Net-SSLeay-1.92
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-net-ssleay
