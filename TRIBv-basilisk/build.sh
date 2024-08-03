#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a two-stage build
# first, build basilisk, the build is like Pale Moon
#
# requires python2, and also requires TRIBopenssl11-compat because
# hashlib is linked against openssl11
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
# temporary hack: edit the file
# basilisk/installer/package-manifest.in
# and guard the line
# @RESPATH@/components/content_geckomediaplugins.xpt
# with an #ifdef MOZ_GMP / #endif
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
# but I've found that doesn't always work
#
# This will create a tarball
#   basilisk-20240803112139.solaris2.11-x86_64-illumos.tar.xz
# in the following directory
#   obj-x86_64-pc-solaris2.11/dist
# this is the tarball we unpack to create the package
#
${THOME}/build/pkg_tarball TRIBv-basilisk basilisk-20240803112139.solaris2.11-x86_64-illumos
