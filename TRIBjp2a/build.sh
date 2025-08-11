#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/dobuild -A -64only https://github.com/cslarsen/jp2a
{THOME}/build/genpkg TRIBjp2a jp2a
