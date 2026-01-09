#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only fonttosfnt-1.2.5
${THOME}/build/genpkg TRIBx11-fonttosfnt fonttosfnt-1.2.5
