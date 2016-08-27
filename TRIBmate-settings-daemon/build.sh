#!/bin/sh
#
# mate-settings-daemon (needs libmatekbd, mate-desktop)
${THOME}/build/dobuild -gnu mate-settings-daemon-1.14.1
${THOME}/build/genpkg TRIBmate-settings-daemon mate-settings-daemon-1.14.1
