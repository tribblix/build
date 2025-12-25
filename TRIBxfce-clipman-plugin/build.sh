#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu xfce4-clipman-plugin-1.6.6
${THOME}/build/genpkg TRIBxfce-clipman-plugin xfce4-clipman-plugin-1.6.6
