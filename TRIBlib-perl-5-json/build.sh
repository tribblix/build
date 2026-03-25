#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack JSON-4.11
cd JSON-4.11
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-json JSON-4.11
