#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu xfce4-taskmanager-1.5.7
${THOME}/build/genpkg TRIBxfce-taskmanager xfce4-taskmanager-1.5.7
