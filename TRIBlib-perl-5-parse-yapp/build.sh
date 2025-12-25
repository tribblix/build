#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Parse-Yapp-1.21
cd Parse-Yapp-1.21
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-parse-yapp
