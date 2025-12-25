#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack WWW-RobotRules-6.02
cd WWW-RobotRules-6.02
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-www-robotrules
cd ..
