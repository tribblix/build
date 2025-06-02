#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/dobuild -64only libppd-2.1.1
${THOME}/build/genpkg TRIBlibppd libppd-2.1.1
