#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS=-lkstat ${THOME}/build/dobuild -64only -gnu xfce4-diskperf-plugin-2.6.3
${THOME}/build/genpkg TRIBxfce-diskperf-plugin xfce4-diskperf-plugin-2.6.3
