#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack POSIX-strptime-0.13
cd POSIX-strptime-0.13
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-posix-strptime POSIX-strptime-0.13
