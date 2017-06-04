#!/bin/sh
#
# 64-bit build fails as it picks up 32-bit NSS
#
${THOME}/build/dobuild corosync-2.4.2 -C "--localstatedir=/var --sysconfdir=/etc"
${THOME}/build/genpkg TRIBcorosync corosync-2.4.2
