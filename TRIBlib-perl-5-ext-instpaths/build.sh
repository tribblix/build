#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# required by Build::Tiny
#
${THOME}/build/unpack ExtUtils-InstallPaths-0.014
cd ExtUtils-InstallPaths-0.014
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-ext-instpaths ExtUtils-InstallPaths-0.014
