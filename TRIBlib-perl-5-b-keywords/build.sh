#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack B-Keywords-1.29
cd B-Keywords-1.29
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-b-keywords B-Keywords-1.29
