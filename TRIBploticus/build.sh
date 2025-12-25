#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack ploticus242_src
cd ploticus242/src
#edit Makefile
# - add -m64 to CC
# - enable x11 (libs is alt linux)
# - INSTALLBIN to /usr/bin
#edit pl.h
# PREFABS_DIR = /usr/share/ploticus
gmake clean ; gmake
rm -fr /tmp/pp
mkdir -p /tmp/pp/usr/bin /tmp/pp/usr/share/ploticus
cp pl /tmp/pp/usr/bin
cp ../prefabs/* /tmp/pp/usr/share/ploticus
${THOME}/build/create_pkg TRIBploticus /tmp/pp
rm -fr /tmp/pp
