#!/bin/sh
#
#
#
${THOME}/build/dobuild -64 -gnu gstreamer-1.16.3 -C "--disable-introspection --disable-examples"
${THOME}/build/genpkg TRIBgstreamer1 gstreamer-1.16.3
