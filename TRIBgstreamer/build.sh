#!/bin/sh
#
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/dobuild -64 -gnu gstreamer-0.10.36 -C --disable-introspection
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/genpkg TRIBgstreamer gstreamer-0.10.36
