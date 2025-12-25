#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild +64 -gnu gtkmm-3.24.9 -C "-Dbuild-tests=false -Dbuild-demos=false"
${THOME}/build/genpkg TRIBlib-desktop-gtkmm3 gtkmm-3.24.9
