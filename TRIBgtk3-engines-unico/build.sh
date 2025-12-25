#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 unico-1.0.2
${THOME}/build/genpkg TRIBgtk3-engines-unico unico-1.0.2
