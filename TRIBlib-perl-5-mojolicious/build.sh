#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Mojolicious-9.41
cd Mojolicious-9.41
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-mojolicious Mojolicious-9.41
