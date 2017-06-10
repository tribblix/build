#!/bin/sh
#
# depends on perl
#
rm -fr /tmp/ckx
mkdir -p /tmp/ckx/usr/versions
cd /tmp/ckx/usr/versions
git clone https://github.com/sullo/nikto.git nikto
mv nikto nikto.raw
mv nikto.raw/program nikto
mv nikto.raw/README.md nikto
rm -fr nikto.raw
cd
${THOME}/build/create_pkg TRIBnikto /tmp/ckx
rm -fr /tmp/ckx
