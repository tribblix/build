#!/bin/sh
#
# simple makefile
#
${THOME}/build/dobuild tree-1.7.0
cd tree-1.7.0
rm -fr /tmp/trt
mkdir -p /tmp/trt/usr/bin
cp tree /tmp/trt/usr/bin
mkdir -p /tmp/trt/usr/share/man/man1
cp doc/tree.1 /tmp/trt/usr/share/man/man1
${THOME}/build/create_pkg TRIBtree /tmp/trt
cd ..
rm -fr /tmp/trt
