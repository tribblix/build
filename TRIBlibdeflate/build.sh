#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only libdeflate-1.23
${THOME}/build/genpkg TRIBlibdeflate libdeflate-1.23
