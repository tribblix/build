#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack gopher-release-3.0.17
cd gopher-release-3.0.17
./configure --prefix=/usr
gmake
rm -fr /tmp/ggf
mkdir -p /tmp/ggf/usr/bin
mkdir -p /tmp/ggf/usr/etc/gopher
mkdir -p /tmp/ggf/usr/share/man/man1
mkdir -p /tmp/ggf/usr/share/man/man5
cp gopher/gopher gophfilt/gophfilt /tmp/ggf/usr/bin
cp gopher/gopher.rc gopher/gopherremote.rc gopher/gopher.hlp /tmp/ggf/usr/etc/gopher
cp doc/gopher.1 doc/gophfilt.1 /tmp/ggf/usr/share/man/man1
cp doc/gopherrc.5 /tmp/ggf/usr/share/man/man5
${THOME}/build/create_pkg TRIBgopher /tmp/ggf
rm -fr /tmp/ggf
cd ..
