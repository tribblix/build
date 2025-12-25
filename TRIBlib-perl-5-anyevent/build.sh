#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack AnyEvent-7.17
cd AnyEvent-7.17
env PERL_CANARY_STABILITY_NOPROMPT=1 perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-anyevent AnyEvent-7.17
