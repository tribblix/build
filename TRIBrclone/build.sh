#!/bin/sh
#
$THOME/build/unpack rclone-v1.66.0
cd rclone-v1.66.0
env PATH=/usr/gnu/bin:/usr/versions/go-1.21/bin:$PATH gmake

rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/rclone
mkdir -p /tmp/cs/usr/share/man/man1
cp ./rclone /tmp/cs/usr/bin
cp ./README.md ./COPYING /tmp/cs/usr/share/rclone
cp ./rclone.1 /tmp/cs/usr/share/man/man1
${THOME}/build/create_pkg TRIBrclone /tmp/cs
rm -fr /tmp/cs
cd ..
