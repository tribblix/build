#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Lingua-EN-Inflect-1.905
cd Lingua-EN-Inflect-1.905
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-lingua-en-inflec Lingua-EN-Inflect-1.905
