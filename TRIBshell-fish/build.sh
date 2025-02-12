#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/cmbuild -64only fish-3.7.1
$THOME/build/genpkg TRIBshell-fish fish-3.7.1
