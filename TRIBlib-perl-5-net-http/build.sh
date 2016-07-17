#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
${THOME}/build/unpack Net-HTTP-6.07
cd Net-HTTP-6.07
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-net-http
