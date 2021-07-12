#!/bin/sh
#
#
#
env CPPFLAGS=-DHAVE_FIONREAD_IN_SYS_FILIO=1 ${THOME}/build/dobuild -64 -gnu gst-plugins-base-1.16.3 -C "--disable-introspection --disable-examples --disable-gles2"
${THOME}/build/genpkg TRIBgstreamer1-plugins-base gst-plugins-base-1.16.3
