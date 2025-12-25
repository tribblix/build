#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack TermReadKey-2.38
cd TermReadKey-2.38
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-term-readkey TermReadKey-2.38
