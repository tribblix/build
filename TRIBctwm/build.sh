#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/cmbuild -64only ctwm-4.1.0
${THOME}/build/genpkg TRIBctwm ctwm-4.1.0
