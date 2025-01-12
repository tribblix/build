#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# required by Build::Tiny
#
${THOME}/build/unpack ExtUtils-Helpers-0.028
cd ExtUtils-Helpers-0.028
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-extutils-helpers ExtUtils-Helpers-0.028
