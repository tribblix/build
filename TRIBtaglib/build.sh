#!/bin/sh
#
${THOME}/build/cmbuild -64 taglib-1.13 -C "-DBUILD_SHARED_LIBS=on -DBUILD_STATIC_LIBS=no -DBUILD_TESTING=no"
${THOME}/build/genpkg TRIBtaglib taglib-1.13
