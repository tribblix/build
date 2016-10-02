#!/bin/sh
#
${THOME}/build/unpack AppConfig-1.71
cd AppConfig-1.71
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-appconfig
cd ..
