#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Tk-804.036
cd Tk-804.036
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-tk
cd ..
