#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Capture-Tiny-0.50
cd Capture-Tiny-0.50
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-capture-tiny Capture-Tiny-0.50
