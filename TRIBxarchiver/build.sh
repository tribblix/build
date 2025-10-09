#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu -64only xarchiver-0.5.4.26
${THOME}/build/genpkg TRIBxarchiver xarchiver-0.5.4.26
