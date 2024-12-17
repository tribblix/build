#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack HTTP-CookieJar-0.014
cd HTTP-CookieJar-0.014
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-http-cookiejar HTTP-CookieJar-0.014
