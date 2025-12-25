#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXfixes-5.0.3
${THOME}/build/genpkg TRIBx11-libxfixes libXfixes-5.0.3
