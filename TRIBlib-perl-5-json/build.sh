#!/bin/sh
#
${THOME}/build/unpack JSON-4.10
cd JSON-4.10
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-json JSON-4.10
