#!/bin/sh
#
# mate-settings-daemon-1.14.0 (needs libmatekbd, mate-desktop)
${THOME}/build/dobuild -gnu mate-settings-daemon-1.14.0
${THOME}/build/genpkg TRIBmate-settings-daemon mate-settings-daemon-1.14.0
