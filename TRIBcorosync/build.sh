#!/bin/sh
#
# postconf script to fix up use of the wrong awk
#
${THOME}/build/dobuild corosync-2.4.5 -64 -C "--localstatedir=/var --sysconfdir=/etc"
${THOME}/build/genpkg TRIBcorosync corosync-2.4.5
