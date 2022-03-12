#!/bin/sh
#
# used by libjxl
#
${THOME}/build/cmbuild -64 gflags-2.2.2 -C -DBUILD_SHARED_LIBS=ON
${THOME}/build/genpkg TRIBgflags gflags-2.2.2
