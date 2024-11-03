#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libidn-1.42
${THOME}/build/genpkg TRIBlibidn libidn-1.42
