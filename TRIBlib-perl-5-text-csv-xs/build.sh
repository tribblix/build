#!/bin/sh
#
${THOME}/build/unpack Text-CSV_XS-1.38
cd Text-CSV_XS-1.38
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-text-csv-xs Text-CSV_XS-1.38
