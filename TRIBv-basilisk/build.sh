#!/bin/sh
#
# this is a two-stage build
# first, build basilisk, the build is like Pale Moon
#
# the two tweaks you'll need are
#   ac_add_options --disable-gconf
#   ac_add_options --disable-pulseaudio
# because Tribblix does not ship those, and create g-prefixed links for
#   gnm greadelf
# somewhere in your path
#
# Using the git method
# mkdir basilisk-source
# cd basilisk-source
# git clone https://repo.palemoon.org/Basilisk-Dev/Basilisk ./
# git submodule init && git submodule update
#
# and then the build
#
# cp $THOME/build/patches/basilisk.mozconfig .mozconfig
# ./mach build
# ./mach package
#
# if keeping the same git clone do the following
# git pull
# git submodule update
# ./mach clobber
#
# the build takes a while, especially as there are link steps that involve
# a 15GB ld process
#
# it's suggested that './mach run' can run basilisk from the build tree
# but I've found that doesn't work
#
# This will create a tarball
#   basilisk-20230807090211.solaris2.11-x86_64-illumos.tar.xz
# in the following directory
#   obj-x86_64-pc-solaris2.11/dist
# this is the tarball we unpack to create the package
#
${THOME}/build/pkg_tarball TRIBv-basilisk basilisk-20230807090211.solaris2.11-x86_64-illumos