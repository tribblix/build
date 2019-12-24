#!/bin/sh
#
# this is the first item in the mate build
# order is:
# TRIBlibmatekbd
# TRIBmate-desktop
# TRIBmate-settings-daemon
# TRIBmate-menus
# TRIBmate-marco
# TRIBmate-control-center
# TRIBmate-session
# TRIBmate-weather
# TRIBmate-panel
# TRIBmate-backgrounds
# TRIBmate-icon-them
# TRIBmate-caja
# TRIBmate-engrampa
# TRIBmate-atril
# TRIBmate-pluma
# TRIBmate-eom (downrev)
# TRIBmate-theme (downrev)
#
# prereqs: libxklavier libcanberra libtool zenity dconf
#  build prereqs: itstool intltool iso-codes
#  stick with old mate-themes and eom
# Add: TRIBlibtool TRIBlibxklavier TRIBzenity TRIBlibcanberra
#
# libmatekbd-1.14.1 (needs libklavier)
${THOME}/build/dobuild -gnu libmatekbd-1.14.1 -C --disable-introspection
${THOME}/build/genpkg TRIBlibmatekbd libmatekbd-1.14.1
