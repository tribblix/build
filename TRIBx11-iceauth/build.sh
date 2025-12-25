#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only iceauth-1.0.10
${THOME}/build/genpkg TRIBx11-iceauth iceauth-1.0.10
