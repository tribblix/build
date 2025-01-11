#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack DBI-1.646
cd DBI-1.646
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-dbi DBI-1.646
