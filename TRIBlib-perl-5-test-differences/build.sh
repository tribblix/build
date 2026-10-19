#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Test-Differences-0.73
cd Test-Differences-0.73
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-test-differences Test-Differences-0.73
