#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# download from
# https://people.freedesktop.org/~mccann/dist/sound-theme-freedesktop-0.8.tar.bz2
#
${THOME}/build/dobuild -gnu sound-theme-freedesktop-0.8
${THOME}/build/genpkg TRIBfreedesktop-sound-theme sound-theme-freedesktop-0.8
