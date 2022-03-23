#!/bin/sh
#
${THOME}/build/unpack File-Listing-6.14
cd File-Listing-6.14
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-file-listing
cd ..
