#!/bin/sh
#
# testing also requires
# Class::Inspector Test::NoWarnings Test::Object Test::SubCalls
#
${THOME}/build/unpack PPI-1.277
cd PPI-1.277
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-ppi PPI-1.277
