#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xbacklight-1.2.4
${THOME}/build/genpkg TRIBx11-xbacklight xbacklight-1.2.4
