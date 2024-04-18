#!/bin/sh
#
# eom (needs itstool, newer intltool, mate-icon-theme, mate-desktop)
#
${THOME}/build/dobuild +gnu -64only eom-1.26.1
${THOME}/build/genpkg TRIBmate-eom eom-1.26.1
