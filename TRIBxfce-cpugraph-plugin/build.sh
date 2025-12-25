#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS=-lkstat ${THOME}/build/dobuild -64only -gnu xfce4-cpugraph-plugin-1.2.3
${THOME}/build/genpkg TRIBxfce-cpugraph-plugin xfce4-cpugraph-plugin-1.2.3
