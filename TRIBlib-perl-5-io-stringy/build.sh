#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack IO-Stringy-2.113
cd IO-Stringy-2.113
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-io-stringy IO-Stringy-2.113
