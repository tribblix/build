#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack DBD-Pg-3.18.0
cd DBD-Pg-3.18.0
env POSTGRES_HOME=/opt/tribblix/postgres15 perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-dbd-pg DBD-Pg-3.18.0
