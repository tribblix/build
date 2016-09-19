#!/bin/sh
#
${THOME}/build/unpack DBI-1.636
cd DBI-1.636
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-dbi
