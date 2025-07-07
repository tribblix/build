#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# disable the example utilities, which would pull in libSDL and Qt
#
${THOME}/build/dobuild +64 libde265-1.0.16 -C "--disable-sherlock265 --disable-dec265"
${THOME}/build/genpkg TRIBlibde265 libde265-1.0.16
