#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Module-Pluggable-6.4
cd Module-Pluggable-6.4
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-module-pluggable Module-Pluggable-6.4
