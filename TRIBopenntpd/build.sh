#!/bin/sh
#
#
#
${THOME}/build/dobuild openntpd-6.0p1 -C "--sysconfdir=/etc --localstatedir=/var --with-privsep-user=ntp"
${THOME}/build/genpkg TRIBopenntpd openntpd-6.0p1
