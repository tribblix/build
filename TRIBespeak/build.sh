#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-fPIC ${THOME}/build/cmbuild -64only espeak-ng-1.52.0 -C -DBUILD_SHARED_LIBS=ON
${THOME}/build/genpkg TRIBespeak espeak-ng-1.52.0
