#!/bin/sh
#
# the tarball is misnamed
# mv xorriso-1.5.4.pl02.tar.gz xorriso-1.5.4.tar.gz
#
${THOME}/build/dobuild -64only xorriso-1.5.4
${THOME}/build/genpkg TRIBxorriso xorriso-1.5.4
