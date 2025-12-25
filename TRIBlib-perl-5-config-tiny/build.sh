#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Config-Tiny-2.30
cd Config-Tiny-2.30
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-config-tiny Config-Tiny-2.30
