#!/bin/sh
${THOME}/build/cmbuild -64 double-conversion-3.1.5 -C -DBUILD_SHARED_LIBS=ON
${THOME}/build/genpkg TRIBdouble-conversion double-conversion-3.1.5
