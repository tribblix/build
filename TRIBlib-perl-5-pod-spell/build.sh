#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Pod-Spell-1.27
cd Pod-Spell-1.27
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-pod-spell Pod-Spell-1.27
