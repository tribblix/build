#!/bin/sh
#
# Recreate lintlibs [should match the illumos build]
#
cd ${HOME}/Illumos/illumos-gate/proto/root_i386
rm -fr /tmp/il
mkdir /tmp/il
tar cf - lib/llib* lib/amd64/llib* usr/lib/llib* usr/lib/amd64/llib* | (cd /tmp/il ; tar xfBp -)
${THOME}/build/create_pkg TRIBil-lintlibs /tmp/il
rm -fr /tmp/il
