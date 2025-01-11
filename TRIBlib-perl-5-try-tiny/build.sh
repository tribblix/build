#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Try-Tiny-0.32
cd Try-Tiny-0.32
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-try-tiny Try-Tiny-0.32
