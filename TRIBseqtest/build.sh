#!/bin/sh
#
git clone https://github.com/luceracloud/seqtest.git
cd seqtest
make CC=gcc
rm -fr /tmp/ss
mkdir -p /tmp/ss/usr/bin /tmp/ss/usr/share/seqtest
cp seqtest /tmp/ss/usr/bin
cp README LICENSE /tmp/ss/usr/share/seqtest
${THOME}/build/create_pkg TRIBseqtest /tmp/ss
rm -fr /tmp/ss
