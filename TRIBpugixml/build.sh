#!/bin/sh
#
# used by BRL-CAD
#
${THOME}/build/cmbuild -64 pugixml-1.10 -C -DBUILD_SHARED_LIBS=ON
${THOME}/build/genpkg TRIBpugixml pugixml-1.10
