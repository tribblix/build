#!/bin/sh
#
${THOME}/build/unpack Module-Pluggable-5.2
cd Module-Pluggable-5.2
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-module-pluggable Module-Pluggable-5.2
