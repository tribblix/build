#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libarchive-3.8.5
${THOME}/build/genpkg TRIBlibarchive libarchive-3.8.5
