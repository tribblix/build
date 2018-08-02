#!/bin/sh
#
${THOME}/build/unpack Illumos-Zones-0.1.7
cd Illumos-Zones-0.1.7
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-il-zones Illumos-Zones-0.1.7
