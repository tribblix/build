#!/bin/sh
#
# needs GD::Text
#
${THOME}/build/unpack GDGraph-1.53
cd GDGraph-1.53
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-gdgraph
cd ..
