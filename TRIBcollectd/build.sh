#!/bin/sh
#
${THOME}/build/dobuild -64only collectd-5.12.0 -C "--disable-static --localstatedir=/var --sysconfdir=/etc --localstatedir=/var --enable-rrdtool"
${THOME}/build/genpkg TRIBcollectd collectd-5.12.0
