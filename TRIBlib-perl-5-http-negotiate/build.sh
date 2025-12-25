#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack HTTP-Negotiate-6.01
cd HTTP-Negotiate-6.01
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-negotiate
cd ..
