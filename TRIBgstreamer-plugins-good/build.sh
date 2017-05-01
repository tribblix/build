#!/bin/sh
#
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/dobuild -64 gst-plugins-good-0.10.31 -C "--with-libv4l2=no --disable-gst_v4l2"
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/genpkg TRIBgstreamer-plugins-good gst-plugins-good-0.10.31
