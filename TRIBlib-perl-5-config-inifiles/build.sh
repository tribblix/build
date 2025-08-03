#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Config-IniFiles-3.000003
cd Config-IniFiles-3.000003
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-config-inifiles Config-IniFiles-3.000003
