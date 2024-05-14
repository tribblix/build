#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is the Tribblix::Kstat module, which is a development variant
# of the Sun::Solaris:Kstat module shipped with illumos
#
${THOME}/build/unpack https://github.com/tribblix/tribblix-kstat
cd tribblix-kstat
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-kstat tribblix-kstat
