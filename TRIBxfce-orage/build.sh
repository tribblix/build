#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu orage-4.16.0
${THOME}/build/genpkg TRIBxfce-orage orage-4.16.0
