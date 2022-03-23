#!/bin/sh
#
${THOME}/build/unpack Net-HTTP-6.22
cd Net-HTTP-6.22
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-net-http
cd ..
