#!/bin/sh
#
# eom (needs itstool, newer intltool, mate-icon-theme, mate-desktop)
${THOME}/build/dobuild -gnu eom-1.10.3
${THOME}/build/genpkg TRIBmate-eom eom-1.10.3
#
# eom-1.14.1 needs gdk-pixbuf update, left downrev
#${THOME}/build/dobuild -gnu eom-1.14.1
#${THOME}/build/genpkg TRIBmate-eom eom-1.14.1
