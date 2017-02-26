#!/bin/sh
#
#
#
env CPPFLAGS=-DHAVE_FIONREAD_IN_SYS_FILIO=1 ${THOME}/build/dobuild -64 -gnu gst-plugins-base-1.10.4 -C "--disable-introspection"
${THOME}/build/genpkg TRIBgstreamer1-plugins-base gst-plugins-base-1.10.4
