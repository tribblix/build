#!/bin/sh
#
# (needs a patch to configure so libgadu doesnt barf on gnutls)
# it's basically broken and requires older gstreamer/farstream
#
env TRIBBLIX_CPPFLAGS=-D__SunOS ${THOME}/build/dobuild -gnu pidgin-2.13.0 -C "--disable-meanwhile --disable-vv --disable-farstream --disable-avahi --disable-nm --disable-tcl --disable-perl"
${THOME}/build/genpkg TRIBpidgin pidgin-2.13.0
