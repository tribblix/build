#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack DBD-Pg-3.20.0
cd DBD-Pg-3.20.0
# https://github.com/bucardo/dbdpg/issues/170
sed -i s:7.64:7.62: Makefile.PL
env POSTGRES_HOME=/opt/tribblix/postgres17 perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-dbd-pg DBD-Pg-3.20.0
