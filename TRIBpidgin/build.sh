#!/bin/sh
#
# (needs a patch to configure so libgadu doesn't barf on gnutls)
# it's basically broken and requires older gstreamer/farstream
#
# you can't --disable-vv, because that generates inconsistent guards
#
env TRIBBLIX_CPPFLAGS=-D__SunOS ${THOME}/build/dobuild -gnu pidgin-2.14.1 -C "--disable-meanwhile --disable-avahi --disable-nm --disable-tcl --disable-perl"
${THOME}/build/genpkg TRIBpidgin pidgin-2.14.1
