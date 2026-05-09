#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack DBD-Pg-3.20.2
cd DBD-Pg-3.20.2
env POSTGRES_HOME=/opt/tribblix/postgres17 perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-dbd-pg DBD-Pg-3.20.2
