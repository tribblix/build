#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +gnu -64only pluma-plugins-1.28.0 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBmate-pluma-plugins pluma-plugins-1.28.0
