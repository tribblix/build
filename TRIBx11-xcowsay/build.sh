#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xcowsay-1.6
${THOME}/build/genpkg TRIBx11-xcowsay xcowsay-1.6
