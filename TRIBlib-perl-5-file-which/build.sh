#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack File-Which-1.27
cd File-Which-1.27
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-file-which File-Which-1.27
