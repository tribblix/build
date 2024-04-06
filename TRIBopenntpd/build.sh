#!/bin/sh
#
#
#
${THOME}/build/dobuild -64only openntpd-6.8p1 -C "--sysconfdir=/etc --localstatedir=/var --with-privsep-user=ntp ac_cv_header_sys_sensors_h=no"
${THOME}/build/genpkg TRIBopenntpd openntpd-6.8p1
