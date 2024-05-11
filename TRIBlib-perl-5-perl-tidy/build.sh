#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Perl-Tidy-20240511
cd Perl-Tidy-20240511
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-perl-tidy Perl-Tidy-20240511
