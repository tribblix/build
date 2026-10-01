#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# HTML-Parser needs html-tagset
#
${THOME}/build/unpack HTML-Parser-3.86
cd HTML-Parser-3.86
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-html-parser HTML-Parser-3.86
