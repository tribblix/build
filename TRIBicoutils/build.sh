#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only icoutils-0.32.3
${THOME}/build/genpkg TRIBicoutils icoutils-0.32.3
