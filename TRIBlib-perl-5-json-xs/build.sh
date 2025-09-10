#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack JSON-XS-4.04
cd JSON-XS-4.04
env PERL_CANARY_STABILITY_NOPROMPT=1 perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-json-xs JSON-XS-4.04
