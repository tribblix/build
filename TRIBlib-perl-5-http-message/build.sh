#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
# http-message needs io-html
# http-message needs io-compress
# http-message needs http-date
# http-message need encode-locale
# http-message need lwp-mediatypes
#
${THOME}/build/unpack HTTP-Message-6.06
cd HTTP-Message-6.06
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-message
