#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack WWW-RobotRules-6.03
cd WWW-RobotRules-6.03
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-www-robotrules WWW-RobotRules-6.03
