#!/bin/sh
#
# see fixit - there are python pieces, although we don't declare a dependency
#
${THOME}/build/cmbuild -64 lensfun-0.3.3 -C -DBUILD_LENSTOOL=ON
${THOME}/build/genpkg TRIBlensfun lensfun-0.3.3
