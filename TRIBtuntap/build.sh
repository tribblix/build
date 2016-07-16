#!/bin/sh
#
# needs the illumos versions of the gcc compiler
# zap install TRIBdev-illumos-gcc
#
${THOME}/build/unpack -64 kaizawa-tuntap-43816b1
cd kaizawa-tuntap-43816b1-64bit
env PATH=/opt/gcc/4.4.4/bin:$PATH ./configure
env PATH=/opt/gcc/4.4.4/bin:$PATH make
cd ..
cd kaizawa-tuntap-43816b1
env PATH=/opt/gcc/4.4.4/bin:$PATH ./configure --disable-64bit
env PATH=/opt/gcc/4.4.4/bin:$PATH make
cd ..
rm -fr /tmp/tuntap
mkdir -p /tmp/tuntap/usr/kernel/drv/amd64
mkdir -p /tmp/tuntap/usr/include/net
cd kaizawa-tuntap-43816b1
/usr/bin/ginstall -c -m 644 tun /tmp/tuntap/usr/kernel/drv
/usr/bin/ginstall -c -m 644 tap /tmp/tuntap/usr/kernel/drv
cd ..
cd kaizawa-tuntap-43816b1-64bit
/usr/bin/ginstall -c -m 644 ./if_tun.h /tmp/tuntap/usr/include/net 
/usr/bin/ginstall -c -m 644 tun /tmp/tuntap/usr/kernel/drv/amd64
/usr/bin/ginstall -c -m 644 tap /tmp/tuntap/usr/kernel/drv/amd64
/usr/bin/ginstall -c -m 644 ./tun.conf /tmp/tuntap/usr/kernel/drv
/usr/bin/ginstall -c -m 644 ./tap.conf /tmp/tuntap/usr/kernel/drv
cd ..
${THOME}/build/create_pkg TRIBtuntap /tmp/tuntap
