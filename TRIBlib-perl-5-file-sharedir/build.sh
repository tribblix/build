#!/bin/sh
#
${THOME}/build/unpack File-ShareDir-1.118
cd File-ShareDir-1.118
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-file-sharedir File-ShareDir-1.118
