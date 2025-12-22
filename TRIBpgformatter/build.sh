#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack pgFormatter-5.9
cd pgFormatter-5.9
perl Makefile.PL
make
${THOME}/build/genpkg TRIBpgformatter
cd ..
