#!/bin/sh
#
# this is a combined build that produces 3 packages
# we follow the OI build, patches, and packaging
#
# manpages require xmlto to be installed
# build requires autoconf-archive to be installed
#
${THOME}/build/dobuild -64 dbus-1.12.24 -C "--sysconfdir=/etc --localstatedir=/var --with-dbus-user=root --disable-static --libexecdir=/usr/lib --with-dbus-daemondir=/usr/lib --disable-dependency-tracking"

#
# now build packages
#
${THOME}/build/genpkg TRIBsys-lib-dbus dbus-1.12.24
${THOME}/build/genpkg TRIBsys-libdbus dbus-1.12.24
${THOME}/build/genpkg TRIBsys-lib-dbus-dbus-x11 dbus-1.12.24
