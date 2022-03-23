#!/bin/sh
#
${THOME}/build/unpack Archive-Zip-1.68
cd Archive-Zip-1.68
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-archive-zip
cd ..
