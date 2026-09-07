#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack LWP-MediaTypes-6.05
cd LWP-MediaTypes-6.05
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-lwp-mediatypes
