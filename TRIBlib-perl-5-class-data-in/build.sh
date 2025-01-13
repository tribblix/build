#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Class-Data-Inheritable-0.10
cd Class-Data-Inheritable-0.10
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-class-data-in Class-Data-Inheritable-0.10
