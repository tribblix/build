#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack LWP-MediaTypes-6.04
cd LWP-MediaTypes-6.04
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-lwp-mediatypes
