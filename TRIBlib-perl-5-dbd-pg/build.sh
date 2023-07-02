#!/bin/sh
#
${THOME}/build/unpack DBD-Pg-3.16.3
cd DBD-Pg-3.16.3
env POSTGRES_HOME=/opt/tribblix/postgres15 perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-dbd-pg
cd ..
