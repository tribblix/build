#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# http-message needs io-html
# http-message needs http-date
# http-message need encode-locale
# http-message need lwp-mediatypes
#
${THOME}/build/unpack HTTP-Message-7.01
cd HTTP-Message-7.01
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-http-message HTTP-Message-7.01
