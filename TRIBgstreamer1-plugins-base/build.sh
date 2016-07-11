#!/bin/sh
#
#
#
env CPPFLAGS=-DHAVE_FIONREAD_IN_SYS_FILIO=1 ${THOME}/build/dobuild -gnu gst-plugins-base-1.8.2 -C "--disable-introspection"
${THOME}/build/genpkg TRIBgstreamer1-plugins-base gst-plugins-base-1.8.2
