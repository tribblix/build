#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack IO-Tty-1.20
cd IO-Tty-1.20
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-io-tty IO-Tty-1.20
