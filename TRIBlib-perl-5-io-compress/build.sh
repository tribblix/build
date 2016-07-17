#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
# io-compress need compress-raw-bzip2
#
${THOME}/build/unpack IO-Compress-2.064
cd IO-Compress-2.064
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-io-compress
