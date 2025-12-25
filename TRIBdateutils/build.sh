#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only dateutils-0.4.11 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBdateutils dateutils-0.4.11
