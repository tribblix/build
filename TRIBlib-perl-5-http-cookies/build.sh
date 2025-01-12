#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack HTTP-Cookies-6.11
cd HTTP-Cookies-6.11
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-http-cookies HTTP-Cookies-6.11
