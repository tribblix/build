#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libksba-1.8.1
${THOME}/build/genpkg TRIBlibksba libksba-1.8.1
