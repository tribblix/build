#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu gdmap-0.8.1 -C LIBS=-lm
${THOME}/build/genpkg TRIBgdmap gdmap-0.8.1
