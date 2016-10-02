#!/bin/sh
#
${THOME}/build/unpack GD-2.56
cd GD-2.56
# permissions here seem to be read-only
chmod -R u+w bdf_scripts
# the layout assume Module::Build which has been dropped
mv lib/* .
gsed -i s:lib/GD:GD:g Makefile.PL
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-gd
cd ..
