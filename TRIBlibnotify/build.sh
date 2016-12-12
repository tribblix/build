#!/bin/sh
#
# later versions require gtk3
#
${THOME}/build/dobuild -64 libnotify-0.5.2
${THOME}/build/genpkg TRIBlibnotify libnotify-0.5.2
