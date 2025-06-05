#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -A -64only libtpms-0.10.0 -C "--disable-static --disable-dependency-tracking"
${THOME}/build/genpkg TRIBlibtpms libtpms-0.10.0
