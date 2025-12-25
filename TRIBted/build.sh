#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack ted-2.23
cd Ted-2.23
make CONFIGURE_OPTIONS=--with-MOTIF
mkdir -p /tmp/ted1/usr/bin
mkdir -p /tmp/ted1/usr/share/Ted
mkdir -p /tmp/ted1/usr/share/applications
cp Ted/Ted /tmp/ted1/usr/bin
cat tedPackage/TedDatadir.tar | ( cd /tmp/ted1/usr/share/Ted ; tar xf -)
cat tedPackage/Ted.desktop.in | sed s:@DATADIR@:/usr/share: > /tmp/ted1/usr/share/applications/Ted.desktop
${THOME}/build/create_pkg TRIBted /tmp/ted1
rm -fr /tmp/ted1
