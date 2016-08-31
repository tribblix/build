#!/bin/sh
#
# zap install yajl
#
${THOME}/build/dobuild collectd-5.5.2 -C "--disable-static --localstatedir=/var CFLAGS=-std=gnu99"
${THOME}/build/genpkg TRIBcollectd collectd-5.5.2
