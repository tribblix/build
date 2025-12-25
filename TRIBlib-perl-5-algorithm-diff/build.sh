#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Algorithm-Diff-1.201
cd Algorithm-Diff-1.201
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-algorithm-diff Algorithm-Diff-1.201
