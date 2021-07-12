#!/bin/sh
#
#
#
${THOME}/build/dobuild -64 -gnu gst-plugins-good-1.16.3 -C "--disable-sunaudio --disable-gst_v4l2"
${THOME}/build/genpkg TRIBgstreamer1-plugins-good gst-plugins-good-1.16.3
