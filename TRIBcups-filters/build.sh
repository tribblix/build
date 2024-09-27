#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/dobuild -64only cups-filters-2.0.1
${THOME}/build/genpkg TRIBcups-filters cups-filters-2.0.1
