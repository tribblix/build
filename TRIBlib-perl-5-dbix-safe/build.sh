#!/bin/sh
#
${THOME}/build/unpack DBIx-Safe-1.2.5
cd DBIx-Safe-1.2.5
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-dbix-safe
cd ..
