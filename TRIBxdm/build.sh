#!/bin/sh
#
# follow the OI build
#
env DEF_SERVER=/usr/bin/X DEF_USER_PATH=/usr/bin:/usr/sbin DEF_SYSTEM_PATH=/usr/bin:/usr/sbin ${THOME}/build/dobuild -64only xdm-1.1.16 -C "--sysconfdir=/etc --localstatedir=/var --with-xdmconfigdir=/etc/X11/xdm --with-xdmlibdir=/usr/lib/X11/xdm --with-piddir=/var/run/xdm --with-authdir=/var/run/xdm --bindir=/usr/bin --sbindir=/usr/sbin --with-xrdb=/usr/bin/xrdb ADMIN_MAN_SUFFIX=8"
${THOME}/build/genpkg TRIBxdm xdm-1.1.16
