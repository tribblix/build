#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack File-Listing-6.16
cd File-Listing-6.16
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-file-listing File-Listing-6.16
