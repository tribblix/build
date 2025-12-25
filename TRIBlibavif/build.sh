#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64 libavif-1.0.4
${THOME}/build/genpkg TRIBlibavif libavif-1.0.4
