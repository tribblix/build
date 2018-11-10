#!/bin/sh
#
${THOME}/build/unpack DBI-1.642
cd DBI-1.642
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-dbi
