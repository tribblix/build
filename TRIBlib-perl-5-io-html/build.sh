#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
${THOME}/build/unpack IO-HTML-1.001
cd IO-HTML-1.001
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-io-html
