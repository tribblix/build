#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu leafpad-0.8.19
${THOME}/build/genpkg TRIBleafpad leafpad-0.8.19
