#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
${THOME}/build/unpack HTTP-Date-6.02
cd HTTP-Date-6.02
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-date
