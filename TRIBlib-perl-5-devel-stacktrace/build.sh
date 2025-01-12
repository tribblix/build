#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Devel-StackTrace-2.05
cd Devel-StackTrace-2.05
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-devel-stacktrace Devel-StackTrace-2.05
