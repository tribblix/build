#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack DBI-1.647
cd DBI-1.647
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-dbi DBI-1.647
