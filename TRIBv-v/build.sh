#!/bin/sh
#
git clone https://github.com/vlang/v
cd v
#
# we can't run the make directly as we need to patch the vc source that
# it downloads as part of the process but the make is pretty simple...
#
#gmake CC=gcc
rm -rf vc/
git clone --depth 1 --quiet https://github.com/vlang/vc
sed -i 's:"cc":"gcc":' vc/v.c
gcc -std=gnu11 -w -o v vc/v.c -lm
rm -fr vc/

#
# there's no install, so just copy what we have
#
rm -fr .git
rm -fr .github
rm -f .git*
rm -f .travis.yml
rm -f Dockerfile
rm -f make.bat

mkdir -p /tmp/ppv/usr/versions/v
tar cf - . | (cd /tmp/ppv/usr/versions/v ; tar xf -)
${THOME}/build/create_pkg TRIBv-v /tmp/ppv
rm -fr /tmp/ppv

