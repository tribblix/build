#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXv-1.0.13
${THOME}/build/genpkg TRIBx11-libxv libXv-1.0.13
