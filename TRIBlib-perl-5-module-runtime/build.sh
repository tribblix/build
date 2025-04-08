#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Module-Runtime-0.017
cd Module-Runtime-0.017
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-module-runtime Module-Runtime-0.017
