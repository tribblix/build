#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Safe-Isa-1.000010
cd Safe-Isa-1.000010
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-safe-isa Safe-Isa-1.000010
