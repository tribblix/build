#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Task-Weaken-1.06
cd Task-Weaken-1.06
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-task-weaken Task-Weaken-1.06
