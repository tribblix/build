#!/bin/sh
#
# mate-settings-daemon (needs mate-desktop installed)
${THOME}/build/dobuild -gnu mate-settings-daemon-1.22.1 -C --disable-rfkill
${THOME}/build/genpkg TRIBmate-settings-daemon mate-settings-daemon-1.22.1
