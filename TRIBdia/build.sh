#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# latest versions are at https://download.gnome.org/sources/dia/
#
${THOME}/build/dobuild -gnu -64only dia-0.97.3
${THOME}/build/genpkg TRIBdia dia-0.97.3
