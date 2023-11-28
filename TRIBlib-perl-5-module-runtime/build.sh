#!/bin/sh
#
${THOME}/build/unpack Module-Runtime-0.016
cd Module-Runtime-0.016
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-module-runtime Module-Runtime-0.016
