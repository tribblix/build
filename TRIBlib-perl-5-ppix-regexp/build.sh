#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack PPIx-Regexp-0.089
cd PPIx-Regexp-0.089
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-ppix-regexp PPIx-Regexp-0.089
