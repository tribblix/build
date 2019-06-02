#!/bin/sh
#
# OI ships iso8859-xx fonts in separate itty-bitty packages
# Tribblix ships them all in TRIBfont-xorg-core
# but we used to ship TRIBfont-xorg-iso8859-1, so this empty
# package is necessary so that the prior TRIBfont-xorg-iso8859-1
# package gets removed properly
#
rm -fr /tmp/c1
mkdir -p /tmp/c1
${THOME}/build/create_pkg TRIBfont-xorg-iso8859-1 /tmp/c1
rm -fr /tmp/c1
