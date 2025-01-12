#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# required by Build::Tiny
#
${THOME}/build/unpack ExtUtils-Config-0.010
cd ExtUtils-Config-0.010
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-extutils-config ExtUtils-Config-0.010
