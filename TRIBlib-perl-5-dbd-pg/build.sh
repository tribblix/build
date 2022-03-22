#!/bin/sh
#
${THOME}/build/unpack DBD-Pg-3.15.1
cd DBD-Pg-3.15.1
env POSTGRES_HOME=/opt/tribblix/postgres13 perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-dbd-pg
cd ..
