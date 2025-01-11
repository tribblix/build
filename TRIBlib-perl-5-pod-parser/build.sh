#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Pod-Parser-1.67
cd Pod-Parser-1.67
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-pod-parser Pod-Parser-1.67
