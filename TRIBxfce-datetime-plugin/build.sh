#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu xfce4-datetime-plugin-0.8.3
${THOME}/build/genpkg TRIBxfce-datetime-plugin xfce4-datetime-plugin-0.8.3
