#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
${THOME}/build/unpack WWW-RobotRules-6.02
cd WWW-RobotRules-6.02
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-www-robotrules
