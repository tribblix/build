#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Net-SSLeay-1.94
cd Net-SSLeay-1.94
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-net-ssleay Net-SSLeay-1.94
