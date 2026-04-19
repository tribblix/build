#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only iceauth-1.0.11
${THOME}/build/genpkg TRIBx11-iceauth iceauth-1.0.11
