#!/bin/sh
#
# needed for evince, mate etc
#
${THOME}/build/dobuild -gnu gsettings-desktop-schemas-3.6.1
${THOME}/build/genpkg TRIBgsettings-desktop-schemas gsettings-desktop-schemas-3.6.1
