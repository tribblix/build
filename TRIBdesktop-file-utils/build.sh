#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only desktop-file-utils-0.28
${THOME}/build/genpkg TRIBdesktop-file-utils desktop-file-utils-0.28
