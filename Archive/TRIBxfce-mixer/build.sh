#!/bin/sh
#
# this package is osolete as of xfce 4.12
#
# needs gstreamer
# needs libunique
#
${THOME}/build/dobuild -gnu xfce4-mixer-4.10.0
${THOME}/build/genpkg TRIBxfce-mixer xfce4-mixer-4.10.0
