#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
git clone https://github.com/junegunn/fzf.git
cd fzf
git checkout v0.67.0

#
# the Makefile attempts to enumerate all possible build targets
# which doesn't really work, and our uname output isn't recognised
#
sed -i s:x86_64:i86pc: Makefile

env PATH=/usr/versions/go-1.25/bin:$PATH gmake bin/fzf

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/man/man1

ginstall -Dm755 ./bin/fzf* -t /tmp/ll/usr/bin
cp man/man1/fzf*.1 /tmp/ll/usr/share/man/man1
cd ..

${THOME}/build/create_pkg TRIBfzf /tmp/ll
rm -fr /tmp/ll
