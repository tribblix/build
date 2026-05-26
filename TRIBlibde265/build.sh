#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# disable the example utilities, which would pull in libSDL and Qt
#
env TRIBBLIX_CXXFLAGS=-DHAVE_ALLOCA_H=1 ${THOME}/build/cmbuild +64 libde265-1.0.19 -C "-DENABLE_DECODER=OFF"
${THOME}/build/genpkg TRIBlibde265 libde265-1.0.19
