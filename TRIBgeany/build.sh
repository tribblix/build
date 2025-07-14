#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu geany-2.1 -C --enable-gtk3 -M 'geany_LDFLAGS='
${THOME}/build/genpkg TRIBgeany geany-2.1
