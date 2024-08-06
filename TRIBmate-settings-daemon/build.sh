#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# mate-settings-daemon (needs mate-desktop installed)
#
${THOME}/build/dobuild -64only -gnu mate-settings-daemon-1.28.0 -C --disable-rfkill
${THOME}/build/genpkg TRIBmate-settings-daemon mate-settings-daemon-1.28.0
