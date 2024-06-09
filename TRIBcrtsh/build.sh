#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

mkdir c
cd c

git clone https://github.com/knqyf263/crtsh
cd crtsh
env GOPATH=`pwd`/.. go install
cd ..

rm -fr /tmp/ee
mkdir -p /tmp/ee/usr/bin
cp bin/crtsh /tmp/ee/usr/bin
mkdir -p /tmp/ee/usr/share/doc/crtsh
cp crtsh/LICENSE crtsh/README.md /tmp/ee/usr/share/doc/crtsh
${THOME}/build/create_pkg TRIBcrtsh /tmp/ee
rm -fr /tmp/ee

cd ..
chmod -R u+rw c
rm -fr c
