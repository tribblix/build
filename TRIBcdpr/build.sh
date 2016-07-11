#!/bin/sh
#
${THOME}/build/dobuild cdpr-2.4
mkdir -p /tmp/cc/usr/sbin
cp cdpr-2.4/cdpr /tmp/cc/usr/sbin
${THOME}/build/create_pkg TRIBcdpr /tmp/cc
rm -fr /tmp/cc
