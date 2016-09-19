#!/bin/sh
#
${THOME}/build/unpack Net-HTTP-6.09
cd Net-HTTP-6.09
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-net-http
