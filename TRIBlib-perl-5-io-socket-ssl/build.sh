#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack IO-Socket-SSL-2.098
cd IO-Socket-SSL-2.098
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-io-socket-ssl IO-Socket-SSL-2.098
