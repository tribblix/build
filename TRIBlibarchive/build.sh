#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libarchive-3.7.9
${THOME}/build/genpkg TRIBlibarchive libarchive-3.7.9
