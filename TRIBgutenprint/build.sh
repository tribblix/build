#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gutenprint-5.3.5
$THOME/build/genpkg TRIBgutenprint gutenprint-5.3.5
