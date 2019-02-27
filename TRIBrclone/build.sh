#!/bin/sh
#
env GOPATH=`pwd` go get -u -v github.com/ncw/rclone
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/rclone
mkdir -p /tmp/cs/usr/share/man/man1
cp bin/rclone /tmp/cs/usr/bin
cp src/github.com/ncw/rclone/README.md src/github.com/ncw/rclone/COPYING /tmp/cs/usr/share/rclone
cp src/github.com/ncw/rclone/rclone.1 /tmp/cs/usr/share/man/man1
${THOME}/build/create_pkg TRIBrclone /tmp/cs
rm -fr /tmp/cs
