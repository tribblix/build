#!/bin/sh
#
# NOTE: this modules was last built against perl5.10.0
#
${THOME}/build/unpack File-Path-2.09
cd File-Path-2.09
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-file-path
