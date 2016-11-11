#!/bin/sh
#
${THOME}/build/unpack DBD-Pg-3.5.3
cd DBD-Pg-3.5.3
env POSTGRES_HOME=/opt/tribblix/postgres96 perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-dbd-pg
