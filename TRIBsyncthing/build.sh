#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir srr
cd srr
$THOME/build/unpack syncthing-source-v2.1.3
cd syncthing
/usr/versions/go-1.26/bin/go run build.go

rm -fr /tmp/srr
mkdir -p /tmp/srr/usr/bin
cp bin/* /tmp/srr/usr/bin
mkdir -p /tmp/srr/usr/share/syncthing
cp README.md LICENSE /tmp/srr/usr/share/syncthing
mkdir -p /tmp/srr/usr/share/man/man1
cp man/*.1 /tmp/srr/usr/share/man/man1
mkdir -p /tmp/srr/usr/share/man/man7
cp man/*.7 /tmp/srr/usr/share/man/man7
$THOME/build/create_pkg TRIBsyncthing /tmp/srr
rm -fr /tmp/srr
