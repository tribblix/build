#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir rr
cd rr
git clone https://github.com/restic/restic
cd restic
#
git checkout v0.18.1
/usr/versions/go-1.25/bin/go run build.go

rm -fr /tmp/rr
mkdir -p /tmp/rr/usr/bin
cp restic /tmp/rr/usr/bin
mkdir -p /tmp/rr/usr/share/restic
cp README.md LICENSE VERSION /tmp/rr/usr/share/restic
mkdir -p /tmp/rr/usr/share/man/man1
/tmp/rr/usr/bin/restic generate --man /tmp/rr/usr/share/man/man1
$THOME/build/create_pkg TRIBrestic /tmp/rr
rm -fr /tmp/rr
