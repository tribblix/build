#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# testing also requires
# Class::Inspector Test::NoWarnings Test::Object Test::SubCalls
#
${THOME}/build/unpack PPI-1.284
cd PPI-1.284
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-ppi PPI-1.284
