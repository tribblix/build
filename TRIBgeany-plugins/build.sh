#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu geany-plugins-2.1 -C "--disable-scope --disable-utilslib"
${THOME}/build/genpkg TRIBgeany-plugins geany-plugins-2.1
