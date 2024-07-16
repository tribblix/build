#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only grisbi-3.0.4 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBgrisbi grisbi-3.0.4
