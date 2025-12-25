#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only mikmod-3.2.8
${THOME}/build/genpkg TRIBmikmod mikmod-3.2.8
