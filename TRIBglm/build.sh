#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only glm-1.0.2 -C "-DGLM_BUILD_TESTS=OFF -DBUILD_SHARED_LIBS=ON"
${THOME}/build/genpkg TRIBglm glm-1.0.2
