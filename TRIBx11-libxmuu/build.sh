#!/bin/sh
#
# historically the libXmu was split, this provides an empty
# libxmuu package so that updates correctly wipe the old one
#
rm -fr /tmp/c1
mkdir -p /tmp/c1
${THOME}/build/create_pkg TRIBx11-libxmuu /tmp/c1
rm -fr /tmp/c1
