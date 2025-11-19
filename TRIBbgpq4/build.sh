#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -A -64only bgpq4-1.15
${THOME}/build/genpkg TRIBbgpq4 bgpq4-1.15
