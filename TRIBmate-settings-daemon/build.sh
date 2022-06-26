#!/bin/sh
#
# mate-settings-daemon (needs mate-desktop installed)
${THOME}/build/dobuild -64 -gnu mate-settings-daemon-1.24.2 -C --disable-rfkill
${THOME}/build/genpkg TRIBmate-settings-daemon mate-settings-daemon-1.24.2
