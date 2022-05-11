#!/bin/sh
#
# this is a two-stage build
# first, build palemoon according to the instructions
#   http://developer.palemoon.org/build/sunos/
#
# the two tweaks you'll need are
#   ac_add_options --disable-gconf
#   ac_add_options --disable-pulseaudio
# because Tribblix does not ship those, and create g-prefixed links for
#   gnm greadelf
# somewhere in your path
#
# We're back to the git method
# mkdir palemoon-source
# cd palemoon-source
# git clone https://repo.palemoon.org/MoonchildProductions/Pale-Moon.git ./
# git submodule init && git submodule update
# git checkout release && git submodule update
#
# and then the build
#
# cp $THOME/build/patches/palemoon.mozconfig .mozconfig
# ./mach build
# ./mach package
#
# the build takes a while, especially as there are link steps that involve
# a 15GB ld process
#
# it's suggested that './mach run' can run palemoon from the build tree
# but I've found that doesn't work
#
# This will create a tarball
#   palemoon-31.0.0.solaris2.11-x86_64-illumos.tar.xz
# in the following directory
#   obj-x86_64-pc-solaris2.11/dist
# this is the tarball we unpack to create the package
#
${THOME}/build/pkg_tarball TRIBv-palemoon palemoon-31.0.0.solaris2.11-x86_64-illumos
