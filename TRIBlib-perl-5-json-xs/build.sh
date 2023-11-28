#!/bin/sh
#
${THOME}/build/unpack JSON-XS-4.03
cd JSON-XS-4.03
env PERL_CANARY_STABILITY_NOPROMPT=1 perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-json-xs JSON-XS-4.03
