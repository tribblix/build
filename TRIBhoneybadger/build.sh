#!/bin/sh
#
# needs 64-bit libpcap
#
mkdir h
cd h
env GOPATH=`pwd` go install github.com/david415/HoneyBadger/cmd/honeyBadger@latest
rm -fr /tmp/hh
mkdir -p /tmp/hh/usr/bin /tmp/hh/usr/share/HoneyBadger
cp bin/honeyBadger /tmp/hh/usr/bin
cp pkg/mod/github.com/david415/*/README.rst /tmp/hh/usr/share/HoneyBadger
cp pkg/mod/github.com/david415/*/LICENSE* /tmp/hh/usr/share/HoneyBadger
${THOME}/build/create_pkg TRIBhoneybadger /tmp/hh
rm -fr /tmp/hh
