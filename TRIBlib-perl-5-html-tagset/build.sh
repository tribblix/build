#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack HTML-Tagset-3.24
cd HTML-Tagset-3.24
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-html-tagset HTML-Tagset-3.24
