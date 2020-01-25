#!/bin/sh
#
${THOME}/build/dobuild dhcp-4.4.2 -C "--sysconfdir=/etc --localstatedir=/var --enable-use-sockets --enable-ipv4-pktinfo ac_cv_search_inet_aton=-lnsl" -J 1
${THOME}/build/genpkg TRIBdhcp-server dhcp-4.4.2
