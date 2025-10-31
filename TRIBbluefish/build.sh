#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu -64only bluefish-2.2.18 -C --disable-python
${THOME}/build/genpkg TRIBbluefish bluefish-2.2.18
