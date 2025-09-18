#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack URI-5.34
cd URI-5.34
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-uri URI-5.34
