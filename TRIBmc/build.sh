#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only mc-4.8.31
${THOME}/build/genpkg TRIBmc mc-4.8.31
