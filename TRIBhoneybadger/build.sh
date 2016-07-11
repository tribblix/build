#!/bin/sh
#
# needs 64-bit libpcap
#
mkdir h
cd h
go get -v github.com/david415/HoneyBadger/cmd/honeyBadger
rm -fr /tmp/hh
mkdir -p /tmp/hh/usr/bin /tmp/hh/usr/share/HoneyBadger
cp bin/honeyBadger /tmp/hh/usr/bin
cp src/github.com/david415/HoneyBadger/README.rst /tmp/hh/usr/share/HoneyBadger
cp src/github.com/david415/HoneyBadger/LICENSE* /tmp/hh/usr/share/HoneyBadger
${THOME}/build/create_pkg TRIBhoneybadger /tmp/hh
rm -fr /tmp/hh
