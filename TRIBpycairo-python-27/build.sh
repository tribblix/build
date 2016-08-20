#!/bin/sh
#
${THOME}/build/unpack py2cairo-1.10.0
cd py2cairo-1.10.0
./waf configure --prefix=/usr
./waf build
rm -fr /tmp/pil
./waf install --destdir=/tmp/pil
${THOME}/build/create_pkg TRIBpycairo-python-27 /tmp/pil
rm -fr /tmp/pil
