#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack common-sense-3.75
cd common-sense-3.75
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-common-sense common-sense-3.75
