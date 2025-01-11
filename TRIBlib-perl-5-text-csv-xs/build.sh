#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Text-CSV_XS-1.59
cd Text-CSV_XS-1.59
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-text-csv-xs Text-CSV_XS-1.59
