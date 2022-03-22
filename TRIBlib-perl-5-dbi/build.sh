#!/bin/sh
#
${THOME}/build/unpack DBI-1.643
cd DBI-1.643
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-dbi
cd ..
