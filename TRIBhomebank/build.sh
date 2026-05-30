#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu -64only homebank-5.10.0
${THOME}/build/genpkg TRIBhomebank homebank-5.10.0
