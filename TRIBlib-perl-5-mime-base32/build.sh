#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack MIME-Base32-1.303
cd MIME-Base32-1.303
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-mime-base32 MIME-Base32-1.303
