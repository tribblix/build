#!/bin/sh
#
${THOME}/build/unpack DBD-Pg-3.7.4
cd DBD-Pg-3.7.4
env POSTGRES_HOME=/opt/tribblix/postgres11 perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-dbd-pg
