#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack DBI-1.644
cd DBI-1.644
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-dbi
cd ..
