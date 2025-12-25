#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 1.3.2 needs a newer Xfce
#
env TRIBBLIX_LDFLAGS=-lkstat ${THOME}/build/dobuild -64only -gnu xfce4-systemload-plugin-1.3.1
${THOME}/build/genpkg TRIBxfce-systemload-plugin xfce4-systemload-plugin-1.3.1
