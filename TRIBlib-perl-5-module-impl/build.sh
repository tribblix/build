#!/bin/sh
#
${THOME}/build/unpack Module-Implementation-0.09
cd Module-Implementation-0.09
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-module-impl Module-Implementation-0.09
