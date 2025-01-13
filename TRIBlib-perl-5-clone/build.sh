#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Clone-0.47
cd Clone-0.47
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-clone Clone-0.47
