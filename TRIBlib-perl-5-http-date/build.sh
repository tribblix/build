#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack HTTP-Date-6.06
cd HTTP-Date-6.06
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-http-date HTTP-Date-6.06
