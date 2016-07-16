#!/bin/sh
#
# zap install yajl
# parallel make is a bit buggy
${THOME}/build/dobuild collectd-5.5.0 -C "--disable-static --localstatedir=/var CFLAGS=-std=gnu99"
cd collectd-5.5.0 ; gmake -j 4 ; cd ..
${THOME}/build/genpkg TRIBcollectd collectd-5.5.0
