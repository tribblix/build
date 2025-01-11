#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Net-HTTP-6.23
cd Net-HTTP-6.23
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-net-http Net-HTTP-6.23
