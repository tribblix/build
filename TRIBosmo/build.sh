#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only osmo-0.4.4
${THOME}/build/genpkg TRIBosmo osmo-0.4.4
