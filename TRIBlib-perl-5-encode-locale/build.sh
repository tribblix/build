#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Encode-Locale-1.05
cd Encode-Locale-1.05
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-encode-locale
