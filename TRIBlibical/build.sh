#!/bin/sh
#
${THOME}/build/cmbuild -64only libical-3.0.17 -C "-DSHARED_ONLY=yes -DICAL_BUILD_DOCS=false"
${THOME}/build/genpkg TRIBlibical libical-3.0.17
