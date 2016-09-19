#!/bin/sh
#
# http-message needs io-html
# http-message needs http-date
# http-message need encode-locale
# http-message need lwp-mediatypes
#
${THOME}/build/unpack HTTP-Message-6.11
cd HTTP-Message-6.11
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-message
