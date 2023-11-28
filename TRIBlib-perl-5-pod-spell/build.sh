#!/bin/sh
#
${THOME}/build/unpack Pod-Spell-1.26
cd Pod-Spell-1.26
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-pod-spell Pod-Spell-1.26
