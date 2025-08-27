#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild +64 double-conversion-3.3.1 -C -DBUILD_SHARED_LIBS=ON
${THOME}/build/genpkg TRIBdouble-conversion double-conversion-3.3.1
