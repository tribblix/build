#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 -gnu gtk-engines-2.20.2
${THOME}/build/genpkg TRIBgtk-engines gtk-engines-2.20.2
