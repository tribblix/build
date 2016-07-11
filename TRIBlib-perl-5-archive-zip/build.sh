#!/bin/sh
#
${THOME}/build/unpack Archive-Zip-1.53
cd Archive-Zip-1.53
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-archive-zip
