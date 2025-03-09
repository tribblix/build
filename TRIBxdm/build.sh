#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# follow the OI build
#
# we patch the configuration files to set xdm up to serve remote xdmcp
# clients, as the expectation is that SLiM is used as the desktop login
# manager for the console display
#
env DEF_SERVER=/usr/bin/X DEF_USER_PATH=/usr/bin:/usr/sbin DEF_SYSTEM_PATH=/usr/bin:/usr/sbin ${THOME}/build/dobuild -64only xdm-1.1.17 -C "--sysconfdir=/etc --localstatedir=/var --with-xdmconfigdir=/etc/X11/xdm --with-xdmlibdir=/usr/lib/X11/xdm --with-piddir=/var/run/xdm --with-authdir=/var/run/xdm --bindir=/usr/bin --sbindir=/usr/sbin --with-xrdb=/usr/bin/xrdb ADMIN_MAN_SUFFIX=8"
#
# also add xsm, since it's used as the fallback session manager
# if a user's .xsession file isn't found
#
${THOME}/build/dobuild -64only xsm-1.0.6 -C "--sysconfdir=/etc"

${THOME}/build/genpkg TRIBxdm xdm-1.1.17 xsm-1.0.6
