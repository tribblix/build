#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu xfce4-terminal-1.0.4
${THOME}/build/genpkg TRIBxfce-terminal xfce4-terminal-1.0.4
