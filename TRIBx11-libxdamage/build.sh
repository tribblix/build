#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXdamage-1.1.6
${THOME}/build/genpkg TRIBx11-libxdamage libXdamage-1.1.6
