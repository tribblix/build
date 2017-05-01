#!/bin/sh
#
# zap install yajl
#
${THOME}/build/dobuild collectd-5.7.1 -C "--disable-static --localstatedir=/var CFLAGS=-std=gnu99 --sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBcollectd collectd-5.7.1
