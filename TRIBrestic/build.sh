#!/bin/sh
#
# not an official release as there hasn't been one since
# illumos support was added
#
mkdir rr
cd rr
git clone https://github.com/restic/restic
cd restic
#
# do not use go 1.9.4 for this
#
go run build.go

rm -fr /tmp/rr
mkdir -p /tmp/rr/usr/bin
cp restic /tmp/rr/usr/bin
mkdir -p /tmp/rr/usr/share/restic
cp README.rst LICENSE VERSION /tmp/rr/usr/share/restic
$THOME/build/create_pkg TRIBrestic /tmp/rr
rm -fr /tmp/rr
