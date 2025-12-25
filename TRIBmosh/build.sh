#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/dobuild -64only mosh-1.4.0
$THOME/build/genpkg TRIBmosh mosh-1.4.0
