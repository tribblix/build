#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# mkcookie built by the fixit script
#
${THOME}/build/dobuild -64only xauth-1.1.5
${THOME}/build/genpkg TRIBx11-session-xauth xauth-1.1.5
