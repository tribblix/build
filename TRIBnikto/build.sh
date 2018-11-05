#!/bin/sh
#
# depends on perl
#
rm -fr /tmp/ckx
mkdir -p /tmp/ckx/usr/versions
mkdir -p /tmp/ckx/usr/share/man/man1
cd /tmp/ckx/usr/versions
#
# no real versions after 2.1.6, so just take a git checkout
# it still claims 2.1.6 as the version, though
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
