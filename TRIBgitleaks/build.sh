#!/bin/sh
#
git clone https://github.com/zricethezav/gitleaks.git
cd gitleaks
# explicitly demands this version of go
# and needs gnu sort
env PATH=/usr/versions/go-1.19/bin:/usr/gnu/bin:$PATH gmake build

rm -fr /tmp/cgl
mkdir -p /tmp/cgl/usr/bin
mkdir -p /tmp/cgl/usr/share/gitleaks
cp ./gitleaks /tmp/cgl/usr/bin
cp ./README.md ./LICENSE /tmp/cgl/usr/share/gitleaks
${THOME}/build/create_pkg TRIBgitleaks /tmp/cgl
rm -fr /tmp/cgl

cd ..
