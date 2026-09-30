#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Exception-Class-1.46
cd Exception-Class-1.46
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-exception-class Exception-Class-1.46
