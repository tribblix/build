#!/bin/sh
#
${THOME}/build/unpack File-Listing-6.04
cd File-Listing-6.04
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-file-listing
