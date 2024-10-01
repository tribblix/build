#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only libical-3.0.18 -C "-DSHARED_ONLY=yes -DICAL_BUILD_DOCS=false"
${THOME}/build/genpkg TRIBlibical libical-3.0.18
