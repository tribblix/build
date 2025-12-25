#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 at-spi2-atk-2.24.1
${THOME}/build/genpkg TRIBlib-desktop-atk-bridge at-spi2-atk-2.24.1
