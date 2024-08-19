#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libFS-1.0.10
${THOME}/build/genpkg TRIBx11-libfs libFS-1.0.10
