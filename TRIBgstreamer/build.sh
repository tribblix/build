#!/bin/sh
#
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/dobuild -gnu gstreamer-0.10.36
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/genpkg TRIBgstreamer gstreamer-0.10.36
