#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack TimeDate-2.35
cd TimeDate-2.35
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-timedate TimeDate-2.35
