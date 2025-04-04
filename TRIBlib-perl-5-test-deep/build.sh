#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Test-Deep-1.205
cd Test-Deep-1.205
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-test-deep Test-Deep-1.205
