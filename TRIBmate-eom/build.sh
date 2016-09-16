#!/bin/sh
#
# eom (needs itstool, newer intltool, mate-icon-theme, mate-desktop)
#
${THOME}/build/dobuild -gnu eom-1.14.2 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-eom eom-1.14.2
