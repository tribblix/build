#!/bin/sh
#
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/dobuild -64 -gnu gst-plugins-base-0.10.36 -C "--disable-introspection --disable-examples"
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/genpkg TRIBgstreamer-plugins-base gst-plugins-base-0.10.36
