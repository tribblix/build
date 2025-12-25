#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need postconf to get 64-bit to take properly
#
${THOME}/build/dobuild -64only xdiskusage-1.60
${THOME}/build/genpkg TRIBxdiskusage xdiskusage-1.60
