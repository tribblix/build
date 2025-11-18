#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
git clone https://github.com/gitleaks/gitleaks.git
cd gitleaks
git checkout v8.29.0
# needs gnu sort
env PATH=/usr/versions/go-1.25/bin:/usr/gnu/bin:$PATH gmake build

rm -fr /tmp/cgl
mkdir -p /tmp/cgl/usr/bin
mkdir -p /tmp/cgl/usr/share/gitleaks
cp ./gitleaks /tmp/cgl/usr/bin
cp ./README.md ./LICENSE /tmp/cgl/usr/share/gitleaks
${THOME}/build/create_pkg TRIBgitleaks /tmp/cgl
rm -fr /tmp/cgl

cd ..
