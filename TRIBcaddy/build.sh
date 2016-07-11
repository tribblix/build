#!/bin/sh
#
${THOME}/build/unpack caddy-0.8.0
env GOPATH=`pwd` go get github.com/mholt/caddy
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/caddyserver
cp bin/caddy /tmp/cs/usr/bin
cp README.md LICENSE.txt /tmp/cs/usr/share/caddyserver
${THOME}/build/create_pkg TRIBcaddy /tmp/cs
rm -fr /tmp/cs
