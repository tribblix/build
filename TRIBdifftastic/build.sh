#!/bin/sh
#

#
$THOME/build/unpack difftastic-0.55.0
cd difftastic-0.55.0
#
# -- release took hours without finishing, so don't
#
cargo build

rm -fr /tmp/ll
mkdir -p /tmp/ll/usr/bin
mkdir -p /tmp/ll/usr/share/difftastic

ginstall -s -Dm755 ./target/debug/difft -t /tmp/ll/usr/bin
cp LICENSE* README.md /tmp/ll/usr/share/difftastic
cd ..

${THOME}/build/create_pkg TRIBdifftastic /tmp/ll
rm -fr /tmp/ll
