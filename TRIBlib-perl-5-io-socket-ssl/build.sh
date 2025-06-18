#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack IO-Socket-SSL-2.094
cd IO-Socket-SSL-2.094
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-io-socket-ssl IO-Socket-SSL-2.094
