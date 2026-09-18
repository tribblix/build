#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Text-Diff-1.46
cd Text-Diff-1.46
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-text-diff Text-Diff-1.46
