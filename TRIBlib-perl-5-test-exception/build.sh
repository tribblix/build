#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Test-Exception-0.43
cd Test-Exception-0.43
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-test-exception Test-Exception-0.43
