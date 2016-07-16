#!/bin/sh
#
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/dobuild -gnu gst-plugins-base-0.10.33
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/genpkg TRIBgstreamer-plugins-base gst-plugins-base-0.10.33
