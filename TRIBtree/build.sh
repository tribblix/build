#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# simple makefile
# 64-bitness imposed by the Makefile patch
#
${THOME}/build/dobuild tree-2.2.1
cd tree-2.2.1
rm -fr /tmp/trt
mkdir -p /tmp/trt/usr/bin
cp tree /tmp/trt/usr/bin
mkdir -p /tmp/trt/usr/share/man/man1
cp doc/tree.1 /tmp/trt/usr/share/man/man1
${THOME}/build/create_pkg TRIBtree /tmp/trt
cd ..
rm -fr /tmp/trt
