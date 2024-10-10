#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only spiritvnc-fltk-no-libssh2-0.6.4
${THOME}/build/genpkg TRIBspiritvnc spiritvnc-fltk-no-libssh2-0.6.4
