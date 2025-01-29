#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# depends on perl
#
rm -fr /tmp/ckx
mkdir -p /tmp/ckx/usr/versions
mkdir -p /tmp/ckx/usr/share/man/man1
cd /tmp/ckx/usr/versions
#
# version bump, but still use a git checkout
#
git clone https://github.com/sullo/nikto.git nikto
mv nikto nikto.raw
mv nikto.raw/program nikto
mv nikto.raw/README.md nikto
mv nikto.raw/documentation/nikto.1 ../share/man/man1
rm -fr nikto.raw

cd
${THOME}/build/create_pkg TRIBnikto /tmp/ckx
rm -fr /tmp/ckx
