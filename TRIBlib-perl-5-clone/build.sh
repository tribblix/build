#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Clone-0.48
cd Clone-0.48
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-clone Clone-0.48
