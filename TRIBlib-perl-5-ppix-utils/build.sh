#!/bin/sh
#
${THOME}/build/unpack PPIx-Utils-0.003
cd PPIx-Utils-0.003
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-ppix-utils PPIx-Utils-0.003
