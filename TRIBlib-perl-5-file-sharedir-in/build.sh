#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack File-ShareDir-Install-0.14
cd File-ShareDir-Install-0.14
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-file-sharedir-in File-ShareDir-Install-0.14
