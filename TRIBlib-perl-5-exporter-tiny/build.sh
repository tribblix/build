#!/bin/sh
#
${THOME}/build/unpack Exporter-Tiny-1.006002
cd Exporter-Tiny-1.006002
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-exporter-tiny Exporter-Tiny-1.006002
