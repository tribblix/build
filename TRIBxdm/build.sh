#!/bin/sh
#
# follow the OI build
#
env DEF_SERVER=/usr/bin/X DEF_USER_PATH=/usr/bin:/usr/sbin DEF_SYSTEM_PATH=/usr/bin:/usr/sbin ${THOME}/build/dobuild xdm-1.1.11 -C "--sysconfdir=/etc --localstatedir=/var --with-xdmconfigdir=/etc/X11/xdm --with-piddir=/var/run/xdm --with-authdir=/var/run/xdm --bindir=/usr/sbin --with-xrdb=/usr/bin/xrdb"
${THOME}/build/genpkg TRIBxdm xdm-1.1.11
