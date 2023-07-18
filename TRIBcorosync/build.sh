#!/bin/sh
#
# postconf script to fix up use of the wrong awk
#
${THOME}/build/dobuild -64only corosync-2.4.6 -C "--localstatedir=/var --sysconfdir=/etc"
${THOME}/build/genpkg TRIBcorosync corosync-2.4.6
