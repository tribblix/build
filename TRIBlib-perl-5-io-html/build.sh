#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack IO-HTML-1.004
cd IO-HTML-1.004
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-io-html
