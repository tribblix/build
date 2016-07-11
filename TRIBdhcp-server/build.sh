#!/bin/sh
#
${THOME}/build/dobuild dhcp-4.3.4 -C "--sysconfdir=/etc --localstatedir=/var --enable-use-sockets --enable-ipv4-pktinfo " -J 1
${THOME}/build/genpkg TRIBdhcp-server dhcp-4.3.4
