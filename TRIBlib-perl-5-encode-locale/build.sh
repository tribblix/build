#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
${THOME}/build/unpack Encode-Locale-1.03
cd Encode-Locale-1.03
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-encode-locale
