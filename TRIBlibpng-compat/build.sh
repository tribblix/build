#!/bin/sh
#
# Add new version I built, ship straight copies of older versions
#
rm -fr /tmp/lp
mkdir /tmp/lp
${THOME}/build/create_pkg TRIBlibpng-compat /tmp/lp
rm -fr /tmp/lp
