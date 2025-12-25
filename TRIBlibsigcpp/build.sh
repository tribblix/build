#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild +64 -gnu libsigc++-2.10.8
${THOME}/build/genpkg TRIBlibsigcpp libsigc++-2.10.8
