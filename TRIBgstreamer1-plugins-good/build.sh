#!/bin/sh
#
#
#
${THOME}/build/dobuild -gnu gst-plugins-good-1.8.2 -C "--disable-sunaudio --disable-gst_v4l2"
${THOME}/build/genpkg TRIBgstreamer1-plugins-good gst-plugins-good-1.8.2
