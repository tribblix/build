#!/bin/sh
#
#
#
${THOME}/build/dobuild openntpd-6.2p3 -C "--sysconfdir=/etc --localstatedir=/var --with-privsep-user=ntp"
${THOME}/build/genpkg TRIBopenntpd openntpd-6.2p3
