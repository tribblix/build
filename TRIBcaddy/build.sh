#!/bin/sh
#
env GOPATH=`pwd` go get github.com/mholt/caddy/caddy
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/caddyserver
cp bin/caddy /tmp/cs/usr/bin
cp src/github.com/mholt/caddy/README.md src/github.com/mholt/caddy/LICENSE.txt /tmp/cs/usr/share/caddyserver
${THOME}/build/create_pkg TRIBcaddy /tmp/cs
rm -fr /tmp/cs
