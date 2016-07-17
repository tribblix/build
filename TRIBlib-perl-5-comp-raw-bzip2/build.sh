#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
${THOME}/build/unpack Compress-Raw-Bzip2-2.064
cd Compress-Raw-Bzip2-2.064
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-comp-raw-bzip2
