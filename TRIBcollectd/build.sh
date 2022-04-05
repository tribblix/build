#!/bin/sh
#
# zap install yajl
#
${THOME}/build/dobuild -64only collectd-5.7.2 -C "--disable-static --localstatedir=/var CFLAGS=-std=gnu99 --sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBcollectd collectd-5.7.2
