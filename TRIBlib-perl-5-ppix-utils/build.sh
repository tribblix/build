#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack PPIx-Utils-0.004
cd PPIx-Utils-0.004
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-ppix-utils PPIx-Utils-0.004
