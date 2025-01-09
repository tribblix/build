#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Tree-Simple-1.34
cd Tree-Simple-1.34
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-tree-simple Tree-Simple-1.34
