#!/bin/sh
#
#
#
${THOME}/build/dobuild -gnu gstreamer-1.8.2 -C "--disable-introspection"
${THOME}/build/genpkg TRIBgstreamer1 gstreamer-1.8.2
