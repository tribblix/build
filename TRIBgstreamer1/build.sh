#!/bin/sh
#
#
#
${THOME}/build/dobuild -64 -gnu gstreamer-1.10.4 -C "--disable-introspection"
${THOME}/build/genpkg TRIBgstreamer1 gstreamer-1.10.4
