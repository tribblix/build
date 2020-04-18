#!/bin/sh
#
# eom (needs itstool, newer intltool, mate-icon-theme, mate-desktop)
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu eom-1.22.2 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-eom eom-1.22.2
